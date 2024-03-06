part of 'shopping_cubit.dart';

enum ShoppingStatus {
  initial,
  loading,
  loaded,
  error,
}

@freezed
class ShoppingState with _$ShoppingState {
  const factory ShoppingState({
    @Default([]) List<ItemOrder> orders,
    @Default(0) double total,
    @Default(ShoppingStatus.initial) ShoppingStatus status,
  }) = _ShoppingState;
}
