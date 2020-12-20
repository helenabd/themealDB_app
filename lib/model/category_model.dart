import 'package:flutter/foundation.dart';

class CategoryModel with ChangeNotifier {
  List<Category> _categories;

  // CategoryModel(this._categories);

  CategoryModel.fromJson(Map<String, dynamic> json) {
    if (json['categories'] != null) {
      _categories = new List<Category>();
      json['categories'].forEach((v) {
        _categories.add(new Category.fromJson(v));
      });
    }
  }

  List<Category> get categories {
    return [..._categories];
  }
}

class Category {
  String idCategory;
  String strCategory;
  String strCategoryThumb;
  String strCategoryDescription;

  Category({
    this.idCategory,
    this.strCategory,
    this.strCategoryThumb,
    this.strCategoryDescription,
  });

  Category.fromJson(Map<String, dynamic> json) {
    idCategory = json['idCategory'];
    strCategory = json['strCategory'];
    strCategoryThumb = json['strCategoryThumb'];
    strCategoryDescription = json['strCategoryDescription'];
  }
}
