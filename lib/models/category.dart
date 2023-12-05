class CategoriesListModel {
  Meta? meta;
  Data? data;

  CategoriesListModel({this.meta, this.data});

  CategoriesListModel.fromJson(Map<String, dynamic> json) {
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (meta != null) {
      data['meta'] = meta!.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data!.toJson();
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
  List<Categories>? categories;

  Data({this.categories});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(Categories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (categories != null) {
      data['categories'] = categories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Categories {
  int? categoryId;
  String? title;
  String? imageUrl;
  int? hasSubcategories;
  String? fullName;
  String? categoryDescription;

  Categories(
      {this.categoryId,
      this.title,
      this.imageUrl,
      this.hasSubcategories,
      this.fullName,
      this.categoryDescription});

  Categories.fromJson(Map<String, dynamic> json) {
    categoryId = json['categoryId'];
    title = json['title'];
    imageUrl = json['imageUrl'];
    hasSubcategories = json['hasSubcategories'];
    fullName = json['fullName'];
    categoryDescription = json['categoryDescription'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['categoryId'] = categoryId;
    data['title'] = title;
    data['imageUrl'] = imageUrl;
    data['hasSubcategories'] = hasSubcategories;
    data['fullName'] = fullName;
    data['categoryDescription'] = categoryDescription;
    return data;
  }
}
