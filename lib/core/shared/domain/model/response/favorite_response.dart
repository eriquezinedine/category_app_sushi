import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_response.freezed.dart';
part 'favorite_response.g.dart';

@freezed
class FavoriteResponse with _$FavoriteResponse {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  factory FavoriteResponse({
    required String emailKey,

    ///FORZAR ERROR PARA MANEJAR MENSAJE DE ABRIRR DE NUEVO --- SOLO CAMBIA EL KEY ---PAGE LOADINGPAGE
    required int idProduct,
  }) = _FavoriteResponse;

  factory FavoriteResponse.fromJson(Map<String, dynamic> json) =>
      _$FavoriteResponseFromJson(json);
}
