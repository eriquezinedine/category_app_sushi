import 'dart:developer';

import 'package:cherry_toast/cherry_toast.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:gap/gap.dart';
import 'package:take_sushi/core/core.dart';
import 'package:take_sushi/features/features.dart';
import 'package:take_sushi/features/shopping/view/body_shopping.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({super.key});
  static double spacerEmpty = 90.0;
  static double spacerNotEmpty = 60.0;
  static double spacerNotIngredient = 25.0;

  static double getWidth(ItemOrder itemOrder, BuildContext context) {
    return MediaQuery.sizeOf(context).width -
        40 -
        22 -
        (itemOrder.product.prices.isEmpty ? spacerEmpty : spacerNotEmpty) -
        16;
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ShoppingCubit>();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () => context.pop,
          child: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Palette.black,
          ),
        ),
        title: const Text(
          'Carrito de compras',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Palette.black,
          ),
        ),
        centerTitle: true,
      ),
      body: BlocConsumer<ShoppingCubit, ShoppingState>(
        listener: (context, state) {
          if (state.status == ShoppingStatus.error) {
            CherryToast.error(
              toastDuration: const Duration(milliseconds: 2500),
              title: const Text(
                "ERROR",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              action: const Text(
                "Vuelve intentarlo mas tarde. servidor en mantenimiento.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                ),
              ),
            ).show(context);
          }
        },
        builder: (context, state) {
          log('Zineee $state');

          final size = MediaQuery.sizeOf(context);
          return SizedBox(
            height: size.height - kToolbarHeight,
            width: MediaQuery.sizeOf(context).width,
            child: Column(
              children: [
                Expanded(
                  child: state.status == ShoppingStatus.loading
                      ? const Center(
                          child: SizedBox.square(
                              dimension: 24,
                              child: CircularProgressIndicator()),
                        )
                      : BodyShopping(
                          orders: state.orders,
                          // isShoppingPage: true,
                        ),
                ),
                Container(
                  width: size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 16)
                      .copyWith(bottom: 16),
                  child: Column(
                    children: [
                      Container(
                        width: size.width,
                        height: 2,
                        color: Palette.disableText.withOpacity(.35),
                      ),
                      const Gap(24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const TitlePice(text: 'Total'),
                          TitlePice(text: 'S/ ${cubit.addTotal(state.orders)}')
                        ],
                      ),
                      const Gap(8),
                      Button(
                        onTap: () {
                          Connectivity().checkConnectivity().then((value) {
                            if (value == ConnectivityResult.none) {
                              CherryToast.error(
                                toastDuration:
                                    const Duration(milliseconds: 3500),
                                title: const Text(
                                  "No hay internet",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                action: const Text(
                                  "Por el momento, no podrás guardar tus datos hasta que tengas conexión a Internet.",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                  ),
                                ),
                              ).show(context);
                              return;
                            }
                          });
                          if (state.orders.isEmpty) {
                            CherryToast.warning(
                              toastDuration: const Duration(milliseconds: 2500),
                              title: const Text(
                                "Vacio",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              action: const Text(
                                "Primero selecciona productos",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                ),
                              ),
                            ).show(context);
                            return;
                          }
                          cubit.saveOrder();
                        },
                        text: 'Guardar',
                      ),
                      Button(
                        onTap: () {
                          CherryToast.info(
                            toastDuration: const Duration(milliseconds: 2500),
                            title: const Text(
                              "Proximamente",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            action: const Text(
                              "XD cuando tenga tiempo lo termino en la version 2",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                              ),
                            ),
                          ).show(context);
                        },
                        color: Palette.colors[1],
                        iconData: PhosphorIcons.whatsapp_logo,
                        text: 'Guardar y Solicitar',
                        textColor: Palette.black,
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
