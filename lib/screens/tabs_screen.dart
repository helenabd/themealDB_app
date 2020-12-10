import 'package:flutter/material.dart';

import '../screens/home-screen.dart';
import '../screens/profile-screen.dart';
import 'category-screen.dart';
import '../widgets/app_bar_home.dart';
import '../widgets/navigator_bottom.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  // final _repository = Repository();

  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': HomeScreen(),
      },
      {
        'page': CategoryScreen(
            // repository: _repository,
            ),
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
