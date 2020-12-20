import 'package:flutter/material.dart';

import '../theme.dart';

class ResultSubtitle extends StatelessWidget {
  const ResultSubtitle({
    Key key,
    @required String category,
    @required int lenght,
  })  : _category = category,
        _lenght = lenght,
        super(key: key);

  final String _category;
  final int _lenght;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(16, 24, 0, 16),
      alignment: Alignment.centerLeft,
      child: Text(
        '$_lenght resultados para "$_category"',
        style: TextStyle(
          color: secundaryColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
