import 'package:json_annotation/json_annotation.dart';

part 'products_list_model.g.dart';

@JsonSerializable()
class ProductsListModel {
  ProductsListModel(this.data);

  List<Product> data;

  factory ProductsListModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsListModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductsListModelToJson(this);
}

@JsonSerializable()
class Product {
  Product(
    this.productId,
    this.title,
    this.productDescription,
    this.price,
    this.imageUrl,
  );

  int productId;
  String title;
  String? productDescription;
  int price;
  String? imageUrl;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
