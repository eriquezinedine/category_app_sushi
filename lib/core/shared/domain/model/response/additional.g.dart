// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'additional.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdditionalImpl _$$AdditionalImplFromJson(Map<String, dynamic> json) =>
    _$AdditionalImpl(
      id: json['id'] as int,
      img: json['img'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$AdditionalImplToJson(_$AdditionalImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'img': instance.img,
      'price': instance.price,
      'description': instance.description,
    };
