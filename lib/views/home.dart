// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fish_store/Widgets/drop_down.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF48CAE4),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 5)),
            padding: EdgeInsets.all(20),
            child: Center(
              child: const Text(
                'LOGO HERE',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(child: ChooseCityWidet()),
        ],
      ),
    );
  }
}
