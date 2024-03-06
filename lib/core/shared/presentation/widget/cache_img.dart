import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedImg extends StatelessWidget {
  const CachedImg({
    super.key,
    required this.url,
    this.center = true,
    this.builder,
    this.errorHeight,
    this.imageError,
    this.color,
    this.height,
    this.width,
    this.fit,
    this.loaderWidget,
    this.borderRadius,
  });

  final String? url;
  final double? errorHeight;
  final bool center;
  final Widget Function(BuildContext, ImageProvider<Object>)? builder;
  final Widget? imageError;
  final Widget? loaderWidget;
  final Color? color;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    const loader = SizedBox(
      height: 86,
      width: 86,
      child: CircularProgressIndicator(
        strokeWidth: 1.5,
        color: Colors.black,
      ),
    );
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius ?? 0),
      child: CachedNetworkImage(
        fit: fit,
        height: height,
        width: width,
        color: color,
        imageUrl: url ?? '',
        placeholder: (_, __) =>
            loaderWidget ?? (center ? const Center(child: loader) : loader),
        imageBuilder: builder,
        errorWidget: (_, __, Object? ___) => Transform.scale(
          scale: 1,
          child: imageError ??
              Image.asset(
                'assets/img/empty.png',
                height: 86,
                width: 86,
                fit: BoxFit.cover,
              ),
        ),
      ),
    );
  }
}
