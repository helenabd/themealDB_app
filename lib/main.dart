import 'package:flutter/material.dart';
import 'package:theMealDB_app/screens/api-screen.dart';
import 'package:theMealDB_app/screens/home-screen.dart';
import 'package:theMealDB_app/screens/item-screen.dart';
import 'package:theMealDB_app/screens/profile-screen.dart';
import 'package:theMealDB_app/screens/result_search-screen.dart';
import 'package:theMealDB_app/screens/search-screen.dart';
import 'package:theMealDB_app/screens/teste-screen.dart';

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
      home: HomeScreen(),
    );
  }
}
