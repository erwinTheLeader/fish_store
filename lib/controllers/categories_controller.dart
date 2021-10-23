import 'dart:convert';

import 'package:fish_store/models/categories_models.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class CategoriesController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  Future<List<Categories>> fetchData() async {
    final response =
        await http.get(Uri.parse("https://flouka.ma/api/categories"));
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse
          .map((data) => Categories.fromJson(data))
          .toList(); // returns an Array so the ListViewer can work with
    } else {
      throw Exception('Unexpected error occured!');
    }
  }
}
