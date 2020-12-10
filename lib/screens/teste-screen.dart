import 'package:flutter/material.dart';
import 'package:theMealDB_app/screens/components/app_bar_home.dart';
import 'package:theMealDB_app/screens/components/navigator_bottom.dart';

class TesteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: CardCatalog(),
      // bottomNavigationBar: navigationBar(),
    );
  }
}

class CardCatalog extends StatelessWidget {
  const CardCatalog({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 6,
        mainAxisSpacing: 6,
        crossAxisCount: 2,
        children: List.generate(14, (index) {
          return Container(
            child: Card(
              color: Colors.red,
              child: Image(image: AssetImage('assets/images/macarrao.jpg')),
            ),
          );
        }),
      ),
    );
  }
}

// Container(
//         color: Colors.red,
//         child: ListView(
//           children: [
//             SearchBox(),
//             Container(),
//             Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Container(
//                       width: 160,
//                       height: 160,
//                       margin: EdgeInsets.all(8),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: Colors.amber,
//                         boxShadow: [
//                           BoxShadow(
//                               offset: Offset(0, 7),
//                               blurRadius: 30,
//                               color: Colors.black12)
//                         ],
//                       ),
//                     ),
//                     Container(
//                       width: 160,
//                       height: 160,
//                       margin: EdgeInsets.all(8),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: Colors.amber,
//                         boxShadow: [
//                           BoxShadow(
//                               offset: Offset(0, 7),
//                               blurRadius: 30,
//                               color: Colors.black12)
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
