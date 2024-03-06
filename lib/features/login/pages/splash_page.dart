import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:take_sushi/core/core.dart';
import 'package:take_sushi/features/features.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: BlocProvider.of<LoginCubit>(context)..automaticSingIn(),
      child: BlocListener<LoginCubit, LoginState>(
        listenWhen: (p, c) =>
            p.user != c.user || p.automaticLoginStus != c.automaticLoginStus,
        listener: (context, state) {
          if (state.user != null) {
            context.navigateReplacement(const LoadingPage());
          } else {
            context.navigateReplacement(const LoginPage());
          }
        },
        child: const Scaffold(
          backgroundColor: Palette.redSecond,
        ),
      ),
    );
  }
}
