import 'package:flutter/material.dart';

class CategoryElement extends StatelessWidget {
  final AsyncSnapshot snapshot;
  final int index;

  const CategoryElement({
    Key? key,
    required this.snapshot,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<dynamic> arguments = [
      snapshot.data?.data.categories[index].title,
      snapshot.data?.data.categories[index].categoryId,
    ];
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          '/product',
          arguments: arguments,
        );
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.network(
              snapshot.data?.data.categories[index].imageUrl,
              height: 130,
              width: 150,
              fit: BoxFit.cover,
              errorBuilder: (context, object, stackTrace) {
                return const Text('Image not found');
              },
            ),
            const SizedBox(height: 20),
            Text(
              snapshot.data?.data.categories[index].title,
            ),
          ],
        ),
      ),
    );
  }
}
