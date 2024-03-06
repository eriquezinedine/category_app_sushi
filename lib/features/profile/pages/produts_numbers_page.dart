import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:take_sushi/core/core.dart';
import 'package:take_sushi/features/features.dart';
import 'package:take_sushi/features/profile/profile.dart';

class ProductsNumbersPage extends StatelessWidget {
  const ProductsNumbersPage({
    super.key,
    required this.products,
    required this.title,
  });

  final List<Product> products;
  final String title;

  @override
  Widget build(BuildContext context) {
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
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Palette.black,
          ),
        ),
        centerTitle: true,
      ),
      body: products.isEmpty
          ? const Empty(
              text: 'La busqueda esta vacia, como el corazón de ella 🥲',
            )
          : Column(
              children: [
                Expanded(
                  child: ContainerProducts(
                    products: products,
                    onTapFavoriteAll: () {
                      context.read<ProfileCubit>().getData();
                    },
                  ),
                ),
              ],
            ),
    );
  }
}
