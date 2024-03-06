import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:take_sushi/core/core.dart';

part 'order_request.freezed.dart';
part 'order_request.g.dart';

@freezed
class OrderRequest with _$OrderRequest {
  factory OrderRequest({
    @Default([]) List<ItemOrder> orders,
    required DateTime date,
  }) = _OrderRequest;

  factory OrderRequest.fromJson(Map<String, dynamic> json) =>
      _$OrderRequestFromJson(json);
}
