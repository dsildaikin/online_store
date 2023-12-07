// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseModelCategories _$BaseModelCategoriesFromJson(Map<String, dynamic> json) =>
    BaseModelCategories(
      CategoriesList.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BaseModelCategoriesToJson(
        BaseModelCategories instance) =>
    <String, dynamic>{
      'data': instance.categoriesList,
    };

CategoriesList _$CategoriesListFromJson(Map<String, dynamic> json) =>
    CategoriesList(
      (json['categories'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoriesListToJson(CategoriesList instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      json['categoryId'] as int,
      json['title'] as String,
      json['imageUrl'] as String,
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'categoryId': instance.categoryId,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
    };
