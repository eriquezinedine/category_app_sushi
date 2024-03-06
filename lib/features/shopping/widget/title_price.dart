import 'package:flutter/material.dart';
import 'package:take_sushi/core/core.dart';

class TitlePice extends StatelessWidget {
  const TitlePice({
    super.key,
    required this.text,
    this.fontSize = 14,
    this.color,
  });

  final String text;
  final double fontSize;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color ?? Palette.black,
          fontWeight: FontWeight.bold,
          fontSize: fontSize),
    );
  }
}
