import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:take_sushi/core/core.dart';
import 'package:take_sushi/features/features.dart';

class ItemProduct extends StatelessWidget {
  const ItemProduct({
    super.key,
    required this.product,
    this.onTapFavoriteAll,
  });

  final Product product;
  final VoidCallback? onTapFavoriteAll;

  @override
  Widget build(BuildContext context) {
    return _Body(product: product, onTapFavoriteAll: onTapFavoriteAll);
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.product,
    required this.onTapFavoriteAll,
  });

  final Product product;
  final VoidCallback? onTapFavoriteAll;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<MenuBloc, MenuState, Map<String, dynamic>>(
      selector: (state) {
        return state.usedProduct;
      },
      builder: (context, usedProduct) {
        final isEnable = usedProduct.isEnable(product.id.toString());
        if (!isEnable) {
          log('Es enableeee ${product.name}');
        }
        return GestureDetector(
          onTap: () {
            context.navigate(
              DetailPage(
                product: product,
                onTapFavoriteAll: onTapFavoriteAll,
                isEnable: isEnable,
              ),
            );
          },
          child: Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: isEnable ? Colors.white : Colors.grey,
              borderRadius: const BorderRadius.all(
                Radius.circular(14),
              ),
            ),
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                isEnable
                    ? Colors.transparent
                    : Colors.grey, // Puedes ajustar el color del filtro aquí
                BlendMode.saturation,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: '${product.name}${product.image}',
                    child: CachedImg(
                      width: 100,
                      height: 86,
                      url: product.image ?? 'error.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 8),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 6,
                                child: Text(
                                  product.name,
                                  maxLines: 1,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    overflow: TextOverflow.ellipsis,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  'S/ ${product.price == 0 ? '+${product.prices.length}' : product.price}',
                                  textAlign: TextAlign.end,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Gap(16),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                product.ingredients.length,
                                (i) => Container(
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 2)
                                          .copyWith(left: i == 0 ? 0 : 2),
                                  child: Tag(
                                      isSelected: true,
                                      index: i,
                                      name: product.ingredients[i].name),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
