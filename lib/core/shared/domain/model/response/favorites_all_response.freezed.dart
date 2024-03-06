// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_all_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavoritesAllResponse _$FavoritesAllResponseFromJson(Map<String, dynamic> json) {
  return _FavoritesAllResponse.fromJson(json);
}

/// @nodoc
mixin _$FavoritesAllResponse {
  List<FavoriteResponse> get favorites => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoritesAllResponseCopyWith<FavoritesAllResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesAllResponseCopyWith<$Res> {
  factory $FavoritesAllResponseCopyWith(FavoritesAllResponse value,
          $Res Function(FavoritesAllResponse) then) =
      _$FavoritesAllResponseCopyWithImpl<$Res, FavoritesAllResponse>;
  @useResult
  $Res call({List<FavoriteResponse> favorites});
}

/// @nodoc
class _$FavoritesAllResponseCopyWithImpl<$Res,
        $Val extends FavoritesAllResponse>
    implements $FavoritesAllResponseCopyWith<$Res> {
  _$FavoritesAllResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorites = null,
  }) {
    return _then(_value.copyWith(
      favorites: null == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<FavoriteResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoritesAllResponseImplCopyWith<$Res>
    implements $FavoritesAllResponseCopyWith<$Res> {
  factory _$$FavoritesAllResponseImplCopyWith(_$FavoritesAllResponseImpl value,
          $Res Function(_$FavoritesAllResponseImpl) then) =
      __$$FavoritesAllResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FavoriteResponse> favorites});
}

/// @nodoc
class __$$FavoritesAllResponseImplCopyWithImpl<$Res>
    extends _$FavoritesAllResponseCopyWithImpl<$Res, _$FavoritesAllResponseImpl>
    implements _$$FavoritesAllResponseImplCopyWith<$Res> {
  __$$FavoritesAllResponseImplCopyWithImpl(_$FavoritesAllResponseImpl _value,
      $Res Function(_$FavoritesAllResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorites = null,
  }) {
    return _then(_$FavoritesAllResponseImpl(
      favorites: null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<FavoriteResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavoritesAllResponseImpl implements _FavoritesAllResponse {
  _$FavoritesAllResponseImpl(
      {final List<FavoriteResponse> favorites = const []})
      : _favorites = favorites;

  factory _$FavoritesAllResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoritesAllResponseImplFromJson(json);

  final List<FavoriteResponse> _favorites;
  @override
  @JsonKey()
  List<FavoriteResponse> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  @override
  String toString() {
    return 'FavoritesAllResponse(favorites: $favorites)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesAllResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_favorites));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesAllResponseImplCopyWith<_$FavoritesAllResponseImpl>
      get copyWith =>
          __$$FavoritesAllResponseImplCopyWithImpl<_$FavoritesAllResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoritesAllResponseImplToJson(
      this,
    );
  }
}

abstract class _FavoritesAllResponse implements FavoritesAllResponse {
  factory _FavoritesAllResponse({final List<FavoriteResponse> favorites}) =
      _$FavoritesAllResponseImpl;

  factory _FavoritesAllResponse.fromJson(Map<String, dynamic> json) =
      _$FavoritesAllResponseImpl.fromJson;

  @override
  List<FavoriteResponse> get favorites;
  @override
  @JsonKey(ignore: true)
  _$$FavoritesAllResponseImplCopyWith<_$FavoritesAllResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
