import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:theMealDB_app/screens/components/app_bar_result.dart';
import 'package:theMealDB_app/screens/components/navigator_bottom.dart';

import 'package:http/http.dart' as http;

// class MealsApiProvider {
//   final String _baseURL = 'https://www.themealdb.com/api/json/v1/1';

//   Future<ItemModel> fetchMeals() async {
//     Response response;
//     response = await http.get('$_baseURL/random.php');

//     print(response.body);
//     print(response.statusCode);

//     if (response.statusCode == 200) {
//       return ItemModel.fromJson(json.decode(response.body));
//     } else {
//       throw Exception('Failed to load a meal');
//     }
//   }
// }

// class ItemModel {
//   List<Meals> meals;

//   ItemModel({this.meals});

//   ItemModel.fromJson(Map<String, dynamic> json) {
//     if (json['meals'] != null) {
//       meals = new List<Meals>();
//       json['meals'].forEach((v) {
//         meals.add(new Meals.fromJson(v));
//       });
//     }
//   }
// }

// class Meals {
//   String title;
//   String category;
//   String area;
//   String instructions;

//   Meals({this.title, this.category, this.area, this.instructions});

//   Meals.fromJson(Map<String, dynamic> json) {
//     title = json['strMeal'];
//     category = json['strCategory'];
//     area = json['strArea'];
//     instructions = json['strInstructions'];
//   }
// }

// class ItemScreen extends StatelessWidget {
//   final Future<ItemModel> item;
//   ItemScreen({Key key, this.item}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: resultAppBar(),
//       body: Center(
//         child: FutureBuilder<ItemModel>(
//           // future: ,
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               print(snapshot.data.meals);
//               return ListView(
//                 children: [
//                   Image(
//                     image: AssetImage('assets/images/macarrao.jpg'),
//                   ),
//                   Text(
//                     '${snapshot.data.meals}',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   Text(
//                     'Categoria:' + snapshot.data.category,
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   Text(
//                     'Área:' + snapshot.data.area,
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   Text(
//                     'Instruções: ',
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   Text(
//                     snapshot.data.instructions,
//                     style: TextStyle(
//                       fontSize: 14,
//                     ),
//                   ),
//                 ],
//               );
//             } else if (snapshot.hasError) {
//               return Text("${snapshot.error}");
//             }
//             return CircularProgressIndicator();
//           },
//         ),
//       ),
//       bottomNavigationBar: navigationBar(),
//     );
//   }
// }
