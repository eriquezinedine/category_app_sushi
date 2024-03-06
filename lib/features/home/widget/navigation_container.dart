import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:take_sushi/core/core.dart';
import 'package:take_sushi/features/features.dart';

class NavigationContainer extends StatelessWidget {
  const NavigationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final bloc = context.read<HomeCubit>();

    return SizedBox(
      height: 80,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CustomPaint(
            size: Size(size.width, 80),
            painter: BNBCustomPainter(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ButtonNavigation(
                  iconData: Icons.home,
                  title: 'Home',
                  onTap: () => bloc.juntPage(0),
                ),
                Opacity(
                  opacity: 0,
                  child: ButtonNavigation(
                    iconData: Icons.note_outlined,
                    title: 'ghost',
                    onTap: () => {},
                  ),
                ),
                ButtonNavigation(
                  iconData: Icons.account_circle,
                  title: 'Perfil',
                  onTap: () => bloc.juntPage(2),
                ),
              ],
            ),
          ),
          Center(
            heightFactor: 0.6,
            child: FloatingActionButton(
                shape: const CircleBorder(),
                backgroundColor: Palette.primaryColor,
                elevation: 0.1,
                onPressed: () => bloc.juntPage(1),
                child: const Icon(
                  Icons.search,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}
/*

Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ButtonNavigation(
            iconData: Icons.home,
            title: 'Home',
            onTap: () {},
          ),
          ButtonNavigation(
            iconData: Icons.search,
            title: 'Buscar',
            onTap: () {},
          ),
          ButtonNavigation(
            iconData: Icons.account_circle,
            title: 'Perfil',
            onTap: () {},
          ),
        ],
      )


 */