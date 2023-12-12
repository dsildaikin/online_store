import 'package:flutter/material.dart';
import 'package:online_store/models/products_list_model/products_list_model.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
    required this.product,
    required this.categoryName,
  });

  final Product product;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            Image.network(
              product.imageUrl.toString(),
              width: 200,
              height: 200,
              fit: BoxFit.cover,
              errorBuilder: (context, object, stackTrace) {
                return const Text('No image');
              },
            ),
            Text('Категория продукта: $categoryName'),
            const Text('Описание продукта'),
            Text(product.productDescription ?? 'description is not found'),
          ],
        ),
      ),
    );
  }
}
