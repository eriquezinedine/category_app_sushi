import 'dart:developer';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:take_sushi/core/core.dart';

part 'item_order.freezed.dart';
part 'item_order.g.dart';

@freezed
class ItemOrder with _$ItemOrder {
  factory ItemOrder({
    required Product product,
    Price? price,
    required int count,
  }) = _ItemOrder;

  factory ItemOrder.fromJson(Map<String, dynamic> json) =>
      _$ItemOrderFromJson(json);

  static addTotal(List<ItemOrder> orders) {
    try {
      double total = 0;

      for (var order in orders) {
        if (order.product.price != 0) {
          double p = order.product.price * order.count;
          total = total + p;
        } else {
          for (var price in order.product.prices) {
            double p = 0.0;
            p = price.price * price.count;
            total = total + p;
          }
        }
      }
      return total;
    } catch (e) {
      log('EEEP $e');
      return 0.0;
    }
  }

  static String msgAll(List<ItemOrder> orders) {
    try {
      String totalSmg = '*Takesushi ORDEN:* \n';
      double total = 0;

      for (var order in orders) {
        totalSmg += order.msg;
        if (order.product.price != 0) {
          double p = order.product.price * order.count;
          total = total + p;
        } else {
          for (var price in order.product.prices) {
            double p = 0.0;
            p = price.price * price.count;
            total = total + p;
          }
        }
      }
      return '$totalSmg\n *Total: S/$total*';
    } catch (e) {
      log('EEEP $e');
      return '';
    }
  }
}

extension ItemOrderX on ItemOrder {
  String get msg {
    // final product = this.product.name;
    final msgHeader = 'Nombre: ${product.name}';
    String pri = '';
    if (product.prices.isEmpty) {
      pri =
          '$pri (S/.${product.price} x $count ) => Total: S/${product.price * count}\n';
    }

    for (var price in product.prices) {
      // double p = 0.0;
      // p = price.price * price.count;
      // total = total + p;
      if (price.count != 0) {
        pri =
            '$pri${price.name} (S/.${price.price} x ${price.count} ) => Total: ${price.count * price.price}\n';
      }
    }

    return '$msgHeader\n$pri\n';
  }
}
