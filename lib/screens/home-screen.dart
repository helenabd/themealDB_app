import 'package:flutter/material.dart';

import 'components/body_home.dart';
import 'components/app_bar.dart';
import 'components/navigator_bottom.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: BodyHome(),
      bottomNavigationBar: navigationBar(),
    );
  }
}
