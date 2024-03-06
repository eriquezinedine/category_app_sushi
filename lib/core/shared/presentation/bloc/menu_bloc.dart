import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:take_sushi/core/core.dart';

part 'menu_bloc.freezed.dart';
part 'menu_event.dart';
part 'menu_state.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  MenuBloc({
    required IMenu menuRepository,
    required ILocalRepository iLocalRepository,
  })  : _menuRepository = menuRepository,
        _iLocalRepository = iLocalRepository,
        super(const MenuState()) {
    on<_Initial>(_onInitial);
    on<_Transform>(_onTransform);
    on<_FetchCache>(_onFetchCache);
    on<_UsedProduct>(_onUsedProduct);
    on<_GetUsedProduct>(_onGetUsedProduct);
  }

  final IMenu _menuRepository;
  final ILocalRepository _iLocalRepository;

  Future<void> _onInitial(
    _Initial event,
    Emitter<MenuState> emit,
  ) async {
    emit(state.copyWith(status: ProductStatus.loading));
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      add(const MenuEvent.fetchCache());
      return;
    }

    try {
      /// FAVORITOS
      final favoritesResponse =
          await _menuRepository.getAllFavorite(event.emailUser);

      /// PRODUCTOS CONSUMIDOS O USADOS
      final usedResponse =
          await _menuRepository.getAllUsedProduct(event.emailUser);
      final response = await _menuRepository.getProduct();
      _iLocalRepository.setProduct(response: response);
      final ingredientsResponse = await _menuRepository.getIngredientAll();
      _iLocalRepository.setIngredient(ingredientsResponse);

      _iLocalRepository.setFavoriteResponse(response: favoritesResponse);
      _iLocalRepository.setUsedResponse(response: usedResponse);

      add(
        MenuEvent.transform(
          productResponse: response,
          favoritesResponse: favoritesResponse,
          usedResponse: usedResponse,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: ProductStatus.error));
    }
  }

  Future<void> _onFetchCache(
    _FetchCache event,
    Emitter<MenuState> emit,
  ) async {
    final productResponse = _iLocalRepository.getProductResponse;
    final favoritesResponse = _iLocalRepository.getFavoriteResponse;
    final usedResponse = _iLocalRepository.getUsedResponse;

    if (productResponse == null ||
        favoritesResponse == null ||
        usedResponse == null) {
      emit(state.copyWith(status: ProductStatus.error));
      return;
    }
    add(
      MenuEvent.transform(
        productResponse: productResponse,
        favoritesResponse: favoritesResponse,
        usedResponse: usedResponse,
      ),
    );
  }

  Future<void> _onTransform(
    _Transform event,
    Emitter<MenuState> emit,
  ) async {
    final user = await _iLocalRepository.getUser();

    final used = event.usedResponse.favorites;
    final favorites = event.favoritesResponse.favorites;

    Map<String, List<Product>> data = {};
    List<Category> categorys = [];

    for (Product product in event.productResponse.products) {
      ///FAVORITOS
      final isFavoriteProduct = favorites.contains(
          FavoriteResponse(emailKey: user?.email ?? '', idProduct: product.id));
      if (isFavoriteProduct) {
        _iLocalRepository.setFavoriteProduct(product: product);
      }

      /// PRODUCTOS USADOS
      final isUsedProduct = used.contains(
          FavoriteResponse(emailKey: user?.email ?? '', idProduct: product.id));
      if (isUsedProduct) {
        _iLocalRepository.setProductUsed(product: product);
      }

      bool isCategory = data.containsKey(product.category.id.toString());
      if (isCategory) {
        final products = data[product.category.id.toString()] as List<Product>;
        data[product.category.id.toString()] = [...products, product];
      } else {
        data[product.category.id.toString()] = [product];
        categorys.add(product.category);
      }
    }
    add(const MenuEvent.getAllUsedProduct());
    await Future.delayed(const Duration(milliseconds: 1500));
    emit(
      state.copyWith(
        categorys: categorys,
        menu: data,
        products: event.productResponse.products,
        status: ProductStatus.loaded,
      ),
    );
  }

  Future<void> _onUsedProduct(
    _UsedProduct event,
    Emitter<MenuState> emit,
  ) async {
    final stream = _iLocalRepository.streamProductUsed;

    await emit.forEach<BoxEvent?>(
      stream,
      onData: (BoxEvent? boxEvent) {
        if (boxEvent == null) return state;
        final data = boxEvent.value as String;
        return state.copyWith(usedProduct: jsonDecode(data));
      },
    );
  }

  Future<void> _onGetUsedProduct(
    _GetUsedProduct event,
    Emitter<MenuState> emit,
  ) async {
    final data = _iLocalRepository.getProductsUsed;
    if (data == null) return;
    emit(
      state.copyWith(
        usedProduct: data,
      ),
    );
  }
}
