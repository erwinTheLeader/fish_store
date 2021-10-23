import 'package:fish_store/views/choose_a_category.dart';
import 'package:flutter/material.dart';
import 'package:fish_store/views/home.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: "buy Fish",
    theme: ThemeData(
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.blue,
      ).copyWith(secondary: Colors.blue[200]),
    ),

    // ! Warning: When using initialRoute, don’t define a home property.

    initialRoute: '/',
    getPages: [
      GetPage(name: '/', page: () => Home()),
      GetPage(
        name: '/categories',
        page: () => const ChooseACategory(),
      ),
    ],
  ));
}
