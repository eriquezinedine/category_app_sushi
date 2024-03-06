import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:take_sushi/core/core.dart';
import 'package:take_sushi/features/detail/cubit/detail_cubit.dart';

class CounterPriceWidget extends StatelessWidget {
  const CounterPriceWidget({super.key, required this.price});
  final double price;
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DetailCubit>();

    return Column(
      children: [
        const Gap(16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BlocSelector<DetailCubit, DetailState, int>(
              selector: (state) {
                return state.count;
              },
              builder: (context, count) {
                return Counter(
                  count: count,
                  onTapAdd: () => cubit.counter(1),
                  onTapRemove: () => cubit.counter(-1),
                );
              },
            ),
            Row(
              children: [
                const Text(
                  'Precio: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Palette.disableText,
                    fontSize: 14,
                  ),
                ),
                BlocSelector<DetailCubit, DetailState, int>(
                  selector: (state) {
                    return state.count;
                  },
                  builder: (context, count) {
                    return Text(
                      'S/: ${price * count}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Palette.black,
                        fontSize: 24,
                      ),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
