// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  User? get user => throw _privateConstructorUsedError;
  LoginGoogleStatus get loginGoogleStatus => throw _privateConstructorUsedError;
  AutomaticLoginStus get automaticLoginStus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {User? user,
      LoginGoogleStatus loginGoogleStatus,
      AutomaticLoginStus automaticLoginStus});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? loginGoogleStatus = null,
    Object? automaticLoginStus = null,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      loginGoogleStatus: null == loginGoogleStatus
          ? _value.loginGoogleStatus
          : loginGoogleStatus // ignore: cast_nullable_to_non_nullable
              as LoginGoogleStatus,
      automaticLoginStus: null == automaticLoginStus
          ? _value.automaticLoginStus
          : automaticLoginStus // ignore: cast_nullable_to_non_nullable
              as AutomaticLoginStus,
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
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User? user,
      LoginGoogleStatus loginGoogleStatus,
      AutomaticLoginStus automaticLoginStus});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? loginGoogleStatus = null,
    Object? automaticLoginStus = null,
  }) {
    return _then(_$LoginStateImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      loginGoogleStatus: null == loginGoogleStatus
          ? _value.loginGoogleStatus
          : loginGoogleStatus // ignore: cast_nullable_to_non_nullable
              as LoginGoogleStatus,
      automaticLoginStus: null == automaticLoginStus
          ? _value.automaticLoginStus
          : automaticLoginStus // ignore: cast_nullable_to_non_nullable
              as AutomaticLoginStus,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl implements _LoginState {
  const _$LoginStateImpl(
      {this.user,
      this.loginGoogleStatus = LoginGoogleStatus.initial,
      this.automaticLoginStus = AutomaticLoginStus.initial});

  @override
  final User? user;
  @override
  @JsonKey()
  final LoginGoogleStatus loginGoogleStatus;
  @override
  @JsonKey()
  final AutomaticLoginStus automaticLoginStus;

  @override
  String toString() {
    return 'LoginState(user: $user, loginGoogleStatus: $loginGoogleStatus, automaticLoginStus: $automaticLoginStus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.loginGoogleStatus, loginGoogleStatus) ||
                other.loginGoogleStatus == loginGoogleStatus) &&
            (identical(other.automaticLoginStus, automaticLoginStus) ||
                other.automaticLoginStus == automaticLoginStus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, user, loginGoogleStatus, automaticLoginStus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final User? user,
      final LoginGoogleStatus loginGoogleStatus,
      final AutomaticLoginStus automaticLoginStus}) = _$LoginStateImpl;

  @override
  User? get user;
  @override
  LoginGoogleStatus get loginGoogleStatus;
  @override
  AutomaticLoginStus get automaticLoginStus;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
