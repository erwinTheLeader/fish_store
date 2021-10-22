// ignore_for_file: prefer_const_constructors
import 'package:get/get.dart';
import 'package:fish_store/controllers/categories_controller.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controllerCategories = Get.put(CategoriesController());

  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter API and ListView Example',
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text('Categories'),
          centerTitle: true,
        ),
        body: Center(
          child: FutureBuilder<List<Categories>>(
            future: controllerCategories.fetchData() ,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Categories>? data = snapshot.data;
                return ListView.builder(
                    itemCount: data!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        color: Color(0xFFF48CAE4),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 20),
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(CatigoriPage());
                                },
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  elevation: 10,
                                  margin: EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.vertical(
                                            bottom: Radius.circular(20.0),
                                            top: Radius.circular(20.0)),
                                        child: Image(
                                            image: AssetImage(
                                                'assets/freezed_fish.jpg')),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10),
                                        child: Text(
                                          data[index].title,
                                          style: TextStyle(
                                              color: Colors.blue[900],
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    });
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              // By default show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}

class CatigoriPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('CatigoriPage'),
    );
  }
}
