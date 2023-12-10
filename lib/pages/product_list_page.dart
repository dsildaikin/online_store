import 'package:flutter/material.dart';
import 'package:online_store/APIs/product_api.dart';
import 'package:online_store/models/categories_list_model.dart';
import 'package:online_store/models/products_list_model.dart';
import 'package:online_store/pages/product_details_page.dart';

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
    futureProductsListModel =
        fetchProductsListModel(widget.category.categoryId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category.title),
      ),
      body: FutureBuilder<ProductsListModel>(
          future: futureProductsListModel,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.data.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductDetails(
                                product: snapshot.data!.data[index],
                                productCategoryName: widget.category.title,
                              ),
                            ),
                          );
                        },
                        title: Text(snapshot.data!.data[index].title),
                        subtitle:
                            Text('Цена: ${snapshot.data!.data[index].price}'),
                        leading: Image.network(
                          snapshot.data!.data[index].imageUrl.toString(),
                          errorBuilder: (context, object, stackTrace) {
                            return const Text('No image');
                            //TODO сделать картинку ошибки
                          },
                        ),
                      ),
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
