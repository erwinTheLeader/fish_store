class Product {
  final int id;
  final String name;
  final double startPrice;
  final int pieces;
  final String calibrate;
  final double finalPrice;

  Product(
      this.calibrate,
      this.finalPrice,
      {
      required this.id,
      required this.name,
      required this.startPrice,
      required this.pieces,
      
      });
}
