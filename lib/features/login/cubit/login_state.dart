part of 'login_cubit.dart';

enum LoginGoogleStatus {
  initial,
  loading,
  loaded,
  error,
}

enum AutomaticLoginStus {
  initial,
  loading,
  loaded,
  error,
}

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    User? user,
    @Default(LoginGoogleStatus.initial) LoginGoogleStatus loginGoogleStatus,
    @Default(AutomaticLoginStus.initial) AutomaticLoginStus automaticLoginStus,
  }) = _LoginState;
}
