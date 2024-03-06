import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:take_sushi/core/core.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    required int id,
    required String name,
    required double price,
    String? image,
    required bool status,
    @Default('') String description,
    required Category category,
    @Default([]) List<Ingredient> ingredients,
    @Default([]) List<Price> prices,
    @Default([]) List<Additional> additionals,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
