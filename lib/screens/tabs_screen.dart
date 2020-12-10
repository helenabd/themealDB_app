import 'package:flutter/material.dart';
import 'package:theMealDB_app/screens/components/app_bar_home.dart';
import 'package:theMealDB_app/screens/components/navigator_bottom.dart';
import 'package:theMealDB_app/screens/home-screen.dart';
import 'package:theMealDB_app/screens/profile-screen.dart';
import 'package:theMealDB_app/screens/search-screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': HomeScreen(),
      },
      {
        'page': SearchScreen(),
      },
      {
        'page': ProfileScreen(),
      }
    ];

    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: navigationBar(_selectPage, _selectedPageIndex),
    );
  }
}
