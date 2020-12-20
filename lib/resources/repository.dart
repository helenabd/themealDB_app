import 'dart:async';

import 'package:theMealDB_app/model/categories_item_model.dart';
import 'package:theMealDB_app/model/category_model.dart';
import 'package:theMealDB_app/model/item_model.dart';

import 'meals_api.dart';

class Repository {
  final mealsApi = MealsApi();

  Future<ItemModel> fetchAllMeals(String type) => mealsApi.fetchMeals(type);

  Future<ItemModel> fetchDetailMeals(int id) =>
      mealsApi.fetchDetail(id.toString());

  Future<ItemModel> searchMeals(String name) => mealsApi.searchMeals(name);

  Future<ItemModel> randomMeals() => mealsApi.randomMeals();

  Future<CategoryModel> searchCategories() => mealsApi.searchCategories();

  Future<CategoryItemModel> fetchCategories(String category) =>
      mealsApi.fetchCategories(category);
}
