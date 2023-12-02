import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../APIs/base_api.dart';

class CategoryGridPage extends StatefulWidget {
  const CategoryGridPage({super.key});

  @override
  State<CategoryGridPage> createState() => _CategoryGridPageState();
}

class _CategoryGridPageState extends State<CategoryGridPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Категории товаров'),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: 20,
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                children: [
                  Image.network(
                    'https://i.pinimg.com/originals/b2/5c/75/b25c7514436b5f1e5d6e37d0e4ed4847.jpg',
                    height: 130,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 20),
                  const Text('Фрукты')
                ],
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        final response = await http.get(
          Uri.parse('${baseUrl}category/list?&appKey=$appKey'),
        );
        debugPrint(response.body);
      }),
    );
  }
}
