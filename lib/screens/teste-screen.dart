import 'package:flutter/material.dart';
import 'package:theMealDB_app/screens/components/app_bar.dart';
import 'package:theMealDB_app/screens/components/category_box.dart';
import 'package:theMealDB_app/screens/components/navigator_bottom.dart';

class TesteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: CategoryBox(),
      bottomNavigationBar: navigationBar(),
    );
  }
}
