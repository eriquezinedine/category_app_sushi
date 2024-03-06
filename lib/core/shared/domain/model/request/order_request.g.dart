// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderRequestImpl _$$OrderRequestImplFromJson(Map<String, dynamic> json) =>
    _$OrderRequestImpl(
      orders: (json['orders'] as List<dynamic>?)
              ?.map((e) => ItemOrder.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$OrderRequestImplToJson(_$OrderRequestImpl instance) =>
    <String, dynamic>{
      'orders': instance.orders,
      'date': instance.date.toIso8601String(),
    };
