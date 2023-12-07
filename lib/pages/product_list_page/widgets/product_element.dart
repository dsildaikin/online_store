import 'package:flutter/material.dart';

class ProductElement extends StatelessWidget {
  final AsyncSnapshot snapshot;
  final int index;

  const ProductElement({
    Key? key,
    required this.snapshot,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(snapshot.data!.data![index].title!),
    );
  }
}
