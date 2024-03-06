part of 'menu_bloc.dart';

enum ProductStatus {
  initial,
  loading,
  loaded,
  error,
}

@freezed
class MenuState with _$MenuState {
  const factory MenuState({
    @Default([]) List<Category> categorys,
    @Default([]) List<Product> products,
    @Default({}) Map<String, List<Product>> menu,
    @Default(ProductStatus.initial) ProductStatus status,
    @Default({}) Map<String, dynamic> usedProduct,
  }) = _MenuState;
}
