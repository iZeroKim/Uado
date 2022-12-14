import 'package:flutter/material.dart';
import 'package:uado/models/Part.dart';

class CartProvider extends ChangeNotifier {
  final List<Part> _items = [];

  List<Part> get items => _items;

  int _totalPrice = 0;

  int get totalPrice => _totalPrice;

  void add(Part part) {
    _items.add(part);
    _totalPrice += part.cost;
    notifyListeners();
  }

  void clear() {
    _items.clear();
    _totalPrice = 0;
    notifyListeners();
  }

  void remove(Part part) {
    _items.remove(part);
    _totalPrice -= part.cost;
    notifyListeners();
  }

  void decrementQnty(Part part) {
    _totalPrice -= part.quantity;
  }
}
