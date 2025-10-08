import 'package:belanja/pages/home_page.dart';
import 'package:belanja/pages/item_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/item': (context) => const ItemPage(),
    },
  ));
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Praktikum 5',
//       home: Scaffold(
//           appBar: AppBar(
//             title: const Text('Flutter layout demo'),
//           ),
//           body: Container(
//             margin: const EdgeInsets.all(8.0),
//             child: ListView.builder(
//               padding: const EdgeInsets.all(8.0),
//               itemCount: items.length,
//               itemBuilder: (context, index) {
//                 final item = items[index];
//                 return Card(
//                   child: Container(
//                     margin: const EdgeInsets.all(8.0),
//                     child: Row(
//                       children: [
//                         Expanded(child: Text(item.name)),
//                         Expanded(
//                             child: Text(
//                           item.price.toString(),
//                           textAlign: TextAlign.center,
//                         )),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           )),
//     );
//   }
// }
