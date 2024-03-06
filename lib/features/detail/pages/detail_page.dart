import 'package:cherry_toast/cherry_toast.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:take_sushi/core/core.dart';
import 'package:take_sushi/features/detail/cubit/detail_cubit.dart';
import 'package:take_sushi/features/detail/widgets/counter_price_widget.dart';
import 'package:take_sushi/features/features.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    super.key,
    required this.product,
    this.onTapFavoriteAll,
    this.isEnable = true,
  });

  final Product product;
  final VoidCallback? onTapFavoriteAll;
  final bool isEnable;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return BlocProvider(
      create: (_) => DetailCubit(
        product: product,
        iMenu: RepositoryProvider.of(context),
        iLocalRepository: RepositoryProvider.of(context),
      )..initial(product),
      child: BlocListener<DetailCubit, DetailState>(
        listenWhen: (p, c) => p.favoriteStatus != c.favoriteStatus,
        listener: (context, state) {
          if (state.favoriteStatus == FavoriteStatus.loaded) {
            if (onTapFavoriteAll != null) {
              onTapFavoriteAll!.call();
            }
          }
        },
        child: _Body(
          product: product,
          size: size,
          onTapFavoriteAll: onTapFavoriteAll,
          isEnable: isEnable,
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.product,
    required this.size,
    this.onTapFavoriteAll,
    required this.isEnable,
  });

  final Product product;
  final Size size;
  final VoidCallback? onTapFavoriteAll;
  final bool isEnable;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DetailCubit>();
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => context.pop,
          child: IconButton(
              onPressed: () => context.pop,
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              )),
        ),
        actions: [
          BlocBuilder<DetailCubit, DetailState>(
            buildWhen: (p, c) =>
                p.isFavorite != c.isFavorite ||
                p.favoriteStatus != c.favoriteStatus,
            builder: (context, state) {
              return ShimmerWrap(
                enabled: state.favoriteStatus == FavoriteStatus.loading,
                child: IconButton(
                  onPressed: () async {
                    Connectivity().checkConnectivity().then((value) {
                      if (value == ConnectivityResult.none) {
                        CherryToast.error(
                          toastDuration: const Duration(milliseconds: 2500),
                          title: const Text(
                            "No hay internet",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          action: const Text(
                            "Para guardar tus favoritos tienes que tener internet.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            ),
                          ),
                        ).show(context);
                        return;
                      }
                    });

                    state.isFavorite
                        ? cubit.removeFavorite()
                        : cubit.addFavorite();
                  },
                  icon: Icon(
                    state.isFavorite ? Icons.favorite : Icons.favorite_border,
                    size: 28,
                    color:
                        state.isFavorite ? Palette.primaryColor : Palette.black,
                  ),
                ),
              );
            },
          ),
          const SizedBox(
            width: 8,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: '${product.name}${product.image}',
              child: Stack(
                children: [
                  CachedImg(
                    height: size.height * .55,
                    errorHeight: size.height * .55,
                    width: size.width,
                    url: product.image,
                    fit: BoxFit.cover,
                  ),
                  if (!isEnable)
                    const Positioned(
                      bottom: 8,
                      left: 8,
                      child: Tag(
                        isSelected: true,
                        index: 0,
                        color: Colors.grey,
                        name: 'Consumido',
                        textColor: Colors.white,
                        fontSize: 14,
                      ),
                    )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const Gap(16),
                  if (product.description.isNotEmpty) ...[
                    Text(
                      product.description,
                      style: const TextStyle(
                        color: Palette.disableText,
                        fontSize: 16,
                      ),
                    ),
                    const Gap(8),
                  ],
                  TabBarPrices(product: product),
                  IngredientWidget(ingredients: product.ingredients),
                  BlocSelector<DetailCubit, DetailState, double>(
                    selector: (state) {
                      return state.price;
                    },
                    builder: (context, price) {
                      return CounterPriceWidget(
                        price: price,
                      );
                    },
                  ),
                  const Gap(16),
                  Button(
                    onTap: () {
                      context.read<ShoppingCubit>().addProductShopping(
                            ItemOrder(
                              product: product,
                              price: cubit.state.selectedPrice,
                              count: cubit.state.count,
                            ),
                          );
                    },
                    iconData: Icons.add_shopping_cart_sharp,
                    text: 'Agregar al carrito',
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
