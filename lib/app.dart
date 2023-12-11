import 'package:flutter/material.dart';
import 'package:online_store/pages/category_grid_page.dart';

class OnlineStoreApp extends StatelessWidget {
  const OnlineStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Store',
      home: const CategoryGridPage(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.blue,
        ),
      ),
    );
  }
}
