import 'package:flutter/material.dart';

import 'package:online_store/APIs/category_api.dart';
import 'package:online_store/models/category.dart';
import 'package:online_store/pages/category_grid_page/widgets/category_element.dart';

class CategoryGridPage extends StatefulWidget {
  const CategoryGridPage({super.key});

  @override
  State<CategoryGridPage> createState() => _CategoryGridPageState();
}

class _CategoryGridPageState extends State<CategoryGridPage> {
  late Future<CategoriesListModel> futureCategory;

  @override
  void initState() {
    super.initState();
    futureCategory = fetchCategoryList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Категории товаров'),
      ),
      body: FutureBuilder<CategoriesListModel>(
          future: futureCategory,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: snapshot.data!.data!.categories!.length,
                  itemBuilder: (context, index) {
                    return CategoryElement(index: index, snapshot: snapshot);
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
