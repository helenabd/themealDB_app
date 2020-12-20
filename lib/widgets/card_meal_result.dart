import 'package:flutter/material.dart';

import 'package:theMealDB_app/model/item_model.dart';
import 'package:theMealDB_app/resources/repository.dart';
import 'package:theMealDB_app/screens/item-screen.dart';

class CardMealResult extends StatelessWidget {
  const CardMealResult({
    Key key,
    @required String title,
    @required Repository repository,
  })  : _repository = repository,
        _title = title,
        super(key: key);

  final Repository _repository;
  final String _title;

  Widget _buildSubtitle(String subtitle) {
    return Text(
      subtitle,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildDescription(String description) {
    return Text(
      description,
      style: TextStyle(
        fontSize: 16,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<ItemModel>(
        future: _repository.searchMeals(_title),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Meals> newItem = snapshot.data.meals;
            return GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(ItemScreen.routeName,
                    arguments: newItem[0].strMeal);
              },
              child: Container(
                height: 280,
                margin: EdgeInsets.fromLTRB(16, 0, 16, 16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 12,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Image.network(
                        '${newItem[0].strMealThumb}',
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      '${newItem[0].strMeal}',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      children: [
                        _buildSubtitle('Categoria: '),
                        _buildDescription(newItem[0].strCategory),
                      ],
                    ),
                    Row(
                      children: [
                        _buildSubtitle('Área: '),
                        _buildDescription(newItem[0].strArea),
                      ],
                    ),
                  ],
                ),
              ),
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
