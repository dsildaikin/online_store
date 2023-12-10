import 'package:flutter/material.dart';
import 'package:online_store/models/categories_list_model.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key, required this.category});

  final Category category;

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category.title),
      ),
    );
  }
}
