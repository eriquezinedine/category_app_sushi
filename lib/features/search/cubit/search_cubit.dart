import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:take_sushi/core/core.dart';

part 'search_cubit.freezed.dart';
part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit({required ILocalRepository iLocalRepository})
      : _iLocalRepository = iLocalRepository,
        _pageController = PageController(),
        super(const SearchState());

  final ILocalRepository _iLocalRepository;
  final PageController _pageController;

  PageController get pageController => _pageController;

  void init() {
    final response = _iLocalRepository.getIngredients;
    if (response == null) return;
    emit(state.copyWith(
      ingredient: response.ingredients,
    ));
  }

  void selectedIngredient(Ingredient ingredient) {
    List<Ingredient> ingredients = [...state.selectedIngredients];

    if (state.selectedIngredients.contains(ingredient)) {
      ingredients.remove(ingredient);
    } else {
      ingredients.add(ingredient);
    }
    emit(
      state.copyWith(
        selectedIngredients: ingredients,
      ),
    );
  }

  void selectedCategories(Category category) {
    emit(
      state.copyWith(
        selectedCategory: category == state.selectedCategory ? null : category,
      ),
    );
  }

  void searchProduct(List<Product> products, Map<String, List<Product>> menu) {
    emit(
      state.copyWith(
        productSearch: [],
      ),
    );

    List<Product> prd = state.selectedCategory != null
        ? menu[state.selectedCategory!.id.toString()] ?? []
        : products;
    final filters = state.selectedIngredients.toList();
    Set<Product> dataFilter = <Product>{};

    for (Ingredient ingredient in filters) {
      final List<Product> result = prd.where((product) {
        final isZone = product.ingredients.contains(ingredient);
        return isZone;
      }).toList();
      dataFilter.addAll(result);
    }

    emit(
      state.copyWith(
        isResult: true,
        productSearch: dataFilter.toList(),
      ),
    );
    pageController.animateToPage(
      1,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
