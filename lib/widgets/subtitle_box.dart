import 'package:flutter/material.dart';

import '../theme.dart';

class Subtitle extends StatelessWidget {
  final String title;

  Subtitle(this.title);

  Widget buildSectionTitle(BuildContext context, String title) {
    return Container(
      margin: EdgeInsets.fromLTRB(16, 24, 0, 16),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: TextStyle(
          color: secundaryColor,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildSectionTitle(context, title);
  }
}
