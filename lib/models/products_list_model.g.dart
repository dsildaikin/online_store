// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsListModel _$ProductsListModelFromJson(Map<String, dynamic> json) =>
    ProductsListModel(
      (json['data'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductsListModelToJson(ProductsListModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      json['productId'] as int,
      json['title'] as String,
      json['productDescription'] as String?,
      json['price'] as int,
      json['imageUrl'] as String?,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'productId': instance.productId,
      'title': instance.title,
      'productDescription': instance.productDescription,
      'price': instance.price,
      'imageUrl': instance.imageUrl,
    };
