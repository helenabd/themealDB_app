import 'package:flutter/material.dart';
import 'package:theMealDB_app/screens/components/app_bar_result.dart';
import 'package:theMealDB_app/screens/components/navigator_bottom.dart';

import 'components/meal_view_item.dart';

class ItemScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: resultAppBar(),
      body: MealView(),
      bottomNavigationBar: navigationBar(),
    );
  }
}
