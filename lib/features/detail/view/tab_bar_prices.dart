import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:take_sushi/core/core.dart';
import 'package:take_sushi/features/detail/cubit/detail_cubit.dart';

class TabBarPrices extends StatelessWidget {
  const TabBarPrices({
    super.key,
    required this.product,
  });

  final Product product;
  @override
  Widget build(BuildContext context) {
    if (product.prices.isEmpty) return const SizedBox.shrink();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Precios',
          style: TextStyle(
            color: Palette.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        DefaultTabController(
          length: product.prices.length,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: TabBar(
              onTap: (value) {
                context.read<DetailCubit>().selectedPrice(value);
              },
              tabs: List.generate(
                product.prices.length,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: FittedBox(
                    child: Text(product.prices[index].name),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Gap(8),
      ],
    );
  }
}
