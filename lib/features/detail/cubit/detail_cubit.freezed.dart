// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailState {
  int get count => throw _privateConstructorUsedError;
  Product get product => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  Price? get selectedPrice => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  FavoriteStatus get favoriteStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailStateCopyWith<DetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailStateCopyWith<$Res> {
  factory $DetailStateCopyWith(
          DetailState value, $Res Function(DetailState) then) =
      _$DetailStateCopyWithImpl<$Res, DetailState>;
  @useResult
  $Res call(
      {int count,
      Product product,
      double price,
      Price? selectedPrice,
      bool isFavorite,
      FavoriteStatus favoriteStatus});

  $ProductCopyWith<$Res> get product;
  $PriceCopyWith<$Res>? get selectedPrice;
}

/// @nodoc
class _$DetailStateCopyWithImpl<$Res, $Val extends DetailState>
    implements $DetailStateCopyWith<$Res> {
  _$DetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? product = null,
    Object? price = null,
    Object? selectedPrice = freezed,
    Object? isFavorite = null,
    Object? favoriteStatus = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      selectedPrice: freezed == selectedPrice
          ? _value.selectedPrice
          : selectedPrice // ignore: cast_nullable_to_non_nullable
              as Price?,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      favoriteStatus: null == favoriteStatus
          ? _value.favoriteStatus
          : favoriteStatus // ignore: cast_nullable_to_non_nullable
              as FavoriteStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceCopyWith<$Res>? get selectedPrice {
    if (_value.selectedPrice == null) {
      return null;
    }

    return $PriceCopyWith<$Res>(_value.selectedPrice!, (value) {
      return _then(_value.copyWith(selectedPrice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailStateImplCopyWith<$Res>
    implements $DetailStateCopyWith<$Res> {
  factory _$$DetailStateImplCopyWith(
          _$DetailStateImpl value, $Res Function(_$DetailStateImpl) then) =
      __$$DetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int count,
      Product product,
      double price,
      Price? selectedPrice,
      bool isFavorite,
      FavoriteStatus favoriteStatus});

  @override
  $ProductCopyWith<$Res> get product;
  @override
  $PriceCopyWith<$Res>? get selectedPrice;
}

/// @nodoc
class __$$DetailStateImplCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$DetailStateImpl>
    implements _$$DetailStateImplCopyWith<$Res> {
  __$$DetailStateImplCopyWithImpl(
      _$DetailStateImpl _value, $Res Function(_$DetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? product = null,
    Object? price = null,
    Object? selectedPrice = freezed,
    Object? isFavorite = null,
    Object? favoriteStatus = null,
  }) {
    return _then(_$DetailStateImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      selectedPrice: freezed == selectedPrice
          ? _value.selectedPrice
          : selectedPrice // ignore: cast_nullable_to_non_nullable
              as Price?,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      favoriteStatus: null == favoriteStatus
          ? _value.favoriteStatus
          : favoriteStatus // ignore: cast_nullable_to_non_nullable
              as FavoriteStatus,
    ));
  }
}

/// @nodoc

class _$DetailStateImpl implements _DetailState {
  const _$DetailStateImpl(
      {this.count = 1,
      required this.product,
      required this.price,
      this.selectedPrice,
      this.isFavorite = false,
      this.favoriteStatus = FavoriteStatus.initial});

  @override
  @JsonKey()
  final int count;
  @override
  final Product product;
  @override
  final double price;
  @override
  final Price? selectedPrice;
  @override
  @JsonKey()
  final bool isFavorite;
  @override
  @JsonKey()
  final FavoriteStatus favoriteStatus;

  @override
  String toString() {
    return 'DetailState(count: $count, product: $product, price: $price, selectedPrice: $selectedPrice, isFavorite: $isFavorite, favoriteStatus: $favoriteStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailStateImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.selectedPrice, selectedPrice) ||
                other.selectedPrice == selectedPrice) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.favoriteStatus, favoriteStatus) ||
                other.favoriteStatus == favoriteStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count, product, price,
      selectedPrice, isFavorite, favoriteStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailStateImplCopyWith<_$DetailStateImpl> get copyWith =>
      __$$DetailStateImplCopyWithImpl<_$DetailStateImpl>(this, _$identity);
}

abstract class _DetailState implements DetailState {
  const factory _DetailState(
      {final int count,
      required final Product product,
      required final double price,
      final Price? selectedPrice,
      final bool isFavorite,
      final FavoriteStatus favoriteStatus}) = _$DetailStateImpl;

  @override
  int get count;
  @override
  Product get product;
  @override
  double get price;
  @override
  Price? get selectedPrice;
  @override
  bool get isFavorite;
  @override
  FavoriteStatus get favoriteStatus;
  @override
  @JsonKey(ignore: true)
  _$$DetailStateImplCopyWith<_$DetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
