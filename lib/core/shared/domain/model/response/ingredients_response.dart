import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:take_sushi/core/core.dart';

part 'ingredients_response.freezed.dart';
part 'ingredients_response.g.dart';

@freezed
class IngredientsResponse with _$IngredientsResponse {
  factory IngredientsResponse({
    @Default([]) List<Ingredient> ingredients,
  }) = _IngredientsResponse;

  factory IngredientsResponse.fromJson(Map<String, dynamic> json) =>
      _$IngredientsResponseFromJson(json);
}
