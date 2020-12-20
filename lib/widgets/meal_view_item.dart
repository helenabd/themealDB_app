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
      textAlign: TextAlign.justify,
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
                    fontSize: 24,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    _buildSubtitle('Categoria: '),
                    _buildDescription(newItem[0].strCategory),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    _buildSubtitle('Área: '),
                    _buildDescription(newItem[0].strArea),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                _buildSubtitle('Instruções:'),
                SizedBox(
                  height: 8.0,
                ),
                _buildDescription(newItem[0].strInstructions),
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
