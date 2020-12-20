import 'package:flutter/material.dart';

import '../model/category_model.dart';
import '../resources/repository.dart';
import '../screens/result_search-screen.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({
    Key key,
    @required Repository repository,
  })  : _repository = repository,
        super(key: key);

  final Repository _repository;
  // int lenght = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<CategoryModel>(
          future: _repository.searchCategories(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Category> newCategory = snapshot.data.categories;
              int length = newCategory.length;
              return GridView.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 14,
                childAspectRatio: 3 / 2,
                crossAxisCount: 2,
                children: List.generate(length, (index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                          ResultSearchScreen.routeName,
                          arguments: newCategory[index].strCategory);
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 4,
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                ),
                                child: Image.network(
                                  '${newCategory[index].strCategoryThumb}',
                                  height: 100,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Center(
                                heightFactor: 3,
                                child: Container(
                                  width: 300,
                                  color: Colors.black26,
                                  padding: EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 18,
                                  ),
                                  child: Text(
                                    '${newCategory[index].strCategory}',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                    softWrap: true,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return CircularProgressIndicator();
          }),
    );
  }
}

// ÚLTIMO
// import 'package:flutter/material.dart';

// import '../model/category_model.dart';
// import '../resources/repository.dart';

// class CategoryItem extends StatelessWidget {
//   const CategoryItem({
//     Key key,
//     @required Repository repository,
//   })  : _repository = repository,
//         super(key: key);

//   final Repository _repository;

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: FutureBuilder<CategoryModel>(
//         future: _repository.searchCategories(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             List<Category> newCategory = snapshot.data.categories;
//             return InkWell(
//               onTap: () {},
//               child: Card(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 elevation: 4,
//                 margin: EdgeInsets.all(10),
//                 child: Column(
//                   children: <Widget>[
//                     Stack(
//                       children: <Widget>[
//                         ClipRRect(
//                           borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(15),
//                             topRight: Radius.circular(15),
//                           ),
//                           child: Image.network(
//                             '${newCategory[0].strCategoryThumb}',
//                             height: 100,
//                             width: double.infinity,
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         Positioned(
//                           bottom: 2,
//                           right: 10,
//                           child: Container(
//                             width: 100,
//                             color: Colors.black26,
//                             padding: EdgeInsets.symmetric(
//                               vertical: 5,
//                               horizontal: 20,
//                             ),
//                             child: Text(
//                               '${newCategory[0].strCategory}',
//                               style: TextStyle(
//                                 fontSize: 26,
//                                 color: Colors.white,
//                               ),
//                               softWrap: true,
//                               overflow: TextOverflow.fade,
//                             ),
//                           ),
//                         )
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             );
//           } else if (snapshot.hasError) {
//             return Text('${snapshot.error}');
//           }
//           return CircularProgressIndicator();
//         },
//       ),
//     );
//   }
// }

// @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: FutureBuilder<CategoryModel>(
//         future: _repository.searchCategories(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             List<Category> newCategory = snapshot.data.categories;
//             return InkWell(
//               onTap: () {},
//               borderRadius: BorderRadius.circular(15),
//               child: Container(
//                 padding: const EdgeInsets.all(15),
//                 child: Text('${newCategory[0].strCategory}'),
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [
//                       Colors.white.withOpacity(0.7),
//                       Colors.white,
//                     ],
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                   ),
//                 ),
//               ),
//             );
//           } else if (snapshot.hasError) {
//             return Text('${snapshot.error}');
//           }
//           return CircularProgressIndicator();
//         },
//       ),
//     );
// }
