import 'package:flutter/material.dart';
import 'package:theMealDB_app/screens/category-screen.dart';
import 'package:theMealDB_app/screens/item-screen.dart';

import './screens/home-screen.dart';
import './screens/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MealDB App',
      debugShowCheckedModeBanner: false,
      // home: TabsScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(),
        CategoryScreen.routeName: (ctx) => CategoryScreen(),
        ItemScreen.routeName: (ctx) => ItemScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => HomeScreen(),
        );
      },
    );
  }
}
