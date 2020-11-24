import 'package:flutter/material.dart';
import 'package:theMealDB_app/resources/repository.dart';
import 'package:theMealDB_app/screens/components/card_meal.dart';
import 'package:theMealDB_app/screens/components/app_bar_result.dart';
import 'package:theMealDB_app/screens/components/navigator_bottom.dart';

import 'components/result_subtitle.dart';

class ResultSearchScreen extends StatelessWidget {
  final _repository = Repository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: resultAppBar(),
      body: ListView(
        children: [
          ResultSubtitle(),
          CardMeal(repository: _repository),
          CardMeal(repository: _repository),
          CardMeal(repository: _repository),
          CardMeal(repository: _repository),
        ],
      ),
      bottomNavigationBar: navigationBar(),
    );
  }
}
