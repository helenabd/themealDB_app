import 'package:flutter/material.dart';

import '../widgets/search_box.dart';
import '../theme.dart';

class CategoryBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          SearchBox(),
          Container(
            margin: EdgeInsets.fromLTRB(16, 0, 0, 8),
            alignment: Alignment.centerLeft,
            child: Text(
              'Categorias',
              style: TextStyle(
                  color: secundaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
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
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image(
                          image: AssetImage('assets/images/macarrao.jpg'),
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'Categoria',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 7),
                        blurRadius: 30,
                        color: Colors.black12)
                  ],
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Image(
                          image: AssetImage('assets/images/macarrao.jpg'),
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'Categoria',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
