import 'package:flutter/material.dart';
import 'package:take_sushi/core/core.dart';
import 'package:take_sushi/features/features.dart';

class ContainerProducts extends StatelessWidget {
  const ContainerProducts({
    super.key,
    required this.products,
    this.onTapFavoriteAll,
  });

  final List<Product> products;
  final VoidCallback? onTapFavoriteAll;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      children: List.generate(products.length, (index) {
        final product = products[index];
        return Padding(
          padding: EdgeInsets.only(bottom: 8, top: index == 0 ? 8 : 0),
          child:
              ItemProduct(product: product, onTapFavoriteAll: onTapFavoriteAll),
        );
      }),
    );
  }
}
