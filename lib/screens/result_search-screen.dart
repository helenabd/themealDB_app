import 'package:flutter/material.dart';

import '../resources/repository.dart';
import '../model/categories_item_model.dart';
import '../widgets/app_bar_result.dart';
import '../widgets/result_subtitle.dart';
import '../widgets/card_meal_result.dart';

class ResultSearchScreen extends StatelessWidget {
  static const routeName = 'result-search';
  final _repository = Repository();

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as String;
    return Center(
      child: FutureBuilder<CategoryItemModel>(
        future: _repository.fetchCategories(category),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<CategoriesItem> categories = snapshot.data.categoriesItem;
            int lenght = categories.length;
            return Scaffold(
              appBar: resultAppBar(context),
              body: ListView(
                children: [
                  ResultSubtitle(
                    category: category,
                    lenght: lenght,
                  ),
                  for (int i = 0; i < lenght; i++)
                    CardMealResult(
                      repository: _repository,
                      title: categories[i].strMeal,
                    ),
                ],
              ),
              // bottomNavigationBar: navigationBar(),
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
