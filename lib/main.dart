import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:take_sushi/core/core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: SupabaseEndpoint.supabaseUrl,
    anonKey: SupabaseEndpoint.supabaseKey,
  );
  await Firebase.initializeApp();
  final client = Supabase.instance.client;
  final localRepository = LocalRepository();
  await localRepository.init();
  final authRepository = AuthRepository(client: client);
  final menuRepository = MenuRepository(client: client);
  final historyRepository = HistoryRepository(client: client);
  runApp(
    TakeSushiApp(
      iLocalRepository: localRepository,
      iAuth: authRepository,
      iMenu: menuRepository,
      iHistory: historyRepository,
    ),
  );
}
