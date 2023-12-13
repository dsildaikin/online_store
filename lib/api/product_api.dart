import 'dart:convert';
import 'package:online_store/api/base_api.dart';
import 'package:http/http.dart' as http;
import 'package:online_store/models/products_list_model/products_list_model.dart';

class ProductApi extends BaseApi {
  static const String productsListPath = 'api/common/product/list';

  static Future<ProductsListModel> fetchProductsListModel(
      String categoryId) async {
    var queryParameters = {
      'appKey': BaseApi.appKey,
      'categoryId': categoryId,
    };
    final uri = Uri.http(BaseApi.baseUrl, productsListPath, queryParameters);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      return ProductsListModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Error: ${response.reasonPhrase}');
    }
  }
}
