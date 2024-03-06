part of 'menu_bloc.dart';

@freezed
class MenuEvent with _$MenuEvent {
  const factory MenuEvent.initial(String emailUser) = _Initial;
  const factory MenuEvent.fetchCache() = _FetchCache;
  const factory MenuEvent.transform({
    required ProductResponse productResponse,
    required FavoritesAllResponse favoritesResponse,
    required FavoritesAllResponse usedResponse,
  }) = _Transform;

  const factory MenuEvent.usedProduct() = _UsedProduct;
  const factory MenuEvent.getAllUsedProduct() = _GetUsedProduct;
}
