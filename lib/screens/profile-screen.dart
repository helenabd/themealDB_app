import 'package:flutter/material.dart';

import '../theme.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 120,
              child: Image(
                image: AssetImage('assets/images/profile.png'),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: secundaryColor.withOpacity(0.32),
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(
                    Icons.email,
                    color: textColor,
                    size: 20,
                  ),
                  hintText: 'E-mail',
                  hintStyle: TextStyle(color: textColor),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: secundaryColor.withOpacity(0.32),
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(
                    Icons.https,
                    color: textColor,
                    size: 20,
                  ),
                  hintText: 'Senha',
                  hintStyle: TextStyle(color: textColor),
                ),
              ),
            )
          ],
        ),
      ),
      // bottomNavigationBar: navigationBar(),
    );
  }
}
