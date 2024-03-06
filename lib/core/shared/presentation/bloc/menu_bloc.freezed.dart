// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MenuEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailUser) initial,
    required TResult Function() fetchCache,
    required TResult Function(
            ProductResponse productResponse,
            FavoritesAllResponse favoritesResponse,
            FavoritesAllResponse usedResponse)
        transform,
    required TResult Function() usedProduct,
    required TResult Function() getAllUsedProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailUser)? initial,
    TResult? Function()? fetchCache,
    TResult? Function(
            ProductResponse productResponse,
            FavoritesAllResponse favoritesResponse,
            FavoritesAllResponse usedResponse)?
        transform,
    TResult? Function()? usedProduct,
    TResult? Function()? getAllUsedProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailUser)? initial,
    TResult Function()? fetchCache,
    TResult Function(
            ProductResponse productResponse,
            FavoritesAllResponse favoritesResponse,
            FavoritesAllResponse usedResponse)?
        transform,
    TResult Function()? usedProduct,
    TResult Function()? getAllUsedProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCache value) fetchCache,
    required TResult Function(_Transform value) transform,
    required TResult Function(_UsedProduct value) usedProduct,
    required TResult Function(_GetUsedProduct value) getAllUsedProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCache value)? fetchCache,
    TResult? Function(_Transform value)? transform,
    TResult? Function(_UsedProduct value)? usedProduct,
    TResult? Function(_GetUsedProduct value)? getAllUsedProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCache value)? fetchCache,
    TResult Function(_Transform value)? transform,
    TResult Function(_UsedProduct value)? usedProduct,
    TResult Function(_GetUsedProduct value)? getAllUsedProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuEventCopyWith<$Res> {
  factory $MenuEventCopyWith(MenuEvent value, $Res Function(MenuEvent) then) =
      _$MenuEventCopyWithImpl<$Res, MenuEvent>;
}

