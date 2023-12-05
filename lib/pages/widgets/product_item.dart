import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final AsyncSnapshot snapshot;
  final int index;

  const ProductItem({
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
