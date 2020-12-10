import 'package:flutter/material.dart';

import '../resources/repository.dart';
import '../widgets/card_meal.dart';
import '../widgets/subtitle_box.dart';

class BodyHome extends StatelessWidget {
  final pageViewController = PageController();
  final _repository = Repository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Subtitle('Pratos Recomendados'),
            CardMeal(repository: _repository),
            CardMeal(repository: _repository),
            CardMeal(repository: _repository),
            CardMeal(repository: _repository),
          ],
        ),
      ),
    );
  }
}
