import 'package:hive_flutter/adapters.dart';
import 'package:take_sushi/core/core.dart';

abstract class ILocalRepository {
  Future<void> init();
  Future<User?> getUser();
  void setUser(User? token);
  void setFavoriteProduct({required Product product});
  void deleteFavoriteProduct({required Product product});
  void deleteUser();
  Map<String, dynamic>? get getFavoriteProducts;
  void setIngredient(IngredientsResponse ingredients);
  IngredientsResponse? get getIngredients;

  void setOrder(OrderRequest orderRequest);
  Map<String, dynamic>? get getOrders;
  void setProductUsed({required Product product});
  Map<String, dynamic>? get getProductsUsed;

  void setProduct({required ProductResponse response});
  ProductResponse? get getProductResponse;

  void setFavoriteResponse({required FavoritesAllResponse response});
  FavoritesAllResponse? get getFavoriteResponse;

  void setUsedResponse({required FavoritesAllResponse response});
  FavoritesAllResponse? get getUsedResponse;

  Stream<BoxEvent> get streamProductUsed;
}
