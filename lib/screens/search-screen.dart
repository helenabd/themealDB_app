import 'package:flutter/material.dart';

import '../widgets/category_box.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: homeAppBar(),
      body: Container(
        child: CategoryBox(),
      ),
      // bottomNavigationBar: navigationBar(),
    );
  }
}

// class BoxFood extends StatelessWidget {
//   const BoxFood({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(8),
//       margin: EdgeInsets.all(8),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             offset: Offset(0, 7),
//             blurRadius: 30,
//             color: Colors.black12,
//           ),
//         ],
//       ),
//       // color: Colors.blueAccent,
//       child: Column(
//         children: [
//           Row(
//             children: [
//               Text(
//                 'Macarrão',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 15,
//           ),
//           Row(
//             children: [
//               CircleAvatar(
//                 radius: 30,
//                 child: Image.asset(
//                   'assets/images/whatsup.png',
//                   fit: BoxFit.cover,
//                 ),
//                 backgroundImage: AssetImage('assets/images/whatsup.png'),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
