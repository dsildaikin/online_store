class ProductsListModel {
  Meta? meta;
  List<Data>? data;

  ProductsListModel({this.meta, this.data});

  ProductsListModel.fromJson(Map<String, dynamic> json) {
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((dynamic v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (meta != null) {
      data['meta'] = meta!.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Meta {
  bool? success;
  String? error;

  Meta({this.success, this.error});

  Meta.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['error'] = error;
    return data;
  }
}

class Data {
  int? productId;
  String? title;
  String? productDescription;
  int? price;
  Null? rating;
  String? imageUrl;
  List<String>? images;
  int? isAvailableForSale;

  Data(
      {this.productId,
      this.title,
      this.productDescription,
      this.price,
      this.rating,
      this.imageUrl,
      this.images,
      this.isAvailableForSale});

  Data.fromJson(Map<String, dynamic> json) {
    productId = json['productId'];
    title = json['title'];
    productDescription = json['productDescription'];
    price = json['price'];
    rating = json['rating'];
    imageUrl = json['imageUrl'];
    images = json['images'].cast<String>();
    isAvailableForSale = json['isAvailableForSale'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['productId'] = productId;
    data['title'] = title;
    data['productDescription'] = productDescription;
    data['price'] = price;
    data['rating'] = rating;
    data['imageUrl'] = imageUrl;
    data['images'] = images;
    data['isAvailableForSale'] = isAvailableForSale;
    return data;
  }
}
