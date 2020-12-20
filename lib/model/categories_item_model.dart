class CategoryItemModel {
  List<CategoriesItem> categoriesItem;

  CategoryItemModel({this.categoriesItem});

  CategoryItemModel.fromJson(Map<String, dynamic> json) {
    if (json['meals'] != null) {
      categoriesItem = new List<CategoriesItem>();
      json['meals'].forEach((v) {
        categoriesItem.add(new CategoriesItem.fromJson(v));
      });
    }
  }

  // List<CategoriesItem> get categoriesItem {
  //   return [..._categoriesItem];
  // }
}

class CategoriesItem {
  String strMeal;
  String strMealThumb;
  String idMeal;

  CategoriesItem({
    this.strMeal,
    this.strMealThumb,
    this.idMeal,
  });

  CategoriesItem.fromJson(Map<String, dynamic> json) {
    strMeal = json['strMeal'];
    strMealThumb = json['strMealThumb'];
    idMeal = json['idMeal'];
  }
}
