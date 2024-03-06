import 'dart:developer';

import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:take_sushi/core/core.dart';
import 'package:take_sushi/core/shared/domain/repositories/i_history.dart';

class HistoryRepository extends IHistory {
  HistoryRepository({required this.client});
  static String table = 'history';
  final SupabaseClient client;
  @override
  Future<List<OrderRequest>> getHistories(String userEmail) async {
    final List<dynamic> data =
        await client.from(table).select('body').match({'email_key': userEmail});
    List<OrderRequest> list = [];
    for (var element in data) {
      list.add(OrderRequest.fromJson(element['body']));
    }
    log('Tamare que $list');
    return list;
  }

  @override
  Future<void> saveHistory(
      {required OrderRequest body, required String userEmail}) async {
    try {
      await client.from(table).insert({'email_key': userEmail, 'body': body});
    } catch (e) {
      log('Error $e');
    }
  }
}
