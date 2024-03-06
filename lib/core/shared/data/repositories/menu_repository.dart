import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:take_sushi/core/core.dart';

class MenuRepository extends IMenu {
  MenuRepository({
    required this.client,
  });

  final SupabaseClient client;
  static String table = 'product';
  static String tableFavorite = 'favorite';
  static String tableIngredient = 'ingredients';
  static String tableTesters = 'testers';

  @override
  Future<ProductResponse> getProduct() async {
    final response = await client.rpc('getmenu');
    final data = {'products': response};
    final productResponse = ProductResponse.fromJson(data);
    return productResponse;
  }

  @override
  Future<bool> addFavorite(
      {required int idProduct, required String userEmail}) async {
    final response = await client
        .from(tableFavorite)
        .insert({'email_key': userEmail, 'id_product': idProduct});
    final isFavorite = response == null;

    return isFavorite;
  }

  @override
  Future<bool> usedProduct(
      {required int idProduct, required String userEmail}) async {
    final response = await client
        .from(tableTesters)
        .insert({'email_key': userEmail, 'id_product': idProduct});
    final isFavorite = response == null;

    return isFavorite;
  }

  @override
  Future<bool> removeFavorite(
      {required int idProduct, required String userEmail}) async {
    final response = await client
        .from(tableFavorite)
        .delete()
        .match({'email_key': userEmail, 'id_product': idProduct});
    final isFavorite = response == null;

    return isFavorite;
  }

  @override
  Future<FavoritesAllResponse> getAllFavorite(String userEmail) async {
    final response = await client
        .from(tableFavorite)
        .select()
        .match({'email_key': userEmail});
    final data = {'favorites': response};
    return FavoritesAllResponse.fromJson(data);
  }

  @override
  Future<FavoritesAllResponse> getAllUsedProduct(String userEmail) async {
    final response = await client
        .from(tableTesters)
        .select()
        .match({'email_key': userEmail});
    final data = {'favorites': response};
    return FavoritesAllResponse.fromJson(data);
  }

  @override
  Future<IngredientsResponse> getIngredientAll() async {
    final response = await client.from(tableIngredient).select();
    final data = {'ingredients': response};
    return IngredientsResponse.fromJson(data);
    // return FavoritesAllResponse.fromJson(data);
  }
}
