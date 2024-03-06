import 'package:freezed_annotation/freezed_annotation.dart';

part 'additional.freezed.dart';
part 'additional.g.dart';

@freezed
class Additional with _$Additional {
  factory Additional({
    required int id,
    String? img,
    double? price,
    String? description,
  }) = _Additional;

  factory Additional.fromJson(Map<String, dynamic> json) =>
      _$AdditionalFromJson(json);
}
