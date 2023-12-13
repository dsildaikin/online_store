import 'package:flutter/material.dart';
import 'package:online_store/models/categories_list_model/categories_list_model.dart';
import 'package:online_store/pages/utils/custom_image.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomImage(
              imageUrl: category.imageUrl,
              height: 100,
              width: 180,
            ),
            const SizedBox(height: 20),
            Text(category.title),
          ],
        ),
      ),
    );
  }
}
