import 'package:flutter/material.dart';
import 'package:theMealDB_app/model/categories_item_model.dart';

import '../resources/repository.dart';
import '../widgets/app_bar_result.dart';
import '../widgets/result_subtitle.dart';
import '../widgets/card_meal.dart';

class ResultSearchScreen extends StatelessWidget {
  static const routeName = 'result-search';
  final _repository = Repository();

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as String;
    print(category);
    return Center(
      child: FutureBuilder<CategoryItemModel>(
        future: _repository.fetchCategories(category),
        builder: (context, snapshot) {
          List<CategoriesItem> categories = snapshot.data.categoriesItem;
          // int lenght = categories.length;
          return Scaffold(
            appBar: resultAppBar(context),
            body: ListView(
              children: [
                ResultSubtitle(
                  category: category,
                  lenght: categories.length,
                ),
                // for (int i = 0; i <= 3; i++)
                CardMeal(repository: _repository),
                CardMeal(repository: _repository),
                CardMeal(repository: _repository),
                CardMeal(repository: _repository),
              ],
            ),
            // bottomNavigationBar: navigationBar(),
          );
        },
      ),
    );
  }
}
