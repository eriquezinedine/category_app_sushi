import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:take_sushi/core/core.dart';
import 'package:take_sushi/features/features.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      buildWhen: (p, c) =>
          p.selectedIngredients != c.selectedIngredients ||
          p.productSearch != c.productSearch,
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Palette.background,
          body: state.productSearch.isEmpty
              ? const Empty(
                  text: 'La busqueda esta vacia, como el corazón de ella 🥲',
                )
              : Column(
                  children: [
                    Expanded(
                      child: ContainerProducts(products: state.productSearch),
                    ),
                  ],
                ),
        );
      },
    );
  }
}
