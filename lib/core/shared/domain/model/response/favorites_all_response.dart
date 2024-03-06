import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:take_sushi/core/core.dart';

part 'favorites_all_response.freezed.dart';
part 'favorites_all_response.g.dart';

@freezed
class FavoritesAllResponse with _$FavoritesAllResponse {
  factory FavoritesAllResponse({
    @Default([]) List<FavoriteResponse> favorites,
  }) = _FavoritesAllResponse;

  factory FavoritesAllResponse.fromJson(Map<String, dynamic> json) =>
      _$FavoritesAllResponseFromJson(json);
}
