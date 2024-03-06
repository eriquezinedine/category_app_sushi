import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({
    super.key,
    required this.path,
    required this.text,
    required this.onTap,
    this.isLoading = false,
  });

  final String path;
  final String text;
  final VoidCallback onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: GestureDetector(
        onTap: () {
          if (!isLoading) onTap();
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(.5),
                    offset: const Offset(0, 3),
                    blurRadius: 3,
                    blurStyle: BlurStyle.outer)
              ]),
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (!isLoading) ...[
                SvgPicture.asset(
                  height: 24,
                  path,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(text),
              ],
              if (isLoading)
                const SizedBox.square(
                  dimension: 24,
                  child: CircularProgressIndicator(),
                )
            ],
          ),
        ),
      ),
    );
  }
}
