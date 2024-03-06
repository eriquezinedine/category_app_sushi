// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemOrderImpl _$$ItemOrderImplFromJson(Map<String, dynamic> json) =>
    _$ItemOrderImpl(
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
      price: json['price'] == null
          ? null
          : Price.fromJson(json['price'] as Map<String, dynamic>),
      count: json['count'] as int,
    );

Map<String, dynamic> _$$ItemOrderImplToJson(_$ItemOrderImpl instance) =>
    <String, dynamic>{
      'product': instance.product,
      'price': instance.price,
      'count': instance.count,
    };
