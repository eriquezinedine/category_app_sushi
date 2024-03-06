import 'package:flutter/material.dart';
import 'package:take_sushi/core/core.dart';

class Tag extends StatelessWidget {
  const Tag({
    super.key,
    required this.index,
    required this.name,
    this.isSelected = false,
    this.onTap,
    this.color,
    this.textColor,
    this.fontSize,
  });

  final int index;
  final String name;
  final bool isSelected;
  final VoidCallback? onTap;
  final Color? color;
  final Color? textColor;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    final colorIndex = index % Palette.colors.length;
    final c = color ?? Palette.colors[colorIndex];
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 2,
            color: c,
          ),
          color: isSelected ? c : Colors.transparent,
        ),
        child: Text(
          name,
          style: TextStyle(
            fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
            color: isSelected ? (textColor ?? Colors.black) : Colors.black,
            fontSize: fontSize ?? 10,
          ),
        ),
      ),
    );
  }
}