/// @nodoc
class _$MenuEventCopyWithImpl<$Res, $Val extends MenuEvent>
    implements $MenuEventCopyWith<$Res> {
  _$MenuEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailUser});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$MenuEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailUser = null,
  }) {
    return _then(_$InitialImpl(
      null == emailUser
          ? _value.emailUser
          : emailUser // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(this.emailUser);

  @override
  final String emailUser;

  @override
  String toString() {
    return 'MenuEvent.initial(emailUser: $emailUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.emailUser, emailUser) ||
                other.emailUser == emailUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailUser) initial,
    required TResult Function() fetchCache,
    required TResult Function(
            ProductResponse productResponse,
            FavoritesAllResponse favoritesResponse,
            FavoritesAllResponse usedResponse)
        transform,
    required TResult Function() usedProduct,
    required TResult Function() getAllUsedProduct,
  }) {
    return initial(emailUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailUser)? initial,
    TResult? Function()? fetchCache,
    TResult? Function(
            ProductResponse productResponse,
            FavoritesAllResponse favoritesResponse,
            FavoritesAllResponse usedResponse)?
        transform,
    TResult? Function()? usedProduct,
    TResult? Function()? getAllUsedProduct,
  }) {
    return initial?.call(emailUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailUser)? initial,
    TResult Function()? fetchCache,
    TResult Function(
            ProductResponse productResponse,
            FavoritesAllResponse favoritesResponse,
            FavoritesAllResponse usedResponse)?
        transform,
    TResult Function()? usedProduct,
    TResult Function()? getAllUsedProduct,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(emailUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCache value) fetchCache,
    required TResult Function(_Transform value) transform,
    required TResult Function(_UsedProduct value) usedProduct,
    required TResult Function(_GetUsedProduct value) getAllUsedProduct,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCache value)? fetchCache,
    TResult? Function(_Transform value)? transform,
    TResult? Function(_UsedProduct value)? usedProduct,
    TResult? Function(_GetUsedProduct value)? getAllUsedProduct,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCache value)? fetchCache,
    TResult Function(_Transform value)? transform,
    TResult Function(_UsedProduct value)? usedProduct,
    TResult Function(_GetUsedProduct value)? getAllUsedProduct,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MenuEvent {
  const factory _Initial(final String emailUser) = _$InitialImpl;

  String get emailUser;
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCacheImplCopyWith<$Res> {
  factory _$$FetchCacheImplCopyWith(
          _$FetchCacheImpl value, $Res Function(_$FetchCacheImpl) then) =
      __$$FetchCacheImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCacheImplCopyWithImpl<$Res>
    extends _$MenuEventCopyWithImpl<$Res, _$FetchCacheImpl>
    implements _$$FetchCacheImplCopyWith<$Res> {
  __$$FetchCacheImplCopyWithImpl(
      _$FetchCacheImpl _value, $Res Function(_$FetchCacheImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchCacheImpl implements _FetchCache {
  const _$FetchCacheImpl();

  @override
  String toString() {
    return 'MenuEvent.fetchCache()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchCacheImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailUser) initial,
    required TResult Function() fetchCache,
    required TResult Function(
            ProductResponse productResponse,
            FavoritesAllResponse favoritesResponse,
            FavoritesAllResponse usedResponse)
        transform,
    required TResult Function() usedProduct,
    required TResult Function() getAllUsedProduct,
  }) {
    return fetchCache();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailUser)? initial,
    TResult? Function()? fetchCache,
    TResult? Function(
            ProductResponse productResponse,
            FavoritesAllResponse favoritesResponse,
            FavoritesAllResponse usedResponse)?
        transform,
    TResult? Function()? usedProduct,
    TResult? Function()? getAllUsedProduct,
  }) {
    return fetchCache?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailUser)? initial,
    TResult Function()? fetchCache,
    TResult Function(
            ProductResponse productResponse,
            FavoritesAllResponse favoritesResponse,
            FavoritesAllResponse usedResponse)?
        transform,
    TResult Function()? usedProduct,
    TResult Function()? getAllUsedProduct,
    required TResult orElse(),
  }) {
    if (fetchCache != null) {
      return fetchCache();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCache value) fetchCache,
    required TResult Function(_Transform value) transform,
    required TResult Function(_UsedProduct value) usedProduct,
    required TResult Function(_GetUsedProduct value) getAllUsedProduct,
  }) {
    return fetchCache(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCache value)? fetchCache,
    TResult? Function(_Transform value)? transform,
    TResult? Function(_UsedProduct value)? usedProduct,
    TResult? Function(_GetUsedProduct value)? getAllUsedProduct,
  }) {
    return fetchCache?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCache value)? fetchCache,
    TResult Function(_Transform value)? transform,
    TResult Function(_UsedProduct value)? usedProduct,
    TResult Function(_GetUsedProduct value)? getAllUsedProduct,
    required TResult orElse(),
  }) {
    if (fetchCache != null) {
      return fetchCache(this);
    }
    return orElse();
  }
}

abstract class _FetchCache implements MenuEvent {
  const factory _FetchCache() = _$FetchCacheImpl;
}

/// @nodoc
abstract class _$$TransformImplCopyWith<$Res> {
  factory _$$TransformImplCopyWith(
          _$TransformImpl value, $Res Function(_$TransformImpl) then) =
      __$$TransformImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {ProductResponse productResponse,
      FavoritesAllResponse favoritesResponse,
      FavoritesAllResponse usedResponse});

  $ProductResponseCopyWith<$Res> get productResponse;
  $FavoritesAllResponseCopyWith<$Res> get favoritesResponse;
  $FavoritesAllResponseCopyWith<$Res> get usedResponse;
}

