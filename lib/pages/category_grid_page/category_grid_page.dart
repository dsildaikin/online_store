import 'package:flutter/material.dart';

import 'package:online_store/APIs/category_api.dart';
import 'package:online_store/models/categories_list_model/categories_list_model.dart';
import 'package:online_store/pages/category_grid_page/category_item.dart';
import 'package:online_store/pages/product_list_page/product_list_page.dart';

class CategoryGridPage extends StatefulWidget {
  const CategoryGridPage({super.key});

  @override
  State<CategoryGridPage> createState() => _CategoryGridPageState();
}

class _CategoryGridPageState extends State<CategoryGridPage> {
  late Future<CategoriesListModel> futureCategoriesListModel;

  @override
  void initState() {
    super.initState();
    futureCategoriesListModel = fetchCategoriesListModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Категории товаров'),
      ),
      body: FutureBuilder<CategoriesListModel>(
          future: futureCategoriesListModel,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: snapshot.data!.data.categories.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductListPage(
                              category: snapshot.data!.data.categories[index],
                            ),
                          ),
                        );
                      },
                      child: CategoryItem(
                        category: snapshot.data!.data.categories[index],
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
