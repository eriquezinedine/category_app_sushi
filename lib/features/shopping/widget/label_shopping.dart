import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:take_sushi/core/core.dart';
import 'package:take_sushi/features/features.dart';

class LabelShopping extends StatelessWidget {
  const LabelShopping({
    super.key,
    required this.itemOrder,
    required this.isShoppingPage,
  });

  final ItemOrder itemOrder;
  final bool isShoppingPage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Text(
            itemOrder.product.name,
            maxLines: 1,
            style: const TextStyle(
              color: Palette.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        const Gap(8),
        SizedBox(
          width: ShoppingPage.getWidth(itemOrder, context),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                itemOrder.product.ingredients.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: Tag(
                    index: index,
                    name: itemOrder.product.ingredients[index].name,
                    isSelected: false,
                  ),
                ),
              ),
            ),
          ),
        ),
        if (itemOrder.product.prices.isEmpty)
          Column(
            children: [
              const Gap(8),
              SizedBox(
                width: ShoppingPage.getWidth(itemOrder, context),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (isShoppingPage)
                      Counter(
                        onTapAdd: () {
                          context.read<ShoppingCubit>().addProductShopping(
                                ItemOrder(
                                  product: itemOrder.product,
                                  price: null,
                                  count: 0,
                                ),
                              );
                        },
                        onTapRemove: () {
                          context.read<ShoppingCubit>().removeShopping(
                                ItemOrder(
                                  product: itemOrder.product,
                                  price: null,
                                  count: 0,
                                ),
                              );
                        },
                        count: itemOrder.count,
                      )
                    else
                      TitlePice(text: 'Cantidad: ${itemOrder.count}'),
                    TitlePice(
                      text: '${itemOrder.product.price * itemOrder.count}',
                    ),
                    // Text('Precio: ${itemOrder.product.price}',
                    //     style: const TextStyle(fontSize: 8)),
                    // Text('contador: ${itemOrder.count}',
                    //     style: const TextStyle(fontSize: 8)),
                  ],
                ),
              )
            ],
          )
      ],
    );
  }
}
