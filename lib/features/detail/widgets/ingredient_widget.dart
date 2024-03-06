import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:take_sushi/core/core.dart';
import 'package:take_sushi/features/detail/detail.dart';

class IngredientWidget extends StatelessWidget {
  const IngredientWidget({super.key, required this.ingredients});

  final List<Ingredient> ingredients;
  @override
  Widget build(BuildContext context) {
    if (ingredients.isEmpty) return const SizedBox.shrink();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Ingredientes',
          style: TextStyle(
            color: Palette.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Gap(8),
        Wrap(
          runSpacing: 8,
          spacing: 8,
          children: List.generate(ingredients.length, (index) {
            final ingredient = ingredients[index];
            return Tag(
              isSelected: true,
              index: index,
              name: ingredient.name,
            );
          }),
        ),
      ],
    );
  }
}
