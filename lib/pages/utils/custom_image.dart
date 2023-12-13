import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
    required this.imageUrl,
    this.height,
    this.width,
  });

  final String imageUrl;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      height: height,
      width: width,
      fit: BoxFit.cover,
      errorBuilder: (context, object, stackTrace) {
        return Image.asset(
          'assets/images/no_image.jpg',
          height: height,
          width: width,
          fit: BoxFit.cover,
        );
      },
    );
  }
}
