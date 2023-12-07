import 'dart:convert';
import 'package:online_store/APIs/base_api.dart';
import 'package:http/http.dart' as http;
import 'package:online_store/models/categories_list.dart';

Future<BaseModelCategories> fetchCategoriesList() async {
  const url = '${BaseApi.baseUrl}category/list?&appKey=${BaseApi.appKey}';
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    return BaseModelCategories.fromJson(json.decode(response.body));
  } else {
    throw Exception('Error: ${response.reasonPhrase}');
  }
}
