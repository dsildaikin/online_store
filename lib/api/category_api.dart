import 'dart:convert';
import 'package:online_store/api/base_api.dart';
import 'package:http/http.dart' as http;
import 'package:online_store/models/categories_list_model/categories_list_model.dart';

class CategoryApi extends BaseApi {
  static const String categoriesListPath = 'api/common/category/list';

  static Future<CategoriesListModel> fetchCategoriesListModel() async {
    var queryParameters = {
      'appKey': BaseApi.appKey,
    };
    var uri = Uri.http(BaseApi.baseUrl, categoriesListPath, queryParameters);
    var response = await http.get(uri);

    if (response.statusCode == 200) {
      return CategoriesListModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Error: ${response.reasonPhrase}');
    }
  }
}
