// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileState {
  List<Product> get favorites => throw _privateConstructorUsedError;
  List<Product> get dones => throw _privateConstructorUsedError;
  ProfileStatus get status => throw _privateConstructorUsedError;
  List<OrderRequest> get orders => throw _privateConstructorUsedError;
  List<Contact> get contacs => throw _privateConstructorUsedError;
  List<Contact> get contacsSearch => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {List<Product> favorites,
      List<Product> dones,
      ProfileStatus status,
      List<OrderRequest> orders,
      List<Contact> contacs,
      List<Contact> contacsSearch,
      User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorites = null,
    Object? dones = null,
    Object? status = null,
    Object? orders = null,
    Object? contacs = null,
    Object? contacsSearch = null,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      favorites: null == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      dones: null == dones
          ? _value.dones
          : dones // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProfileStatus,
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderRequest>,
      contacs: null == contacs
          ? _value.contacs
          : contacs // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
      contacsSearch: null == contacsSearch
          ? _value.contacsSearch
          : contacsSearch // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileStateImplCopyWith(
          _$ProfileStateImpl value, $Res Function(_$ProfileStateImpl) then) =
      __$$ProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Product> favorites,
      List<Product> dones,
      ProfileStatus status,
      List<OrderRequest> orders,
      List<Contact> contacs,
      List<Contact> contacsSearch,
      User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$ProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateImpl>
    implements _$$ProfileStateImplCopyWith<$Res> {
  __$$ProfileStateImplCopyWithImpl(
      _$ProfileStateImpl _value, $Res Function(_$ProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorites = null,
    Object? dones = null,
    Object? status = null,
    Object? orders = null,
    Object? contacs = null,
    Object? contacsSearch = null,
    Object? user = freezed,
  }) {
    return _then(_$ProfileStateImpl(
      favorites: null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      dones: null == dones
          ? _value._dones
          : dones // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProfileStatus,
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderRequest>,
      contacs: null == contacs
          ? _value._contacs
          : contacs // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
      contacsSearch: null == contacsSearch
          ? _value._contacsSearch
          : contacsSearch // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$ProfileStateImpl implements _ProfileState {
  const _$ProfileStateImpl(
      {final List<Product> favorites = const [],
      final List<Product> dones = const [],
      this.status = ProfileStatus.initial,
      final List<OrderRequest> orders = const [],
      final List<Contact> contacs = const [],
      final List<Contact> contacsSearch = const [],
      this.user})
      : _favorites = favorites,
        _dones = dones,
        _orders = orders,
        _contacs = contacs,
        _contacsSearch = contacsSearch;

  final List<Product> _favorites;
  @override
  @JsonKey()
  List<Product> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  final List<Product> _dones;
  @override
  @JsonKey()
  List<Product> get dones {
    if (_dones is EqualUnmodifiableListView) return _dones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dones);
  }

  @override
  @JsonKey()
  final ProfileStatus status;
  final List<OrderRequest> _orders;
  @override
  @JsonKey()
  List<OrderRequest> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  final List<Contact> _contacs;
  @override
  @JsonKey()
  List<Contact> get contacs {
    if (_contacs is EqualUnmodifiableListView) return _contacs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacs);
  }

  final List<Contact> _contacsSearch;
  @override
  @JsonKey()
  List<Contact> get contacsSearch {
    if (_contacsSearch is EqualUnmodifiableListView) return _contacsSearch;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacsSearch);
  }

  @override
  final User? user;

  @override
  String toString() {
    return 'ProfileState(favorites: $favorites, dones: $dones, status: $status, orders: $orders, contacs: $contacs, contacsSearch: $contacsSearch, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites) &&
            const DeepCollectionEquality().equals(other._dones, _dones) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            const DeepCollectionEquality().equals(other._contacs, _contacs) &&
            const DeepCollectionEquality()
                .equals(other._contacsSearch, _contacsSearch) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_favorites),
      const DeepCollectionEquality().hash(_dones),
      status,
      const DeepCollectionEquality().hash(_orders),
      const DeepCollectionEquality().hash(_contacs),
      const DeepCollectionEquality().hash(_contacsSearch),
      user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {final List<Product> favorites,
      final List<Product> dones,
      final ProfileStatus status,
      final List<OrderRequest> orders,
      final List<Contact> contacs,
      final List<Contact> contacsSearch,
      final User? user}) = _$ProfileStateImpl;

  @override
  List<Product> get favorites;
  @override
  List<Product> get dones;
  @override
  ProfileStatus get status;
  @override
  List<OrderRequest> get orders;
  @override
  List<Contact> get contacs;
  @override
  List<Contact> get contacsSearch;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
