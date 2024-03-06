import 'package:flutter/material.dart';

class ButtonNavigation extends StatelessWidget {
  const ButtonNavigation({
    super.key,
    required this.iconData,
    required this.title,
    required this.onTap,
  });

  final IconData iconData;
  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconData),
          Text(title),
        ],
      ),
    );
  }
}
