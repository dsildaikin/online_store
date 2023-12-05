import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:online_store/APIs/category_api.dart';
import 'package:online_store/models/category.dart';

import '../APIs/base_api.dart';

class CategoryGridPage extends StatefulWidget {
  const CategoryGridPage({super.key});

  @override
  State<CategoryGridPage> createState() => _CategoryGridPageState();
}

class _CategoryGridPageState extends State<CategoryGridPage> {
  late Future<BaseModel> futureCategory;

  @override
  void initState() {
    super.initState();
    futureCategory = fetchCategory();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Категории товаров'),
      ),
      body: FutureBuilder<BaseModel>(
          future: futureCategory,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: snapshot.data!.data!.categories!.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.network(
                            snapshot.data!.data!.categories![index].imageUrl!,
                            height: 130,
                            width: 150,
                            fit: BoxFit.cover,
                            errorBuilder: (context, object, stackTrace) {
                              return const Text('Error 404');
                            },
                          ),
                          const SizedBox(height: 20),
                          Text(snapshot.data!.data!.categories![index].title!),
                        ],
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
