import 'dart:convert';
import 'package:online_store/api/base_api.dart';
import 'package:http/http.dart' as http;
import 'package:online_store/models/products_list_model/products_list_model.dart';

Future<ProductsListModel> fetchProductsListModel(int categoryId) async {
  final url =
      '${BaseApi.baseUrl}product/list?categoryId=$categoryId&appKey=${BaseApi.appKey}';
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    return ProductsListModel.fromJson(json.decode(response.body));
  } else {
    throw Exception('Error: ${response.reasonPhrase}');
  }
}
