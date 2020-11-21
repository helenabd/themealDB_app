import 'package:flutter/material.dart';

import '../../theme.dart';

class Subtitle extends StatelessWidget {
  const Subtitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(16, 24, 0, 16),
      alignment: Alignment.centerLeft,
      child: Text(
        'Pratos Recomendados',
        style: TextStyle(
          color: secundaryColor,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
