part of 'detail_cubit.dart';

enum FavoriteStatus {
  initial,
  loading,
  loaded,
  error,
}

@freezed
class DetailState with _$DetailState {
  const factory DetailState({
    @Default(1) int count,
    required Product product,
    required double price,
    Price? selectedPrice,
    @Default(false) bool isFavorite,
    @Default(FavoriteStatus.initial) FavoriteStatus favoriteStatus,
  }) = _DetailState;
}
