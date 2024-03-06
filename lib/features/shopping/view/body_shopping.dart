import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:take_sushi/core/core.dart';
import 'package:take_sushi/features/features.dart';

class BodyShopping extends StatelessWidget {
  const BodyShopping({
    super.key,
    required this.orders,
    this.isShoppingPage = true,
  });
  final List<ItemOrder> orders;
  final bool isShoppingPage;
  @override
  Widget build(BuildContext context) {
    if (orders.isEmpty) {
      return const Empty(text: 'No hay nada como el corazón de ella 🥲');
    }
    return ListView(
      children: [
        const Gap(16),
        Column(
          children: List.generate(orders.length, (index) {
            final itemOrder = orders[index];

            final size = itemOrder.product.ingredients.isEmpty
                ? ShoppingPage.spacerNotIngredient
                : itemOrder.product.prices.isEmpty
                    ? ShoppingPage.spacerEmpty
                    : ShoppingPage.spacerNotEmpty;

            return Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.symmetric(horizontal: 20)
                      .copyWith(bottom: 8),
                  width: MediaQuery.sizeOf(context).width - 40,
                  decoration: BoxDecoration(
                      // color: Colors.blueAccent,
                      gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.white,
                            Palette.background,
                          ]),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Palette.disableText.withOpacity(.3),
                          offset: const Offset(0, 5),
                        )
                      ]),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: size,
                            height: size,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: CachedImg(
                              url: itemOrder.product.image,
                            ),
                          ),
                          const Gap(8),
                          LabelShopping(
                            itemOrder: itemOrder,
                            isShoppingPage: isShoppingPage,
                          ),
                        ],
                      ),
                      if (itemOrder.product.prices.isNotEmpty) ...[
                        const Gap(4),
                        SizedBox(
                          child: Column(
                            children: List.generate(
                              itemOrder.product.prices.length,
                              (i) {
                                final price = itemOrder.product.prices[i];
                                if (price.count < 1) {
                                  return const SizedBox.shrink();
                                }

                                return Padding(
                                  padding: EdgeInsets.only(top: i == 0 ? 0 : 8),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 35,
                                        width: price.name.length > 6
                                            ? 105
                                            : ShoppingPage.spacerNotEmpty,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Palette.black,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Text(
                                          '${price.name} ',
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                      const Gap(8),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            if (isShoppingPage)
                                              Counter(
                                                onTapAdd: () {
                                                  context
                                                      .read<ShoppingCubit>()
                                                      .addProductShopping(
                                                        ItemOrder(
                                                          product:
                                                              itemOrder.product,
                                                          price: price,
                                                          count: 1,
                                                        ),
                                                      );
                                                },
                                                onTapRemove: () {
                                                  context
                                                      .read<ShoppingCubit>()
                                                      .removeShopping(
                                                        ItemOrder(
                                                          product:
                                                              itemOrder.product,
                                                          price: price,
                                                          count: 1,
                                                        ),
                                                      );
                                                },
                                                count: price.count,
                                              )
                                            else
                                              TitlePice(
                                                  text:
                                                      'Cantidad: ${price.count}'),
                                            Row(
                                              children: [
                                                TitlePice(
                                                  text:
                                                      'S/ ${price.price * price.count}',
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        )
                      ]
                    ],
                  ),
                ),
              ],
            );
          }),
        )
      ],
    );
  }
}
