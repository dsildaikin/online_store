import 'package:flutter/material.dart';
import 'package:online_store/models/products_list_model/products_list_model.dart';
import 'package:online_store/pages/product_details_page/product_details_page.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.product,
    required this.categoryTitle,
  });

  final Product product;
  final String categoryTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetails(
                product: product,
                categoryName: categoryTitle,
              ),
            ),
          );
        },
        title: Text(product.title),
        subtitle: Text('Цена: ${product.price}'),
        leading: Image.network(
          product.imageUrl.toString(),
          errorBuilder: (context, object, stackTrace) {
            return const Text('No image');
            //TODO сделать картинку ошибки
          },
        ),
      ),
    );
  }
}
