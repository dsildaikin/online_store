import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:online_store/APIs/base_api.dart';
import 'package:online_store/models/category.dart';

Future<Category> fetchCategory() async {
  final response = await http.get(
    Uri.parse('${baseUrl}category/list?&$appKey'),
  );
  final responseJson = jsonDecode(response.body) as Map<String, dynamic>;

  return Category.fromJson(responseJson);
}
