import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:take_sushi/core/core.dart';

part 'product_response.freezed.dart';
part 'product_response.g.dart';

@freezed
class ProductResponse with _$ProductResponse {
  factory ProductResponse({@Default([]) List<Product> products}) =
      _ProductResponse;

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
}
