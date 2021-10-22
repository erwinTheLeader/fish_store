import 'package:flutter/material.dart';
import 'package:fish_store/views/home.dart';
import 'package:get/get.dart';

void main() {
  runApp( GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: "buy Fish",
    theme: ThemeData(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.blue,
    ).copyWith(
      secondary: Colors.blue[200]),
    ),

    home: Home(),
    )
  );
}

