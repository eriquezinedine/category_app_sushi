import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:take_sushi/core/core.dart';

class ListTabCategory extends StatelessWidget {
  const ListTabCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<MenuBloc, MenuState, List<Category>>(
      selector: (state) {
        return state.categorys;
      },
      builder: (context, categorys) {
        return TabBar(
          isScrollable: true,
          unselectedLabelColor: const Color.fromARGB(133, 110, 107, 107),
          labelColor: Colors.white,
          labelStyle: const TextStyle(fontWeight: FontWeight.bold),
          indicator: BoxDecoration(
            color: Palette.primaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          tabs: List.generate(
            categorys.length,
            (index) => Tab(
              text: categorys[index].name,
            ),
          ),
        );
      },
    );
  }
}
