import 'package:flutter/material.dart';
import 'package:online_store/api/product_api.dart';
import 'package:online_store/models/categories_list_model/categories_list_model.dart';
import 'package:online_store/models/products_list_model/products_list_model.dart';
import 'package:online_store/pages/product_list_page/product_item.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key, required this.category});

  final Category category;

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  late Future<ProductsListModel> futureProductsListModel;

  @override
  void initState() {
    super.initState();
    futureProductsListModel = ProductApi.fetchProductsListModel(
      widget.category.categoryId.toString(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category.title),
        centerTitle: true,
      ),
      body: FutureBuilder<ProductsListModel>(
          future: futureProductsListModel,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.data.length,
                  itemBuilder: (context, index) {
                    return ProductItem(
                      product: snapshot.data!.data[index],
                      categoryTitle: widget.category.title,
                    );
                  });
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
