import 'dart:convert';
import 'package:online_store/APIs/base_api.dart';
import 'package:http/http.dart' as http;
import 'package:online_store/models/product.dart';

Future<ProductsListModel> fetchProductList({required int? categoryId}) async {
  final response = await http.get(Uri.parse(
      '${BaseApi.baseUrl}category/list?categoryId=$categoryId&appKey=${BaseApi.appKey}'));
  if (response.statusCode == 200) {
    return ProductsListModel.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    throw Exception('Failed to load album');
  }
}
