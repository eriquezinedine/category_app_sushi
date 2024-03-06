import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:take_sushi/core/core.dart';
import 'package:take_sushi/core/shared/domain/repositories/i_history.dart';

part 'shopping_cubit.freezed.dart';
part 'shopping_state.dart';

class ShoppingCubit extends Cubit<ShoppingState> {
  ShoppingCubit(
      ILocalRepository iLocalRepository, IMenu iMenu, IHistory iHistory)
      : _iLocalRepository = iLocalRepository,
        _iHistory = iHistory,
        _iMenu = iMenu,
        super(const ShoppingState());

  final ILocalRepository _iLocalRepository;
  final IMenu _iMenu;
  final IHistory _iHistory;

  void saveOrder() {
    emit(state.copyWith(status: ShoppingStatus.loading));
    try {
      final body = OrderRequest(date: DateTime.now(), orders: state.orders);
      _iLocalRepository.setOrder(body);
      final map = _iLocalRepository.getProductsUsed ?? {};
      _iLocalRepository.getUser().then((value) {
        _iHistory.saveHistory(
            body: body, userEmail: value?.email ?? 'Error@gmail.com');

        for (var order in state.orders) {
          if (!map.containsKey(order.product.id.toString()) && value != null) {
            _iMenu.usedProduct(
                idProduct: order.product.id, userEmail: value.email);
            _iLocalRepository.setProductUsed(product: order.product);
          }
        }
        emit(
          state.copyWith(
            orders: [],
            total: 0,
            status: ShoppingStatus.loaded,
          ),
        );
      });
    } catch (e) {
      log('ZINED ERROR $e');
      emit(state.copyWith(status: ShoppingStatus.error));
    }
  }

  double addTotal(List<ItemOrder> orders) => ItemOrder.addTotal(orders);

  void addProductShopping(ItemOrder order) {
    List<ItemOrder> orders = [...state.orders];
    final index = orders.indexWhere(
      (element) => element.product.id == order.product.id,
    );
    if (index == -1) {
      if (order.price != null) {
        final customOrder = order.copyWith(
            product: order.product.copyWith(
          prices: order.product.prices
              .map((e) =>
                  e.id == order.price?.id ? e.copyWith(count: order.count) : e)
              .toList(),
        ));
        orders.add(customOrder);
      } else {
        orders.add(order);
      }
    } else {
      if (order.price == null) {
        orders[index] = orders[index].copyWith(
            count: orders[index].count + (order.count == 0 ? 1 : order.count));
      } else {
        final prices = orders[index].product.prices.map((e) {
          log('porque ${e.name} - ${e.id} ===> ${order.price?.name} - ${order.price?.id}');
          if (e.id == order.price?.id) {
            return e.copyWith(
                count: e.count + (order.count == 0 ? 1 : order.count));
          }
          return e;
        }).toList();

        orders[index] = orders[index]
            .copyWith(product: orders[index].product.copyWith(prices: prices));
      }
    }
    emit(state.copyWith(
      orders: orders,
    ));
  }

  void removeShopping(ItemOrder order) {
    List<ItemOrder> orders = [...state.orders];
    final index = orders.indexWhere(
      (element) => element.product.id == order.product.id,
    );
    int totalCount = 0;
    if (index != -1) {
      if (order.price == null) {
        final count = orders[index].count - 1;
        orders[index] = orders[index].copyWith(count: count < 0 ? 0 : count);
        totalCount += count < 0 ? 0 : count;
      } else {
        final prices = orders[index].product.prices.map((e) {
          log('porque ${e.name} - ${e.id} ===> ${order.price?.name} - ${order.price?.id}');
          if (e.id == order.price?.id) {
            final count2 = e.count - 1;
            totalCount = count2 < 0 ? 0 : count2;
            return e.copyWith(count: count2 < 0 ? 0 : count2);
          }
          return e;
        }).toList();

        orders[index] = orders[index]
            .copyWith(product: orders[index].product.copyWith(prices: prices));
      }

      for (var price in orders[index].product.prices) {
        totalCount += price.count;
      }

      if (totalCount == 0) {
        orders.removeAt(index);
      }
    }
    emit(state.copyWith(
      orders: orders,
    ));
  }
}
