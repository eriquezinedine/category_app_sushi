// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_all_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavoritesAllResponseImpl _$$FavoritesAllResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FavoritesAllResponseImpl(
      favorites: (json['favorites'] as List<dynamic>?)
              ?.map((e) => FavoriteResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$FavoritesAllResponseImplToJson(
        _$FavoritesAllResponseImpl instance) =>
    <String, dynamic>{
      'favorites': instance.favorites,
    };
