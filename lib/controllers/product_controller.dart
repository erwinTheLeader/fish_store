import 'package:get/get.dart';
import 'package:fish_store/models/product.dart';


class ProductController extends GetxController {

  final List<Product> _items = [
    Product(
      "1.5kg - 1.8kg",
      0.0,
      id: 10,
      name: "Blue fish",
      startPrice: 200, 
      pieces: 1,
    ),

    Product(
      "",
      0.0,
      id: 12,
      name: "Snow fish",
      startPrice: 150, 
      pieces: 1,
      ),

    Product(
      "",
      0.0,
      id: 15,
      name: "White fish",
      startPrice: 120, 
      pieces: 1,
      ),
    
      
    Product(
      "1.5kg - 1.8kg",
      0.0,
      id: 65,
      name: "Mickey Fish",
      startPrice: 140, 
      pieces: 1,
      )
  ];

  List<Product> get items{
    return [..._items];
  }

  Product findProductById(int id){
    return _items.firstWhere((element) => element.id == id);
  }

}