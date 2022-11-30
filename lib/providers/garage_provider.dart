import 'package:flutter/material.dart';
import 'package:uado/services/garage_services.dart';
import 'package:uado/models/Garage.dart';

class GarageProvider extends ChangeNotifier{
  final GarageServices _garageServices = GarageServices();
  bool isLoading = false;

  List<Garage> _garages = [];
  List<Garage> get garages => _garages;

  Future<void> getAllGarages() async{
    isLoading = true;
    notifyListeners();

    final response = await _garageServices.getAllGarages();

    _garages = response;
    isLoading = false;
    notifyListeners();
  }


}