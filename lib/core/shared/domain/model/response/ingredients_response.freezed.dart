// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredients_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IngredientsResponse _$IngredientsResponseFromJson(Map<String, dynamic> json) {
  return _IngredientsResponse.fromJson(json);
}

/// @nodoc
mixin _$IngredientsResponse {
  List<Ingredient> get ingredients => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientsResponseCopyWith<IngredientsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientsResponseCopyWith<$Res> {
  factory $IngredientsResponseCopyWith(
          IngredientsResponse value, $Res Function(IngredientsResponse) then) =
      _$IngredientsResponseCopyWithImpl<$Res, IngredientsResponse>;
  @useResult
  $Res call({List<Ingredient> ingredients});
}

/// @nodoc
class _$IngredientsResponseCopyWithImpl<$Res, $Val extends IngredientsResponse>
    implements $IngredientsResponseCopyWith<$Res> {
  _$IngredientsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredients = null,
  }) {
    return _then(_value.copyWith(
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IngredientsResponseImplCopyWith<$Res>
    implements $IngredientsResponseCopyWith<$Res> {
  factory _$$IngredientsResponseImplCopyWith(_$IngredientsResponseImpl value,
          $Res Function(_$IngredientsResponseImpl) then) =
      __$$IngredientsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Ingredient> ingredients});
}

/// @nodoc
class __$$IngredientsResponseImplCopyWithImpl<$Res>
    extends _$IngredientsResponseCopyWithImpl<$Res, _$IngredientsResponseImpl>
    implements _$$IngredientsResponseImplCopyWith<$Res> {
  __$$IngredientsResponseImplCopyWithImpl(_$IngredientsResponseImpl _value,
      $Res Function(_$IngredientsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredients = null,
  }) {
    return _then(_$IngredientsResponseImpl(
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IngredientsResponseImpl implements _IngredientsResponse {
  _$IngredientsResponseImpl({final List<Ingredient> ingredients = const []})
      : _ingredients = ingredients;

  factory _$IngredientsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$IngredientsResponseImplFromJson(json);

  final List<Ingredient> _ingredients;
  @override
  @JsonKey()
  List<Ingredient> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  String toString() {
    return 'IngredientsResponse(ingredients: $ingredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientsResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_ingredients));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientsResponseImplCopyWith<_$IngredientsResponseImpl> get copyWith =>
      __$$IngredientsResponseImplCopyWithImpl<_$IngredientsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IngredientsResponseImplToJson(
      this,
    );
  }
}

abstract class _IngredientsResponse implements IngredientsResponse {
  factory _IngredientsResponse({final List<Ingredient> ingredients}) =
      _$IngredientsResponseImpl;

  factory _IngredientsResponse.fromJson(Map<String, dynamic> json) =
      _$IngredientsResponseImpl.fromJson;

  @override
  List<Ingredient> get ingredients;
  @override
  @JsonKey(ignore: true)
  _$$IngredientsResponseImplCopyWith<_$IngredientsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
