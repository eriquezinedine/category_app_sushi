import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:take_sushi/core/core.dart';
import 'package:take_sushi/features/features.dart';
import 'package:take_sushi/features/profile/profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<LoginCubit>();
    return BlocProvider.value(
      value: BlocProvider.of<ProfileCubit>(context)
        ..getDataHistory(bloc.state.user?.email ?? ''),
      child: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = context.read<HomeCubit>();

    return Scaffold(
      backgroundColor: Palette.background,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: Column(
              children: [
                Expanded(
                  child: PageView(
                    controller: bloc.homePageController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      CategoryPage(),
                      SearchPage(),
                      ProfilePage(),
                    ],
                  ),
                )
              ],
            )),
            const NavigationContainer()
          ],
        ),
      ),
    );
  }
}
