import 'package:take_sushi/core/core.dart';

abstract class IHistory {
  Future<List<OrderRequest>> getHistories(String userEmail);
  Future<void> saveHistory(
      {required OrderRequest body, required String userEmail});
}
