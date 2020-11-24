import 'dart:async';

import 'package:theMealDB_app/model/item_model.dart';

import 'meals_api.dart';

class Repository {
  final mealsApi = MealsApi();

  Future<ItemModel> fetchAllMeals(String type) => mealsApi.fetchMeals(type);

  Future<ItemModel> fetchDetailMeals(String detail) =>
      mealsApi.fetchDetail(detail);

  Future<ItemModel> searchMeals(String name) => mealsApi.searchMeals(name);

  Future<ItemModel> searchCategories(String name) =>
      mealsApi.searchCategories();

  Future<ItemModel> fetchCategories(String category) =>
      mealsApi.fetchCategories(category);
}
