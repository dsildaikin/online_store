import 'package:flutter/material.dart';
import 'package:online_store/router/router.dart';

class OnlineStoreApp extends StatelessWidget {
  const OnlineStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Store',
      routes: routes,
    );
  }
}
