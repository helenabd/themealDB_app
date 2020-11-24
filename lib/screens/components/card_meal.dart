import 'package:flutter/material.dart';
import 'package:theMealDB_app/model/item_model.dart';
import 'package:theMealDB_app/resources/repository.dart';

class CardMeal extends StatelessWidget {
  const CardMeal({
    Key key,
    @required Repository repository,
  })  : _repository = repository,
        super(key: key);

  final Repository _repository;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<ItemModel>(
        future: _repository.randomMeals(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Meals> newItem = snapshot.data.meals;
            return Container(
              height: 200,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Container(
                      child: Image.network(
                        '${newItem[0].strMealThumb}',
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    '${newItem[0].strMeal}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Categoria: ' + '${newItem[0].strCategory}',
                    style: TextStyle(
                      fontSize: 14,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Área: ' + '${newItem[0].strArea}',
                    style: TextStyle(
                      fontSize: 14,
                      // fontWeight: FontWeight.bold,
                    ),
                  )
                ],
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
