import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:take_sushi/core/core.dart';

class NumberProfile extends StatelessWidget {
  const NumberProfile({
    super.key,
    required this.title,
    required this.number,
  });
  final String title;
  final int number;
  @override
  Widget build(BuildContext context) {
    return CardWidget(
        child: Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const Gap(4),
        Text(
          number.toString(),
        ),
      ],
    ));
  }
}