/// @nodoc
class __$$TransformImplCopyWithImpl<$Res>
    extends _$MenuEventCopyWithImpl<$Res, _$TransformImpl>
    implements _$$TransformImplCopyWith<$Res> {
  __$$TransformImplCopyWithImpl(
      _$TransformImpl _value, $Res Function(_$TransformImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productResponse = null,
    Object? favoritesResponse = null,
    Object? usedResponse = null,
  }) {
    return _then(_$TransformImpl(
      productResponse: null == productResponse
          ? _value.productResponse
          : productResponse // ignore: cast_nullable_to_non_nullable
              as ProductResponse,
      favoritesResponse: null == favoritesResponse
          ? _value.favoritesResponse
          : favoritesResponse // ignore: cast_nullable_to_non_nullable
              as FavoritesAllResponse,
      usedResponse: null == usedResponse
          ? _value.usedResponse
          : usedResponse // ignore: cast_nullable_to_non_nullable
              as FavoritesAllResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductResponseCopyWith<$Res> get productResponse {
    return $ProductResponseCopyWith<$Res>(_value.productResponse, (value) {
      return _then(_value.copyWith(productResponse: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FavoritesAllResponseCopyWith<$Res> get favoritesResponse {
    return $FavoritesAllResponseCopyWith<$Res>(_value.favoritesResponse,
        (value) {
      return _then(_value.copyWith(favoritesResponse: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FavoritesAllResponseCopyWith<$Res> get usedResponse {
    return $FavoritesAllResponseCopyWith<$Res>(_value.usedResponse, (value) {
      return _then(_value.copyWith(usedResponse: value));
    });
  }
}

/// @nodoc

class _$TransformImpl implements _Transform {
  const _$TransformImpl(
      {required this.productResponse,
      required this.favoritesResponse,
      required this.usedResponse});

  @override
  final ProductResponse productResponse;
  @override
  final FavoritesAllResponse favoritesResponse;
  @override
  final FavoritesAllResponse usedResponse;

  @override
  String toString() {
    return 'MenuEvent.transform(productResponse: $productResponse, favoritesResponse: $favoritesResponse, usedResponse: $usedResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransformImpl &&
            (identical(other.productResponse, productResponse) ||
                other.productResponse == productResponse) &&
            (identical(other.favoritesResponse, favoritesResponse) ||
                other.favoritesResponse == favoritesResponse) &&
            (identical(other.usedResponse, usedResponse) ||
                other.usedResponse == usedResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, productResponse, favoritesResponse, usedResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransformImplCopyWith<_$TransformImpl> get copyWith =>
      __$$TransformImplCopyWithImpl<_$TransformImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailUser) initial,
    required TResult Function() fetchCache,
    required TResult Function(
            ProductResponse productResponse,
            FavoritesAllResponse favoritesResponse,
            FavoritesAllResponse usedResponse)
        transform,
    required TResult Function() usedProduct,
    required TResult Function() getAllUsedProduct,
  }) {
    return transform(productResponse, favoritesResponse, usedResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailUser)? initial,
    TResult? Function()? fetchCache,
    TResult? Function(
            ProductResponse productResponse,
            FavoritesAllResponse favoritesResponse,
            FavoritesAllResponse usedResponse)?
        transform,
    TResult? Function()? usedProduct,
    TResult? Function()? getAllUsedProduct,
  }) {
    return transform?.call(productResponse, favoritesResponse, usedResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailUser)? initial,
    TResult Function()? fetchCache,
    TResult Function(
            ProductResponse productResponse,
            FavoritesAllResponse favoritesResponse,
            FavoritesAllResponse usedResponse)?
        transform,
    TResult Function()? usedProduct,
    TResult Function()? getAllUsedProduct,
    required TResult orElse(),
  }) {
    if (transform != null) {
      return transform(productResponse, favoritesResponse, usedResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCache value) fetchCache,
    required TResult Function(_Transform value) transform,
    required TResult Function(_UsedProduct value) usedProduct,
    required TResult Function(_GetUsedProduct value) getAllUsedProduct,
  }) {
    return transform(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCache value)? fetchCache,
    TResult? Function(_Transform value)? transform,
    TResult? Function(_UsedProduct value)? usedProduct,
    TResult? Function(_GetUsedProduct value)? getAllUsedProduct,
  }) {
    return transform?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCache value)? fetchCache,
    TResult Function(_Transform value)? transform,
    TResult Function(_UsedProduct value)? usedProduct,
    TResult Function(_GetUsedProduct value)? getAllUsedProduct,
    required TResult orElse(),
  }) {
    if (transform != null) {
      return transform(this);
    }
    return orElse();
  }
}

abstract class _Transform implements MenuEvent {
  const factory _Transform(
      {required final ProductResponse productResponse,
      required final FavoritesAllResponse favoritesResponse,
      required final FavoritesAllResponse usedResponse}) = _$TransformImpl;

  ProductResponse get productResponse;
  FavoritesAllResponse get favoritesResponse;
  FavoritesAllResponse get usedResponse;
  @JsonKey(ignore: true)
  _$$TransformImplCopyWith<_$TransformImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UsedProductImplCopyWith<$Res> {
  factory _$$UsedProductImplCopyWith(
          _$UsedProductImpl value, $Res Function(_$UsedProductImpl) then) =
      __$$UsedProductImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UsedProductImplCopyWithImpl<$Res>
    extends _$MenuEventCopyWithImpl<$Res, _$UsedProductImpl>
    implements _$$UsedProductImplCopyWith<$Res> {
  __$$UsedProductImplCopyWithImpl(
      _$UsedProductImpl _value, $Res Function(_$UsedProductImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UsedProductImpl implements _UsedProduct {
  const _$UsedProductImpl();

  @override
  String toString() {
    return 'MenuEvent.usedProduct()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UsedProductImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailUser) initial,
    required TResult Function() fetchCache,
    required TResult Function(
            ProductResponse productResponse,
            FavoritesAllResponse favoritesResponse,
            FavoritesAllResponse usedResponse)
        transform,
    required TResult Function() usedProduct,
    required TResult Function() getAllUsedProduct,
  }) {
    return usedProduct();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailUser)? initial,
    TResult? Function()? fetchCache,
    TResult? Function(
            ProductResponse productResponse,
            FavoritesAllResponse favoritesResponse,
            FavoritesAllResponse usedResponse)?
        transform,
    TResult? Function()? usedProduct,
    TResult? Function()? getAllUsedProduct,
  }) {
    return usedProduct?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailUser)? initial,
    TResult Function()? fetchCache,
    TResult Function(
            ProductResponse productResponse,
            FavoritesAllResponse favoritesResponse,
            FavoritesAllResponse usedResponse)?
        transform,
    TResult Function()? usedProduct,
    TResult Function()? getAllUsedProduct,
    required TResult orElse(),
  }) {
    if (usedProduct != null) {
      return usedProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCache value) fetchCache,
    required TResult Function(_Transform value) transform,
    required TResult Function(_UsedProduct value) usedProduct,
    required TResult Function(_GetUsedProduct value) getAllUsedProduct,
  }) {
    return usedProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCache value)? fetchCache,
    TResult? Function(_Transform value)? transform,
    TResult? Function(_UsedProduct value)? usedProduct,
    TResult? Function(_GetUsedProduct value)? getAllUsedProduct,
  }) {
    return usedProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCache value)? fetchCache,
    TResult Function(_Transform value)? transform,
    TResult Function(_UsedProduct value)? usedProduct,
    TResult Function(_GetUsedProduct value)? getAllUsedProduct,
    required TResult orElse(),
  }) {
    if (usedProduct != null) {
      return usedProduct(this);
    }
    return orElse();
  }
}

abstract class _UsedProduct implements MenuEvent {
  const factory _UsedProduct() = _$UsedProductImpl;
}

/// @nodoc
abstract class _$$GetUsedProductImplCopyWith<$Res> {
  factory _$$GetUsedProductImplCopyWith(_$GetUsedProductImpl value,
          $Res Function(_$GetUsedProductImpl) then) =
      __$$GetUsedProductImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUsedProductImplCopyWithImpl<$Res>
    extends _$MenuEventCopyWithImpl<$Res, _$GetUsedProductImpl>
    implements _$$GetUsedProductImplCopyWith<$Res> {
  __$$GetUsedProductImplCopyWithImpl(
      _$GetUsedProductImpl _value, $Res Function(_$GetUsedProductImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUsedProductImpl implements _GetUsedProduct {
  const _$GetUsedProductImpl();

  @override
  String toString() {
    return 'MenuEvent.getAllUsedProduct()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUsedProductImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailUser) initial,
    required TResult Function() fetchCache,
    required TResult Function(
            ProductResponse productResponse,
            FavoritesAllResponse favoritesResponse,
            FavoritesAllResponse usedResponse)
        transform,
    required TResult Function() usedProduct,
    required TResult Function() getAllUsedProduct,
  }) {
    return getAllUsedProduct();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailUser)? initial,
    TResult? Function()? fetchCache,
    TResult? Function(
            ProductResponse productResponse,
            FavoritesAllResponse favoritesResponse,
            FavoritesAllResponse usedResponse)?
        transform,
    TResult? Function()? usedProduct,
    TResult? Function()? getAllUsedProduct,
  }) {
    return getAllUsedProduct?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailUser)? initial,
    TResult Function()? fetchCache,
    TResult Function(
            ProductResponse productResponse,
            FavoritesAllResponse favoritesResponse,
            FavoritesAllResponse usedResponse)?
        transform,
    TResult Function()? usedProduct,
    TResult Function()? getAllUsedProduct,
    required TResult orElse(),
  }) {
    if (getAllUsedProduct != null) {
      return getAllUsedProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCache value) fetchCache,
    required TResult Function(_Transform value) transform,
    required TResult Function(_UsedProduct value) usedProduct,
    required TResult Function(_GetUsedProduct value) getAllUsedProduct,
  }) {
    return getAllUsedProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCache value)? fetchCache,
    TResult? Function(_Transform value)? transform,
    TResult? Function(_UsedProduct value)? usedProduct,
    TResult? Function(_GetUsedProduct value)? getAllUsedProduct,
  }) {
    return getAllUsedProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCache value)? fetchCache,
    TResult Function(_Transform value)? transform,
    TResult Function(_UsedProduct value)? usedProduct,
    TResult Function(_GetUsedProduct value)? getAllUsedProduct,
    required TResult orElse(),
  }) {
    if (getAllUsedProduct != null) {
      return getAllUsedProduct(this);
    }
    return orElse();
  }
}

