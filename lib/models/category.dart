class Category {
  final String title;
  final String imageUrl;

  const Category({
    required this.title,
    required this.imageUrl,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'title': String title,
        'imageUrl': String imageUrl,
      } =>
        Category(
          title: title,
          imageUrl: imageUrl,
        ),
      _ => throw const FormatException('Failed to load category.'),
    };
  }
}
