import 'package:flutter/material.dart';
import 'package:take_sushi/core/core.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.onTap,
    required this.text,
    this.iconData,
    this.color = Palette.primaryColor,
    this.textColor = Colors.white,
  });

  final VoidCallback onTap;
  final String text;
  final IconData? iconData;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: color,
      ),
      onPressed: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (iconData != null)
            Icon(
              iconData,
              color: textColor,
            ),
          const SizedBox(
            width: 4,
          ),
          Text(
            text,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
