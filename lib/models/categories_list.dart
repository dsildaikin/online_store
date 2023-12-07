import 'package:json_annotation/json_annotation.dart';

part 'categories_list.g.dart';

@JsonSerializable()
class BaseModelCategories {
  BaseModelCategories(this.categoriesList);

  CategoriesList categoriesList;

  factory BaseModelCategories.fromJson(Map<String, dynamic> json) =>
      _$BaseModelCategoriesFromJson(json);

  Map<String, dynamic> toJson() => _$BaseModelCategoriesToJson(this);
}

@JsonSerializable()
class CategoriesList {
  CategoriesList(this.categories);

  List<Category> categories;

  factory CategoriesList.fromJson(Map<String, dynamic> json) =>
      _$CategoriesListFromJson(json);

  Map<String, dynamic> toJson() => _$CategoriesListToJson(this);
}

@JsonSerializable()
class Category {
  Category(this.categoryId, this.title, this.imageUrl);

  int categoryId;
  String title;
  String imageUrl;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
