import 'package:flutter/material.dart';
import 'package:online_store/models/categories_list_model/categories_list_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.network(
            category.imageUrl,
            height: 130,
            width: 150,
            fit: BoxFit.cover,
            errorBuilder: (context, object, stackTrace) {
              return const Text('No image');
            },
          ),
          const SizedBox(height: 20),
          Text(category.title),
        ],
      ),
    );
  }
}
