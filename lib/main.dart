import 'package:flutter/material.dart';
import 'package:online_store/pages/category_grid_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CategoryGridPage(),
    );
  }
}
