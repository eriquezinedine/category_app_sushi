import 'package:cherry_toast/cherry_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:take_sushi/core/core.dart';
import 'package:take_sushi/features/features.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final blocAuth = context.read<LoginCubit>();
    return BlocProvider.value(
      value: BlocProvider.of<MenuBloc>(context)
        ..add(MenuEvent.initial(blocAuth.state.user?.email ?? 'que paso'))
        ..add(const MenuEvent.usedProduct()),
      child: BlocListener<MenuBloc, MenuState>(
        listenWhen: (p, c) => p.status != c.status,
        listener: (context, state) {
          if (state.status == ProductStatus.loaded) {
            context.navigateReplacement(const HomePage());
          }

          if (state.status == ProductStatus.error) {
            CherryToast.error(
              toastDuration: const Duration(seconds: 8000),
              title: const Text(
                "Error",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              action: const Text(
                "Se ha detectado un problema con la conexión. Te recomendamos volver a intentarlo más tarde. Disculpa las molestias.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                ),
              ),
            ).show(context);
          }
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Transform.scale(
                  scale: 1.5,
                  child: Lottie.asset("assets/animation/loading.json",
                      repeat: true, width: 123, height: 159),
                ),
                const Opacity(
                  opacity: 0,
                  child: Text(
                    'Cargando...',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
