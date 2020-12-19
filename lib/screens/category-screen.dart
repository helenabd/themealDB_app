import 'package:flutter/material.dart';
import 'package:theMealDB_app/widgets/category_item.dart';

import '../resources/repository.dart';

class CategoryScreen extends StatelessWidget {
  static const routeName = '/category';
  final _repository = Repository();
  // const TesteScreen({
  //   Key key,
  //   @required Repository repository,
  // })  : _repository = repository,
  //       super(key: key);

  // final Repository _repository;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CategoryItem(repository: _repository),
    );
  }
}

// PENÚLTIMO
// children: [
//             Center(
//               child: FutureBuilder<CategoryModel>(
//                 future: _repository.searchCategories(),
//                 builder: (context, snapshot) {
//                   if (snapshot.hasData) {
//                     List<Category> newCategory = snapshot.data.categories;
//                     return InkWell(
//                       onTap: () {},
//                       borderRadius: BorderRadius.circular(15),
//                       child: Container(
//                         padding: const EdgeInsets.all(15),
//                         child: Text('${newCategory[0].strCategory}'),
//                       ),
//                     );
//                   }
//                 },
//               ),
//             ),

// ÚLTIMO
// body: Container(
//         color: Colors.white,
//         child: GridView(
//           children: [
//             CategoryItem(repository: _repository),
//             CategoryItem(repository: _repository),
//             CategoryItem(repository: _repository),
//             CategoryItem(repository: _repository),
//             CategoryItem(repository: _repository),
//             CategoryItem(repository: _repository),
//             CategoryItem(repository: _repository),
//             CategoryItem(repository: _repository),
//             CategoryItem(repository: _repository),
//             CategoryItem(repository: _repository),
//             CategoryItem(repository: _repository),
//             CategoryItem(repository: _repository),
//           ],
//           gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//             maxCrossAxisExtent: 200,
//             childAspectRatio: 3 / 2,
//             crossAxisSpacing: 10,
//             mainAxisSpacing: 14,
//           ),
//         ),
//       ),
