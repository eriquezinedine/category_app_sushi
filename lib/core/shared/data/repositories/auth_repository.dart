import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:take_sushi/core/core.dart' as core;
import 'package:take_sushi/core/shared/domain/repositories/i_auth.dart';

class AuthRepository extends IAuth {
  AuthRepository({required this.client});

  final SupabaseClient client;
  static String table = 'user';
  @override
  Future<core.User?> getUser() {
    return Future.value(null);
  }

  @override
  Future<bool> setUser(core.User user) async {
    final SupabaseClient? response =
        await client.from(table).insert(user.toJson());
    return response == null;
  }
}
