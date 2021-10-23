// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:fish_store/controllers/choose_city_controller.dart';
import 'package:get/get.dart';

class ChooseCityWidet extends StatelessWidget {
  const ChooseCityWidet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Specify type as a Controller
    return GetBuilder<CityController>(
        init: CityController(), //initialize with the CityController controller.
        builder: (controller) {
          return Column(children: [
            Text(
              'Select Ville:',
            ),
            SizedBox(height: 10.0),
            DropdownButton<String>(
                underline: Container(
                  height: 5,
                ),
                value: controller.selectedCity,
                onChanged: (String? newValue) {
                  controller.onSelected(newValue!);
                },
                elevation: 10,
                items: [
                  DropdownMenuItem(
                    child: Text("Casablanca",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        )),
                    value: 'Casablanca',
                  ),
                  DropdownMenuItem(
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed('/categories');
                      },
                      child: Text("Marrakesh",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                          )),
                    ),
                    value: 'Marrakesh',
                  ),
                ]),
          ]);
        });
  }
}
