import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000, rating: 4, stock: 10, imageUrl: 'images/sugar.jpg'),
    Item(name: 'Salt', price: 2000, rating: 3, stock: 24, imageUrl: 'images/salt.jpg'),
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
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 0.95,
                ),
                padding: const EdgeInsets.all(8.0),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return InkWell(
                    onTap: () => context.go('/item', extra: item),
                    child: ProductCard(item: item),
                  );
                },
              ),
            )));
  }
}
