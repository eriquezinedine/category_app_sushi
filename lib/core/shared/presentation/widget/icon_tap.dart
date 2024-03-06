import 'package:flutter/material.dart';
import 'package:take_sushi/core/core.dart';

class IconTap extends StatelessWidget {
  const IconTap({Key? key, required this.onTap, required this.icon})
      : super(key: key);
  final VoidCallback onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Palette.primaryColor,
        ),
        child: Icon(
          icon,
          color: Palette.grayLight,
          size: 18,
        ),
      ),
    );
  }
}
