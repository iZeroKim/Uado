import 'Review.dart';
class Part{
  final String name, brand, seller;
  final int cost;
  final Map<String, String> part_description;
  final Review? review;

  Part(this.review, {required this.name, required this.brand, required this.seller, required this.cost, required this.part_description});


}