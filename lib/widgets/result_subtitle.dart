import 'package:flutter/material.dart';

import '../theme.dart';

class ResultSubtitle extends StatelessWidget {
  const ResultSubtitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(16, 24, 0, 16),
      alignment: Alignment.centerLeft,
      child: Text(
        '4 resultados para "Macarrão"',
        style: TextStyle(
          color: secundaryColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
