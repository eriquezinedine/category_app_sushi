import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:take_sushi/core/core.dart';
import 'package:take_sushi/core/shared/domain/repositories/i_history.dart';
import 'package:take_sushi/features/features.dart';
import 'package:take_sushi/features/profile/profile.dart';

class TakeSushiApp extends StatelessWidget {
  const TakeSushiApp({
    super.key,
    required this.iLocalRepository,
    required this.iAuth,
    required this.iMenu,
    required this.iHistory,
  });

  final ILocalRepository iLocalRepository;
  final IAuth iAuth;
  final IMenu iMenu;
  final IHistory iHistory;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => iLocalRepository,
        ),
        RepositoryProvider(
          create: (context) => iAuth,
        ),
        RepositoryProvider(
          create: (context) => iMenu,
        ),
        RepositoryProvider(
          create: (context) => iHistory,
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => HomeCubit(),
          ),
          BlocProvider(
            create: (context) => CategoryBloc()..initPageController(),
          ),
          BlocProvider(
            create: (context) => MenuBloc(
                menuRepository: RepositoryProvider.of(context),
                iLocalRepository: RepositoryProvider.of(context)),
          ),
          BlocProvider(
            create: (context) => LoginCubit(
              iLocalRepository: RepositoryProvider.of(context),
              iAuth: RepositoryProvider.of(context),
            ),
          ),
          BlocProvider(
            create: (context) => ShoppingCubit(
              RepositoryProvider.of(context),
              RepositoryProvider.of(context),
              RepositoryProvider.of(context),
            ),
          ),
          BlocProvider(
            create: (context) => ProfileCubit(
              iLocalRepository: RepositoryProvider.of(context),
              iHistory: RepositoryProvider.of(context),
            ),
          ),
        ],
        child: DevicePreview(
          enabled: false,
          builder: (context) => _Body(), // Wrap your app
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        tabBarTheme: TabBarTheme(
          labelColor: Palette.grayLight,
          unselectedLabelColor: Palette.blue.withOpacity(.5),
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Palette.primaryColor,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Palette.primaryColor),
        // useMaterial3: true,
      ),
      home: const SplashPage(),
    );
  }
}
