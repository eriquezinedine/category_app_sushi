import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:take_sushi/core/core.dart';

class ShimmerWrap extends StatelessWidget {
  const ShimmerWrap({
    super.key,
    this.enabled = true,
    required this.child,
    this.height,
    this.width,
    this.baseColor,
    this.highlightColor,
  });

  final bool enabled;
  final Widget child;
  final double? height;
  final double? width;
  final Color? baseColor;
  final Color? highlightColor;

  @override
  Widget build(BuildContext context) {
    if (!enabled) return child;
    return Shimmer.fromColors(
      enabled: enabled,
      baseColor: baseColor ?? Palette.disableText.withOpacity(.3),
      highlightColor: highlightColor ?? Palette.disableText,
      child: SizedBox(
        height: height,
        width: width,
        child: child,
      ),
    );
  }
}
