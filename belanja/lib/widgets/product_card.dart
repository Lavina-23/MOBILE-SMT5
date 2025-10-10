import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Item item;
  const ProductCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).colorScheme.surface,
          boxShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.05), blurRadius: 5, spreadRadius: 3)
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: 'prodImage',
                    child: Image.asset(
                      item.imageUrl,
                      height: 160,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        item.name,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(width: 5),
                      Text('Rp ${item.price}',
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 18)),
                    ],
                  ),
                  Row(children: [
                    const Spacer(),
                    Text(item.rating.toString()),
                    const Icon(Icons.star, color: Colors.amber, size: 15),
                  ]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
