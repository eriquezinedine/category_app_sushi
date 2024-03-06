// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavoriteResponse _$FavoriteResponseFromJson(Map<String, dynamic> json) {
  return _FavoriteResponse.fromJson(json);
}

/// @nodoc
mixin _$FavoriteResponse {
  String get emailKey => throw _privateConstructorUsedError;

  ///FORZAR ERROR PARA MANEJAR MENSAJE DE ABRIRR DE NUEVO --- SOLO CAMBIA EL KEY ---PAGE LOADINGPAGE
  int get idProduct => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteResponseCopyWith<FavoriteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteResponseCopyWith<$Res> {
  factory $FavoriteResponseCopyWith(
          FavoriteResponse value, $Res Function(FavoriteResponse) then) =
      _$FavoriteResponseCopyWithImpl<$Res, FavoriteResponse>;
  @useResult
  $Res call({String emailKey, int idProduct});
}

/// @nodoc
class _$FavoriteResponseCopyWithImpl<$Res, $Val extends FavoriteResponse>
    implements $FavoriteResponseCopyWith<$Res> {
  _$FavoriteResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailKey = null,
    Object? idProduct = null,
  }) {
    return _then(_value.copyWith(
      emailKey: null == emailKey
          ? _value.emailKey
          : emailKey // ignore: cast_nullable_to_non_nullable
              as String,
      idProduct: null == idProduct
          ? _value.idProduct
          : idProduct // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteResponseImplCopyWith<$Res>
    implements $FavoriteResponseCopyWith<$Res> {
  factory _$$FavoriteResponseImplCopyWith(_$FavoriteResponseImpl value,
          $Res Function(_$FavoriteResponseImpl) then) =
      __$$FavoriteResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String emailKey, int idProduct});
}

/// @nodoc
class __$$FavoriteResponseImplCopyWithImpl<$Res>
    extends _$FavoriteResponseCopyWithImpl<$Res, _$FavoriteResponseImpl>
    implements _$$FavoriteResponseImplCopyWith<$Res> {
  __$$FavoriteResponseImplCopyWithImpl(_$FavoriteResponseImpl _value,
      $Res Function(_$FavoriteResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailKey = null,
    Object? idProduct = null,
  }) {
    return _then(_$FavoriteResponseImpl(
      emailKey: null == emailKey
          ? _value.emailKey
          : emailKey // ignore: cast_nullable_to_non_nullable
              as String,
      idProduct: null == idProduct
          ? _value.idProduct
          : idProduct // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$FavoriteResponseImpl implements _FavoriteResponse {
  _$FavoriteResponseImpl({required this.emailKey, required this.idProduct});

  factory _$FavoriteResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoriteResponseImplFromJson(json);

  @override
  final String emailKey;

  ///FORZAR ERROR PARA MANEJAR MENSAJE DE ABRIRR DE NUEVO --- SOLO CAMBIA EL KEY ---PAGE LOADINGPAGE
  @override
  final int idProduct;

  @override
  String toString() {
    return 'FavoriteResponse(emailKey: $emailKey, idProduct: $idProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteResponseImpl &&
            (identical(other.emailKey, emailKey) ||
                other.emailKey == emailKey) &&
            (identical(other.idProduct, idProduct) ||
                other.idProduct == idProduct));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, emailKey, idProduct);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteResponseImplCopyWith<_$FavoriteResponseImpl> get copyWith =>
      __$$FavoriteResponseImplCopyWithImpl<_$FavoriteResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoriteResponseImplToJson(
      this,
    );
  }
}

abstract class _FavoriteResponse implements FavoriteResponse {
  factory _FavoriteResponse(
      {required final String emailKey,
      required final int idProduct}) = _$FavoriteResponseImpl;

  factory _FavoriteResponse.fromJson(Map<String, dynamic> json) =
      _$FavoriteResponseImpl.fromJson;

  @override
  String get emailKey;
  @override

  ///FORZAR ERROR PARA MANEJAR MENSAJE DE ABRIRR DE NUEVO --- SOLO CAMBIA EL KEY ---PAGE LOADINGPAGE
  int get idProduct;
  @override
  @JsonKey(ignore: true)
  _$$FavoriteResponseImplCopyWith<_$FavoriteResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
