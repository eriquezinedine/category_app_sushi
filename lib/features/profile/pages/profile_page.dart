import 'package:cherry_toast/cherry_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:take_sushi/core/core.dart';
import 'package:take_sushi/features/features.dart';
import 'package:take_sushi/features/profile/pages/history_page.dart';
import 'package:take_sushi/features/profile/profile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: BlocProvider.of<ProfileCubit>(context)..getUser(),
      child: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      buildWhen: (p, c) => p.user != c.user || p.favorites != c.favorites,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HeaderProfile(user: state.user),
              const Gap(8),
              Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                    onTap: () => context.navigate(
                      ProductsNumbersPage(
                        products: state.favorites,
                        title: 'Mis Favoritos',
                      ),
                    ),
                    child: NumberProfile(
                      title: 'Mis Favoritos',
                      number: state.favorites.length,
                    ),
                  )),
                  const SizedBox(width: 8),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        context.navigate(
                          ProductsNumbersPage(
                            products: state.dones,
                            title: 'Consumidos',
                          ),
                        );
                      },
                      child: NumberProfile(
                        title: 'Consumidos',
                        number: state.dones.length,
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(8),
              if (state.orders.isNotEmpty) ...[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const TitlePice(
                      text: 'Historial',
                      fontSize: 18,
                    ),
                    IconButton(
                      onPressed: () {
                        CherryToast.warning(
                          toastDuration: const Duration(milliseconds: 8000),
                          title: const Text(
                            "Recordar",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          action: const Text(
                            "Tu historial se guarda localmente y será eliminado si decides desinstalar la aplicación.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ).show(context);
                      },
                      icon: const Icon(
                        Icons.info,
                        color: Palette.primaryColor,
                      ),
                    )
                  ],
                ),
                const Gap(8),
                SingleChildScrollView(
                  clipBehavior: Clip.none,
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(state.orders.length, (index) {
                      final historyOrders =
                          state.orders[state.orders.length - 1 - index];
                      return GestureDetector(
                        onTap: () => context.navigate(
                          HistoryPage(
                            orders: historyOrders.orders,
                            title:
                                '${historyOrders.date.dMMMM} - ${historyOrders.date.time}',
                            leadingText:
                                'S/ ${ItemOrder.addTotal(historyOrders.orders)}',
                          ),
                        ),
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          margin: EdgeInsets.only(left: index == 0 ? 0 : 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.15),
                                spreadRadius: 3,
                                blurRadius: 7,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          width: 200,
                          height: 150,
                          child: Column(
                            children: [
                              Expanded(
                                  child: Stack(
                                children: [
                                  CachedImg(
                                    height: 150,
                                    width: 200,
                                    url: historyOrders.orders[0].product.image,
                                    fit: BoxFit.cover,
                                  ),
                                  Positioned(
                                    top: 8,
                                    left: 8,
                                    child: CircleAvatar(
                                      radius: 24,
                                      backgroundColor: Palette.black,
                                      child: TitlePice(
                                        text:
                                            'S/ ${ItemOrder.addTotal(historyOrders.orders)}',
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                              Container(
                                height: 30,
                                color: Palette.black,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TitlePice(
                                      text: state.orders[index].date.dMMMM,
                                      color: Colors.white,
                                    ),
                                    TitlePice(
                                      text: state.orders[index].date.time,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                )
              ]
            ],
          ),
        );
      },
    );
  }
}
