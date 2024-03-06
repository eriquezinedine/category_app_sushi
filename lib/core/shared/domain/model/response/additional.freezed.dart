// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'additional.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Additional _$AdditionalFromJson(Map<String, dynamic> json) {
  return _Additional.fromJson(json);
}

/// @nodoc
mixin _$Additional {
  int get id => throw _privateConstructorUsedError;
  String? get img => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdditionalCopyWith<Additional> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionalCopyWith<$Res> {
  factory $AdditionalCopyWith(
          Additional value, $Res Function(Additional) then) =
      _$AdditionalCopyWithImpl<$Res, Additional>;
  @useResult
  $Res call({int id, String? img, double? price, String? description});
}

/// @nodoc
class _$AdditionalCopyWithImpl<$Res, $Val extends Additional>
    implements $AdditionalCopyWith<$Res> {
  _$AdditionalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? img = freezed,
    Object? price = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdditionalImplCopyWith<$Res>
    implements $AdditionalCopyWith<$Res> {
  factory _$$AdditionalImplCopyWith(
          _$AdditionalImpl value, $Res Function(_$AdditionalImpl) then) =
      __$$AdditionalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? img, double? price, String? description});
}

/// @nodoc
class __$$AdditionalImplCopyWithImpl<$Res>
    extends _$AdditionalCopyWithImpl<$Res, _$AdditionalImpl>
    implements _$$AdditionalImplCopyWith<$Res> {
  __$$AdditionalImplCopyWithImpl(
      _$AdditionalImpl _value, $Res Function(_$AdditionalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? img = freezed,
    Object? price = freezed,
    Object? description = freezed,
  }) {
    return _then(_$AdditionalImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdditionalImpl implements _Additional {
  _$AdditionalImpl({required this.id, this.img, this.price, this.description});

  factory _$AdditionalImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdditionalImplFromJson(json);

  @override
  final int id;
  @override
  final String? img;
  @override
  final double? price;
  @override
  final String? description;

  @override
  String toString() {
    return 'Additional(id: $id, img: $img, price: $price, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdditionalImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, img, price, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdditionalImplCopyWith<_$AdditionalImpl> get copyWith =>
      __$$AdditionalImplCopyWithImpl<_$AdditionalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdditionalImplToJson(
      this,
    );
  }
}

abstract class _Additional implements Additional {
  factory _Additional(
      {required final int id,
      final String? img,
      final double? price,
      final String? description}) = _$AdditionalImpl;

  factory _Additional.fromJson(Map<String, dynamic> json) =
      _$AdditionalImpl.fromJson;

  @override
  int get id;
  @override
  String? get img;
  @override
  double? get price;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$AdditionalImplCopyWith<_$AdditionalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
