import 'package:flutter/material.dart';
import 'package:theMealDB_app/screens/components/app_bar.dart';
import 'package:theMealDB_app/screens/components/category_box.dart';
import 'package:theMealDB_app/screens/components/navigator_bottom.dart';
import 'package:theMealDB_app/screens/components/search_box.dart';

class TesteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            SearchBox(),
            Container(),
            Row(
              children: [
                Container(
                  width: 160,
                  height: 160,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amber,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 7),
                          blurRadius: 30,
                          color: Colors.black12)
                    ],
                  ),
                ),
                Container(
                  width: 160,
                  height: 160,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amber,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 7),
                          blurRadius: 30,
                          color: Colors.black12)
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: navigationBar(),
    );
  }
}
