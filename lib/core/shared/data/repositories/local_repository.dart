// ignore_for_file: unused_element

import 'dart:convert';

import 'package:hive_flutter/adapters.dart';
import 'package:take_sushi/core/core.dart';

class LocalRepository implements ILocalRepository {
  late final Box _localBox;
  static const String _localName = "Local-init";
  static const String _tokenKey = "token-key-;ñ";
  static const String _favoriteProduct = "favorite_product";
  static const String _ingredientKey = "ingredient_key";
  static const String _ordersKey = "orders_key";
  static const String _productUsed = "product_used";
  static const String _productResponse = "product_response";
  static const String _favoriteResponse = "favorite_response";
  static const String _usedResponse = "used_response";
  // static const String _influencerKey = "influencer_key";

  @override
  Future<void> init() async {
    await Hive.initFlutter();
    _localBox = await Hive.openBox<dynamic>(_localName);
  }

  T? _get<T>(String key) {
    return _localBox.get(key) as T?;
  }

  Map<String, dynamic>? _getData(String key) {
    final rawJson = _get<String?>(key);
    if (rawJson == null) return null;
    final map = jsonDecode(rawJson) as Map<String, dynamic>;
    return map;
  }

  Future<void> _delete(String key) {
    return _localBox.delete(key);
  }

  void _put(String key, dynamic value) {
    _localBox.put(key, value);
  }

  @override
  Stream<BoxEvent> get streamProductUsed => _localBox.watch(key: _productUsed);

  @override
  void deleteUser() {
    _delete(_tokenKey);
  }

  @override
  Future<User?> getUser() async {
    final data = await _get(_tokenKey);
    if (data == null) return null;
    final map = jsonDecode(data) as Map<String, dynamic>;
    return User.fromJson(map);
  }

  @override
  void setUser(User? user) {
    _put(_tokenKey, jsonEncode(user?.toJson()));
  }

  @override
  void deleteFavoriteProduct({required Product product}) {
    Map<String, dynamic>? map = _getData(_favoriteProduct);
    final key = product.id.toString();
    if (map == null) return;
    map.remove(key);
    _put(_favoriteProduct, jsonEncode(map));
  }

  @override
  void setFavoriteProduct({required Product product}) {
    final map = _getData(_favoriteProduct);
    final key = product.id.toString();
    if (map == null) {
      final data = {key: product};
      _put(_favoriteProduct, jsonEncode(data));
      return;
    }
    map[key] = product;
    _put(_favoriteProduct, jsonEncode(map));
  }

  @override
  Map<String, dynamic>? get getFavoriteProducts => _getData(_favoriteProduct);

  @override
  IngredientsResponse? get getIngredients {
    final data = _get(_ingredientKey);
    if (data == null) return null;
    final map = jsonDecode(data) as Map<String, dynamic>;
    return IngredientsResponse.fromJson(map);
  }

  @override
  void setIngredient(IngredientsResponse ingredients) {
    _put(_ingredientKey, jsonEncode(ingredients.toJson()));
  }

  @override
  Map<String, dynamic>? get getOrders {
    final map = _getData(_ordersKey);
    if (map == null) return null;
    return map;
  }

  @override
  Map<String, dynamic>? get getProductsUsed => _getData(_productUsed);

  @override
  void setOrder(OrderRequest orderRequest) {
    final map = _getData(_ordersKey);
    final key = orderRequest.date.toString();
    if (map == null) {
      final data = {key: orderRequest};
      _put(_ordersKey, jsonEncode(data));
      return;
    }
    map[key] = orderRequest;
    _put(_ordersKey, jsonEncode(map));
  }

  @override
  void setProductUsed({required Product product}) {
    final map = _getData(_productUsed);
    final key = product.id.toString();
    if (map == null) {
      final data = {key: product};
      _put(_productUsed, jsonEncode(data));
      return;
    }
    if (map.containsKey(key)) return;
    map[key] = product;
    _put(_productUsed, jsonEncode(map));
  }

  @override
  ProductResponse? get getProductResponse {
    final data = _get(_ingredientKey);
    if (data == null) return null;
    final map = jsonDecode(data) as Map<String, dynamic>;
    return ProductResponse.fromJson(map);
  }

  @override
  void setProduct({required ProductResponse response}) {
    _put(_productResponse, jsonEncode(response.toJson()));
  }

  @override
  FavoritesAllResponse? get getFavoriteResponse {
    final data = _get(_favoriteResponse);
    if (data == null) return null;
    final map = jsonDecode(data) as Map<String, dynamic>;
    return FavoritesAllResponse.fromJson(map);
  }

  @override
  FavoritesAllResponse? get getUsedResponse {
    final data = _get(_usedResponse);
    if (data == null) return null;
    final map = jsonDecode(data) as Map<String, dynamic>;
    return FavoritesAllResponse.fromJson(map);
  }

  @override
  void setFavoriteResponse({required FavoritesAllResponse response}) {
    _put(_favoriteResponse, jsonEncode(response.toJson()));
  }

  @override
  void setUsedResponse({required FavoritesAllResponse response}) {
    _put(_usedResponse, jsonEncode(response.toJson()));
  }
}
