import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:take_sushi/core/core.dart';

class Empty extends StatelessWidget {
  const Empty({
    super.key,
    required this.text,
  });

  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset("assets/animation/empty.json"),
        Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Palette.disableText,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