abstract class _GetUsedProduct implements MenuEvent {
  const factory _GetUsedProduct() = _$GetUsedProductImpl;
}

/// @nodoc
mixin _$MenuState {
  List<Category> get categorys => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  Map<String, List<Product>> get menu => throw _privateConstructorUsedError;
  ProductStatus get status => throw _privateConstructorUsedError;
  Map<String, dynamic> get usedProduct => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuStateCopyWith<MenuState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuStateCopyWith<$Res> {
  factory $MenuStateCopyWith(MenuState value, $Res Function(MenuState) then) =
      _$MenuStateCopyWithImpl<$Res, MenuState>;
  @useResult
  $Res call(
      {List<Category> categorys,
      List<Product> products,
      Map<String, List<Product>> menu,
      ProductStatus status,
      Map<String, dynamic> usedProduct});
}

/// @nodoc
class _$MenuStateCopyWithImpl<$Res, $Val extends MenuState>
    implements $MenuStateCopyWith<$Res> {
  _$MenuStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categorys = null,
    Object? products = null,
    Object? menu = null,
    Object? status = null,
    Object? usedProduct = null,
  }) {
    return _then(_value.copyWith(
      categorys: null == categorys
          ? _value.categorys
          : categorys // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      menu: null == menu
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Product>>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProductStatus,
      usedProduct: null == usedProduct
          ? _value.usedProduct
          : usedProduct // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MenuStateImplCopyWith<$Res>
    implements $MenuStateCopyWith<$Res> {
  factory _$$MenuStateImplCopyWith(
          _$MenuStateImpl value, $Res Function(_$MenuStateImpl) then) =
      __$$MenuStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Category> categorys,
      List<Product> products,
      Map<String, List<Product>> menu,
      ProductStatus status,
      Map<String, dynamic> usedProduct});
}

/// @nodoc
class __$$MenuStateImplCopyWithImpl<$Res>
    extends _$MenuStateCopyWithImpl<$Res, _$MenuStateImpl>
    implements _$$MenuStateImplCopyWith<$Res> {
  __$$MenuStateImplCopyWithImpl(
      _$MenuStateImpl _value, $Res Function(_$MenuStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categorys = null,
    Object? products = null,
    Object? menu = null,
    Object? status = null,
    Object? usedProduct = null,
  }) {
    return _then(_$MenuStateImpl(
      categorys: null == categorys
          ? _value._categorys
          : categorys // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      menu: null == menu
          ? _value._menu
          : menu // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Product>>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProductStatus,
      usedProduct: null == usedProduct
          ? _value._usedProduct
          : usedProduct // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$MenuStateImpl implements _MenuState {
  const _$MenuStateImpl(
      {final List<Category> categorys = const [],
      final List<Product> products = const [],
      final Map<String, List<Product>> menu = const {},
      this.status = ProductStatus.initial,
      final Map<String, dynamic> usedProduct = const {}})
      : _categorys = categorys,
        _products = products,
        _menu = menu,
        _usedProduct = usedProduct;

  final List<Category> _categorys;
  @override
  @JsonKey()
  List<Category> get categorys {
    if (_categorys is EqualUnmodifiableListView) return _categorys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categorys);
  }

  final List<Product> _products;
  @override
  @JsonKey()
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final Map<String, List<Product>> _menu;
  @override
  @JsonKey()
  Map<String, List<Product>> get menu {
    if (_menu is EqualUnmodifiableMapView) return _menu;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_menu);
  }

  @override
  @JsonKey()
  final ProductStatus status;
  final Map<String, dynamic> _usedProduct;
  @override
  @JsonKey()
  Map<String, dynamic> get usedProduct {
    if (_usedProduct is EqualUnmodifiableMapView) return _usedProduct;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_usedProduct);
  }

  @override
  String toString() {
    return 'MenuState(categorys: $categorys, products: $products, menu: $menu, status: $status, usedProduct: $usedProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuStateImpl &&
            const DeepCollectionEquality()
                .equals(other._categorys, _categorys) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality().equals(other._menu, _menu) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._usedProduct, _usedProduct));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categorys),
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_menu),
      status,
      const DeepCollectionEquality().hash(_usedProduct));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuStateImplCopyWith<_$MenuStateImpl> get copyWith =>
      __$$MenuStateImplCopyWithImpl<_$MenuStateImpl>(this, _$identity);
}

abstract class _MenuState implements MenuState {
  const factory _MenuState(
      {final List<Category> categorys,
      final List<Product> products,
      final Map<String, List<Product>> menu,
      final ProductStatus status,
      final Map<String, dynamic> usedProduct}) = _$MenuStateImpl;

  @override
  List<Category> get categorys;
  @override
  List<Product> get products;
  @override
  Map<String, List<Product>> get menu;
  @override
  ProductStatus get status;
  @override
  Map<String, dynamic> get usedProduct;
  @override
  @JsonKey(ignore: true)
  _$$MenuStateImplCopyWith<_$MenuStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
