import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:take_sushi/core/core.dart';
import 'package:take_sushi/features/features.dart';
import 'package:take_sushi/features/search/pages/search_result_page.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          SearchCubit(iLocalRepository: RepositoryProvider.of(context))..init(),
      child: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SearchCubit>();
    final bloc = context.read<MenuBloc>();
    return Scaffold(
      backgroundColor: Palette.background,
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView(
            controller: cubit.pageController,
            children: const [
              SearchSelectedPage(),
              SearchResultPage(),
            ],
          ),
          Positioned(
            bottom: 16,
            child: GestureDetector(
              onTap: () {
                cubit.searchProduct(bloc.state.products, bloc.state.menu);
              },
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 8),
                width: MediaQuery.sizeOf(context).width * .8,
                decoration: BoxDecoration(
                  color: Palette.primaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'Buscar producto',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
