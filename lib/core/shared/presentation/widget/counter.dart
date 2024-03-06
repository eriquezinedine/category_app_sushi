import 'package:flutter/material.dart';
import 'package:take_sushi/core/core.dart';

class Counter extends StatelessWidget {
  const Counter(
      {super.key,
      required this.onTapAdd,
      required this.onTapRemove,
      required this.count});

  final VoidCallback onTapAdd;
  final VoidCallback onTapRemove;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconTap(
          icon: Icons.add,
          onTap: onTapAdd,
        ),
        const SizedBox(
          width: 2,
        ),
        SizedBox(
          width: 25,
          child: Text(
            "$count",
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18),
          ),
        ),
        const SizedBox(
          width: 2,
        ),
        IconTap(
          icon: Icons.remove,
          onTap: onTapRemove,
        )
      ],
    );
  }
}
