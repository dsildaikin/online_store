import 'package:flutter/material.dart';
import 'package:online_store/models/products_list_model/products_list_model.dart';
import 'package:online_store/pages/utils/custom_image.dart';

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
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              CustomImage(imageUrl: product.imageUrl.toString()),
              const SizedBox(height: 35),
              Text(
                'Категория продукта: $categoryName',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 15),
              Text(
                'Описание продукта:',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                product.productDescription != null &&
                        product.productDescription != ''
                    ? product.productDescription!
                    : 'Не найдено',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
