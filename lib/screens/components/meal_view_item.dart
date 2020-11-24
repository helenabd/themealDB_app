import 'package:flutter/material.dart';
import 'package:theMealDB_app/model/item_model.dart';
import 'package:theMealDB_app/resources/repository.dart';

class MealView extends StatelessWidget {
  const MealView({
    Key key,
    @required Repository repository,
  })  : _repository = repository,
        super(key: key);

  final Repository _repository;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<ItemModel>(
        future: _repository.searchMeals('New York cheesecake'),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Meals> newItem = snapshot.data.meals;
            return ListView(
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Image.network('${newItem[0].strMealThumb}'),
                ),
                Text(
                  '${newItem[0].strMeal}',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Categoria:' + '${newItem[0].strCategory}',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Área:' + '${newItem[0].strArea}',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Instruções: ',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${newItem[0].strInstructions}',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
