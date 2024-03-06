// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemOrder _$ItemOrderFromJson(Map<String, dynamic> json) {
  return _ItemOrder.fromJson(json);
}

/// @nodoc
mixin _$ItemOrder {
  Product get product => throw _privateConstructorUsedError;
  Price? get price => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemOrderCopyWith<ItemOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemOrderCopyWith<$Res> {
  factory $ItemOrderCopyWith(ItemOrder value, $Res Function(ItemOrder) then) =
      _$ItemOrderCopyWithImpl<$Res, ItemOrder>;
  @useResult
  $Res call({Product product, Price? price, int count});

  $ProductCopyWith<$Res> get product;
  $PriceCopyWith<$Res>? get price;
}

/// @nodoc
class _$ItemOrderCopyWithImpl<$Res, $Val extends ItemOrder>
    implements $ItemOrderCopyWith<$Res> {
  _$ItemOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? price = freezed,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price?,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
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
  $PriceCopyWith<$Res>? get price {
    if (_value.price == null) {
      return null;
    }

    return $PriceCopyWith<$Res>(_value.price!, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemOrderImplCopyWith<$Res>
    implements $ItemOrderCopyWith<$Res> {
  factory _$$ItemOrderImplCopyWith(
          _$ItemOrderImpl value, $Res Function(_$ItemOrderImpl) then) =
      __$$ItemOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Product product, Price? price, int count});

  @override
  $ProductCopyWith<$Res> get product;
  @override
  $PriceCopyWith<$Res>? get price;
}

/// @nodoc
class __$$ItemOrderImplCopyWithImpl<$Res>
    extends _$ItemOrderCopyWithImpl<$Res, _$ItemOrderImpl>
    implements _$$ItemOrderImplCopyWith<$Res> {
  __$$ItemOrderImplCopyWithImpl(
      _$ItemOrderImpl _value, $Res Function(_$ItemOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? price = freezed,
    Object? count = null,
  }) {
    return _then(_$ItemOrderImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price?,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemOrderImpl implements _ItemOrder {
  _$ItemOrderImpl({required this.product, this.price, required this.count});

  factory _$ItemOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemOrderImplFromJson(json);

  @override
  final Product product;
  @override
  final Price? price;
  @override
  final int count;

  @override
  String toString() {
    return 'ItemOrder(product: $product, price: $price, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemOrderImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, product, price, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemOrderImplCopyWith<_$ItemOrderImpl> get copyWith =>
      __$$ItemOrderImplCopyWithImpl<_$ItemOrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemOrderImplToJson(
      this,
    );
  }
}

abstract class _ItemOrder implements ItemOrder {
  factory _ItemOrder(
      {required final Product product,
      final Price? price,
      required final int count}) = _$ItemOrderImpl;

  factory _ItemOrder.fromJson(Map<String, dynamic> json) =
      _$ItemOrderImpl.fromJson;

  @override
  Product get product;
  @override
  Price? get price;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$ItemOrderImplCopyWith<_$ItemOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
