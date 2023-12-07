import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:online_store/APIs/base_api.dart';
import 'package:http/http.dart' as http;
import 'package:online_store/models/categories_list.dart';

// Future<CategoriesListModel> fetchCategoryList() async {
//   final response = await http.get(
//       Uri.parse('${BaseApi.baseUrl}category/list?&appKey=${BaseApi.appKey}'));
//   if (response.statusCode == 200) {
//     return CategoriesListModel.fromJson(
//         jsonDecode(response.body) as Map<String, dynamic>);
//   } else {
//     throw Exception('Failed to load categories');
//   }
// }

Future<BaseModelCategories> fetchCategoriesList() async {
  const url = '${BaseApi.baseUrl}category/list?&appKey=${BaseApi.appKey}';
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    debugPrint(response.body);
    return BaseModelCategories.fromJson(json.decode(response.body));
  } else {
    throw Exception('Error: ${response.reasonPhrase}');
  }
}
