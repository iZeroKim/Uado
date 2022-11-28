import 'package:flutter/material.dart';
import 'package:uado/services/mechanic_services.dart';
import 'package:uado/models/Mechanic.dart';

class MechanicProvider extends ChangeNotifier{
  final MechanicServices _mechanicServices = MechanicServices();
  bool isLoading = false;

  List<Mechanic> _mechanics = [];
  List<Mechanic> get mechanics => _mechanics;

  Future<void> getAllMechanics() async{
    isLoading = true;
    notifyListeners();

    final response = await _mechanicServices.getAllMechanics();

    _mechanics = response;
    isLoading = false;
    notifyListeners();
  }
}