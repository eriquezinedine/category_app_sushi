// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredients_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IngredientsResponseImpl _$$IngredientsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$IngredientsResponseImpl(
      ingredients: (json['ingredients'] as List<dynamic>?)
              ?.map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$IngredientsResponseImplToJson(
        _$IngredientsResponseImpl instance) =>
    <String, dynamic>{
      'ingredients': instance.ingredients,
    };
