import 'package:take_sushi/core/core.dart';

abstract class IMenu {
  Future<ProductResponse> getProduct();
  Future<bool> addFavorite({required int idProduct, required String userEmail});
  Future<bool> usedProduct({required int idProduct, required String userEmail});
  Future<bool> removeFavorite(
      {required int idProduct, required String userEmail});
  Future<FavoritesAllResponse> getAllFavorite(String userEmail);
  Future<IngredientsResponse> getIngredientAll();
  Future<FavoritesAllResponse> getAllUsedProduct(String userEmail);
}
