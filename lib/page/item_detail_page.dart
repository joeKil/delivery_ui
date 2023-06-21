import 'package:flutter/material.dart';

import '../model/food_post.dart';

class ItemDetailPage extends StatelessWidget {
  final FoodItem foodItem;

  const ItemDetailPage({required this.foodItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(foodItem.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              foodItem.imageUrl,
              height: 150,
              width: 150,
            ),
            const SizedBox(height: 16),
            Text(
              foodItem.name,
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 8),
            Text(
              foodItem.description,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}