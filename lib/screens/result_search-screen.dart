import 'package:flutter/material.dart';

import '../resources/repository.dart';
import '../widgets/app_bar_result.dart';
import '../widgets/result_subtitle.dart';
import '../widgets/card_meal.dart';

class ResultSearchScreen extends StatelessWidget {
  final _repository = Repository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: resultAppBar(context),
      body: ListView(
        children: [
          ResultSubtitle(),
          for (int i = 0; i <= 3; i++) CardMeal(repository: _repository),

          // CardMeal(repository: _repository),
          // CardMeal(repository: _repository),
          // CardMeal(repository: _repository),
        ],
      ),
      // bottomNavigationBar: navigationBar(),
    );
  }
}
