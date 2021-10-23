import 'package:get/state_manager.dart';

class CityController extends GetxController {
   var selectedCity = "Marrakesh";

  void onSelected(String value) {
    selectedCity = value;
    update();
  }
  
}
