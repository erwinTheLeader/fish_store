import 'dart:convert';

import 'package:fish_store/models/categories_models.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class CategoriesController extends GetxController {


  @override


  Future<List<Categories>> fetchData() async {
  final response =
      await http.get(Uri.parse("https://flouka.ma/api/categories"));
  print(response.body);
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => Categories.fromJson(data)).toList();
  } else {
    throw Exception('Unexpected error occured!');
  }
}



}


