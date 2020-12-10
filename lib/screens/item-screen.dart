import 'package:flutter/material.dart';

import '../widgets/meal_view_item.dart';
import '../widgets/app_bar_result.dart';
import '../resources/repository.dart';

class ItemScreen extends StatelessWidget {
  final _repository = Repository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: resultAppBar(),
      body: MealView(repository: _repository),
      // bottomNavigationBar: navigationBar(),
    );
  }
}
