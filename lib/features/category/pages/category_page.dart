import 'package:cherry_toast/cherry_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:take_sushi/core/core.dart';
import 'package:take_sushi/features/features.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<MenuBloc>();
    final state = bloc.state;
    return DefaultTabController(
      length: state.categorys.length,
      child: Scaffold(
        backgroundColor: Palette.background,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Categorias',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            CherryToast.warning(
                              toastDuration: const Duration(seconds: 15),
                              title: const Text(
                                "Importante",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              action: const Text(
                                "Debido a limitaciones de tiempo, no he podido incluir todas las categorías. Es esencial recordar que esta aplicación no pertenece a la empresa, sino que fue creada como un proyecto personal o hobby. ¡Espero que la disfruten! 😁",
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
                    GestureDetector(
                      onTap: () => context.navigate(const ShoppingPage()),
                      child: Row(
                        // clipBehavior: Clip.none,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              const CircleAvatar(
                                radius: 10,
                                backgroundColor: Palette.primaryColor,
                              ),
                              BlocSelector<ShoppingCubit, ShoppingState,
                                  List<ItemOrder>>(
                                selector: (state) {
                                  return state.orders;
                                },
                                builder: (context, orders) {
                                  return Text(
                                    orders.length > 99
                                        ? '99+'
                                        : '${orders.length}',
                                    style: const TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),
                                  );
                                },
                              )
                            ],
                          ),
                          const Icon(Icons.add_shopping_cart),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: ListTabCategory(),
              ),
              Expanded(
                  child: TabBarView(
                children: List.generate(
                  state.categorys.length,
                  (index) {
                    final key = state.categorys[index];
                    final products = state.menu[key.id.toString()];
                    return ContainerProducts(
                      products: products ?? [],
                    );
                  },
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
