import 'package:json_annotation/json_annotation.dart';

part 'categories.g.dart';

@JsonSerializable()
class CategoriesListModel {
  CategoriesListModel(this.data);

  CategoriesList data;

  factory CategoriesListModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesListModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoriesListModelToJson(this);
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
