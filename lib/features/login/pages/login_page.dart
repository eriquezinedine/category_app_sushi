import 'package:cherry_toast/cherry_toast.dart';
import 'package:cherry_toast/resources/arrays.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:take_sushi/core/core.dart';
import 'package:take_sushi/features/features.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final cubit = context.read<LoginCubit>();
    return MultiBlocListener(
      listeners: [
        BlocListener<LoginCubit, LoginState>(
          listenWhen: (p, c) => p.user != c.user,
          listener: (context, state) {
            if (state.user != null) {
              context.navigateReplacement(const LoadingPage());
            }
          },
        ),
        BlocListener<LoginCubit, LoginState>(
          listenWhen: (p, c) => p.loginGoogleStatus != c.loginGoogleStatus,
          listener: (context, state) {
            if (state.loginGoogleStatus == LoginGoogleStatus.error) {
              CherryToast.error(
                disableToastAnimation: true,
                toastPosition: Position.top,
                title: const Text(
                  'Error servidor',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                action: const Text('Vuelve mas tarde ❤️'),
                // actionHandler: () {},
              ).show(context);
            }
          },
        ),
      ],
      child: _Body(size: size, cubit: cubit),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.size,
    required this.cubit,
  });

  final Size size;
  final LoginCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/img/background_login.jpg',
          width: size.width,
          height: size.height,
          fit: BoxFit.cover,
        ),
        BlocSelector<LoginCubit, LoginState, AutomaticLoginStus>(
          selector: (state) {
            return state.automaticLoginStus;
          },
          builder: (context, status) {
            return Container(
              width: size.width,
              height: size.height,
              color: Palette.shadowBackground.withOpacity(.8),
              child: status == AutomaticLoginStus.loading ||
                      status == AutomaticLoginStus.initial
                  ? const Center(
                      child: SizedBox.square(
                        dimension: 54,
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 30),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 100,
                                child: Image.asset(
                                  width: size.height * .35,
                                  'assets/img/logo_japo.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                height: 2,
                                color: Palette.primaryColor,
                                child: const Row(),
                              ),
                              const Gap(16),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  BlocSelector<LoginCubit, LoginState,
                                      LoginGoogleStatus>(
                                    selector: (state) {
                                      return state.loginGoogleStatus;
                                    },
                                    builder: (context, status) {
                                      return ButtonLogin(
                                        onTap: () {
                                          cubit.singInGoogle(context);
                                        },
                                        isLoading:
                                            status == LoginGoogleStatus.loading,
                                        path: 'assets/svg/google.svg',
                                        text: 'Ingresar con Google',
                                      );
                                    },
                                  ),
                                  // const Gap(12),
                                  // ButtonLogin(
                                  //   onTap: () {
                                  //     // cubit.saveUserSupabase();
                                  //   },
                                  //   path: 'assets/svg/google.svg',
                                  //   text: 'Guardar usuario supabase',
                                  // )
                                ],
                              ),
                              const Gap(16)
                            ],
                          ),
                        )
                      ],
                    ),
            );
          },
        )
      ],
    );
  }
}
