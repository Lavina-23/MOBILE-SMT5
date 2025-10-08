import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000),
    Item(name: 'Salt', price: 2000),
  ];

  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Home Page'),
          ),
          body: Container(
            margin: const EdgeInsets.all(8.0),
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/item');
                  },
                  child: Card(
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(child: Text(item.name)),
                          Expanded(
                              child: Text(
                            item.price.toString(),
                            textAlign: TextAlign.center,
                          )),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )),
    );
  }
}
