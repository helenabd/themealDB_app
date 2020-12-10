import 'package:flutter/material.dart';

import '../widgets/body_home.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: homeAppBar(),
      body: BodyHome(),
      // bottomNavigationBar: navigationBar(),
    );
  }
}
