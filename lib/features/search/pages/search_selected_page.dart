import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:take_sushi/core/core.dart';
import 'package:take_sushi/features/features.dart';

class SearchSelectedPage extends StatelessWidget {
  const SearchSelectedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SearchCubit>();
    final bloc = context.read<MenuBloc>();
    final ingredients = cubit.state.ingredient;
    final categories = bloc.state.categorys;

    return Scaffold(
      backgroundColor: Palette.background,
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Buscar producto',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const Gap(16),
            const Text(
              'Seleccionar ingredientes',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                // fontSize: 114,
              ),
            ),
            const Gap(8),
            BlocSelector<SearchCubit, SearchState, List<Ingredient>>(
              selector: (state) {
                return state.selectedIngredients;
              },
              builder: (context, selectedIngredients) {
                return Wrap(
                  runSpacing: 8,
                  spacing: 8,
                  children: List.generate(ingredients.length, (index) {
                    final ingredient = ingredients[index];
                    return Tag(
                      fontSize: 12,
                      onTap: () {
                        cubit.selectedIngredient(ingredient);
                      },
                      index: index,
                      name: ingredient.name,
                      isSelected: selectedIngredients.contains(ingredient),
                    );
                  }),
                );
              },
            ),
            const Gap(16),
            const Text(
              'Seleccionar UNA categoria',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                // fontSize: 114,
              ),
            ),
            const Gap(8),
            BlocSelector<SearchCubit, SearchState, Category?>(
              selector: (state) {
                return state.selectedCategory;
              },
              builder: (context, selectedCategory) {
                return Wrap(
                  runSpacing: 8,
                  spacing: 8,
                  children: List.generate(categories.length, (index) {
                    final category = categories[index];
                    return Tag(
                      fontSize: 13,
                      color: Palette.primaryColor,
                      textColor: Colors.white,
                      onTap: () {
                        cubit.selectedCategories(category);
                      },
                      index: index,
                      name: category.name,
                      isSelected: selectedCategory == category,
                    );
                  }),
                );
              },
            ),
            const Gap(58)
          ],
        ),
      ),
    );
  }
}
