import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:take_sushi/core/core.dart';

part 'order_response.freezed.dart';
part 'order_response.g.dart';

@freezed
class OrderResponse with _$OrderResponse {
  factory OrderResponse({
    @Default([]) List<OrderRequest> orders,
  }) = _OrderResponse;

  factory OrderResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderResponseFromJson(json);
}
