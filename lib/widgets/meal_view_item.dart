import 'package:flutter/material.dart';
import 'package:theMealDB_app/model/item_model.dart';
import 'package:theMealDB_app/resources/repository.dart';

class MealView extends StatelessWidget {
  const MealView({
    Key key,
    @required String title,
    @required Repository repository,
  })  : _repository = repository,
        _title = title,
        super(key: key);

  final Repository _repository;
  final String _title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<ItemModel>(
        future: _repository.searchMeals(_title),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Meals> newItem = snapshot.data.meals;
            return ListView(
              padding: EdgeInsets.all(14.0),
              children: [
                Container(
                  child: Image.network('${newItem[0].strMealThumb}'),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Text(
                  '${newItem[0].strMeal}',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Categoria: ' + '${newItem[0].strCategory}',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Área: ' + '${newItem[0].strArea}',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Instruções: ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  '${newItem[0].strInstructions}',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 16,
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
