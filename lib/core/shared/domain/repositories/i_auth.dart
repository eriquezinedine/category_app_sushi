import 'package:take_sushi/core/core.dart';

abstract class IAuth {
  Future<User?> getUser();
  Future<bool> setUser(User user);
}
