import 'Review.dart';
class Part{
  final String name, brand, seller, thumbnail;
  final int cost;
  final Map<String, String> part_description;
  final Review? review;
  int quantity;

  Part(this.review, {required this.name, required this.brand, required this.seller, required this.cost, required this.part_description, this.quantity = 1, required this.thumbnail});

  void increaseQuantity(){
    quantity++;
  }
  void decreaseQuantity(){
    quantity++;
  }
}