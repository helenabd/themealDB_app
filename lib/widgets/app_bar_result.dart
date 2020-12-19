import 'package:flutter/material.dart';

import '../theme.dart';

AppBar resultAppBar(BuildContext context) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: secundaryColor,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    title: RichText(
      text: TextSpan(children: [
        TextSpan(
          text: 'The',
          style: TextStyle(
              color: titleColor, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        TextSpan(
            text: 'MealDB',
            style: TextStyle(
                color: titleColor2, fontSize: 24, fontWeight: FontWeight.bold))
      ]),
    ),
  );
}
