import 'package:flutter/material.dart';
import 'package:theMealDB_app/resources/repository.dart';
import 'package:theMealDB_app/screens/components/card_meal.dart';
import 'package:theMealDB_app/screens/components/subtitle_box.dart';

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
            Subtitle(),
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
