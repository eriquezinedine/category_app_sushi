import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:take_sushi/core/core.dart';
import 'package:take_sushi/features/category/bloc/category_bloc.dart';

class CategoryPageController extends StatefulWidget {
  const CategoryPageController({super.key});

  @override
  State<CategoryPageController> createState() => _CategoryPageControllerState();
}

class _CategoryPageControllerState extends State<CategoryPageController>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CategoryBloc>();
    final List<Widget> widgets = [
      const ColoredBox(color: Colors.redAccent),
      const ColoredBox(color: Colors.blue),
      const ColoredBox(color: Colors.black),
      const ColoredBox(color: Colors.yellow),
      const ColoredBox(color: Colors.green),
      const ColoredBox(color: Colors.pink),
      const ColoredBox(color: Colors.purple),
    ];

    return Scaffold(
      backgroundColor: Palette.background,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              'Categorias',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const Gap(16),
            Expanded(
              child: PageView.builder(
                controller: bloc.categoryPageController,
                itemCount: widgets.length,
                itemBuilder: (context, index) {
                  return BlocSelector<CategoryBloc, CategoryState, double>(
                    selector: (state) {
                      return state.currentIndex;
                    },
                    builder: (context, value) {
                      final factorChange = (value - index).abs();
                      return Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        margin: EdgeInsets.symmetric(
                          vertical: 120.0 * factorChange,
                        ).copyWith(right: index == widgets.length - 1 ? 0 : 16),
                        child: Opacity(
                            opacity: (1 - factorChange).clamp(0.5, 1),
                            child: widgets[index]),
                      );
                    },
                  );
                },
              ),
            ),
            const Gap(24),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
