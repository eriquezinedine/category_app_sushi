// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shopping_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShoppingState {
  List<ItemOrder> get orders => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;
  ShoppingStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShoppingStateCopyWith<ShoppingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingStateCopyWith<$Res> {
  factory $ShoppingStateCopyWith(
          ShoppingState value, $Res Function(ShoppingState) then) =
      _$ShoppingStateCopyWithImpl<$Res, ShoppingState>;
  @useResult
  $Res call({List<ItemOrder> orders, double total, ShoppingStatus status});
}

/// @nodoc
class _$ShoppingStateCopyWithImpl<$Res, $Val extends ShoppingState>
    implements $ShoppingStateCopyWith<$Res> {
  _$ShoppingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? total = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<ItemOrder>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ShoppingStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShoppingStateImplCopyWith<$Res>
    implements $ShoppingStateCopyWith<$Res> {
  factory _$$ShoppingStateImplCopyWith(
          _$ShoppingStateImpl value, $Res Function(_$ShoppingStateImpl) then) =
      __$$ShoppingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ItemOrder> orders, double total, ShoppingStatus status});
}

/// @nodoc
class __$$ShoppingStateImplCopyWithImpl<$Res>
    extends _$ShoppingStateCopyWithImpl<$Res, _$ShoppingStateImpl>
    implements _$$ShoppingStateImplCopyWith<$Res> {
  __$$ShoppingStateImplCopyWithImpl(
      _$ShoppingStateImpl _value, $Res Function(_$ShoppingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? total = null,
    Object? status = null,
  }) {
    return _then(_$ShoppingStateImpl(
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<ItemOrder>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ShoppingStatus,
    ));
  }
}

/// @nodoc

class _$ShoppingStateImpl implements _ShoppingState {
  const _$ShoppingStateImpl(
      {final List<ItemOrder> orders = const [],
      this.total = 0,
      this.status = ShoppingStatus.initial})
      : _orders = orders;

  final List<ItemOrder> _orders;
  @override
  @JsonKey()
  List<ItemOrder> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  @JsonKey()
  final double total;
  @override
  @JsonKey()
  final ShoppingStatus status;

  @override
  String toString() {
    return 'ShoppingState(orders: $orders, total: $total, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShoppingStateImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_orders), total, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShoppingStateImplCopyWith<_$ShoppingStateImpl> get copyWith =>
      __$$ShoppingStateImplCopyWithImpl<_$ShoppingStateImpl>(this, _$identity);
}

abstract class _ShoppingState implements ShoppingState {
  const factory _ShoppingState(
      {final List<ItemOrder> orders,
      final double total,
      final ShoppingStatus status}) = _$ShoppingStateImpl;

  @override
  List<ItemOrder> get orders;
  @override
  double get total;
  @override
  ShoppingStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$ShoppingStateImplCopyWith<_$ShoppingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
