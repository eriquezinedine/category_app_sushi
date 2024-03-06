import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:take_sushi/core/core.dart';

part 'detail_cubit.freezed.dart';
part 'detail_state.dart';

class DetailCubit extends Cubit<DetailState> {
  DetailCubit({
    required Product product,
    required IMenu iMenu,
    required ILocalRepository iLocalRepository,
  })  : _menuRepository = iMenu,
        _iLocalRepository = iLocalRepository,
        super(
          DetailState(
            product: product,
            price: product.price == 0 ? product.prices[0].price : product.price,
            selectedPrice: product.price == 0 ? product.prices[0] : null,
          ),
        );

  final IMenu _menuRepository;
  final ILocalRepository _iLocalRepository;

  void initial(Product product) {
    final map = _iLocalRepository.getFavoriteProducts ?? {};
    emit(
      state.copyWith(
        isFavorite: map.containsKey(product.id.toString()),
      ),
    );
  }

  void counter(int value) {
    final count = state.count + (value);
    emit(state.copyWith(
      count: count < 1 ? 1 : count,
    ));
  }

  void selectedPrice(int index) {
    emit(
      state.copyWith(
        price: state.product.prices[index].price,
        selectedPrice: state.product.prices[index],
      ),
    );
  }

  Future<void> addFavorite() async {
    emit(state.copyWith(favoriteStatus: FavoriteStatus.loading));
    try {
      final user = await _iLocalRepository.getUser();
      if (user == null) return;
      final response = await _menuRepository.addFavorite(
        idProduct: state.product.id,
        userEmail: user.email,
      );
      if (response) {
        _iLocalRepository.setFavoriteProduct(product: state.product);
      }
      emit(
        state.copyWith(
            isFavorite: response, favoriteStatus: FavoriteStatus.loaded),
      );
    } catch (e) {
      emit(state.copyWith(favoriteStatus: FavoriteStatus.error));
    }
  }

  Future<void> removeFavorite() async {
    emit(state.copyWith(favoriteStatus: FavoriteStatus.loading));
    try {
      final user = await _iLocalRepository.getUser();
      if (user == null) return;
      final response = await _menuRepository.removeFavorite(
        idProduct: state.product.id,
        userEmail: user.email,
      );
      if (response) {
        _iLocalRepository.deleteFavoriteProduct(product: state.product);
      }
      emit(
        state.copyWith(
            isFavorite: !response, favoriteStatus: FavoriteStatus.loaded),
      );
    } catch (e) {
      emit(state.copyWith(favoriteStatus: FavoriteStatus.error));
    }
  }
}
