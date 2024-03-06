part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default([]) List<Ingredient> ingredient,
    @Default([]) List<Ingredient> selectedIngredients,
    Category? selectedCategory,
    @Default([]) List<Product> productSearch,
    @Default(false) bool isResult,
  }) = _Initial;
}
