import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase;
import 'package:take_sushi/core/core.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({
    required ILocalRepository iLocalRepository,
    required IAuth iAuth,
  })  : _iLocalRepository = iLocalRepository,
        _iAuth = iAuth,
        auth = Auth(),
        super(const LoginState());

  late Auth auth;
  final ILocalRepository _iLocalRepository;
  final IAuth _iAuth;

  Future<void> singInGoogle(BuildContext context) async {
    emit(state.copyWith(
      loginGoogleStatus: LoginGoogleStatus.loading,
    ));
    final userGoogle = await auth.signIn(context: context);
    if (userGoogle == null) {
      emit(state.copyWith(loginGoogleStatus: LoginGoogleStatus.loaded));
      return;
    }
    final user = User(
      displayName: userGoogle.displayName ?? '',
      email: userGoogle.email ?? '',
      photoURL: userGoogle.photoURL,
    );
    saveUserSupabase(user);
  }

  Future<void> automaticSingIn() async {
    emit(state.copyWith(
      automaticLoginStus: AutomaticLoginStus.loading,
    ));
    await Future.delayed(const Duration(milliseconds: 800));
    try {
      final user = await _iLocalRepository.getUser();
      emit(state.copyWith(
        user: user,
        automaticLoginStus: AutomaticLoginStus.loaded,
      ));
    } catch (e) {
      emit(state.copyWith(
        automaticLoginStus: AutomaticLoginStus.error,
      ));
    }
  }

  Future<void> saveUserSupabase(User user) async {
    try {
      await _iAuth.setUser(user);
      _saveStateUser(user);
    } catch (e) {
      if (e is supabase.PostgrestException) {
        if (e.code == '23505') {
          _saveStateUser(user);
          log('Error usuario ya registrado');
          return;
        }
        emit(state.copyWith(
          user: null,
          loginGoogleStatus: LoginGoogleStatus.error,
        ));
        log('Error otro $e');
      }
    }
  }

  Future<void> _saveStateUser(User user) async {
    _iLocalRepository.setUser(user);
    emit(state.copyWith(
      user: user,
      loginGoogleStatus: LoginGoogleStatus.loaded,
    ));
  }
}
