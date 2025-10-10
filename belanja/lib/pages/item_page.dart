import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key, required Item item});

  @override
  Widget build(BuildContext context) {
    final Item item = GoRouterState.of(context).extra! as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: 'prodImage',
              child: Image.asset(
                item.imageUrl,
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              item.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Harga: Rp ${item.price}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text('Stock: ${item.stock}', style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
