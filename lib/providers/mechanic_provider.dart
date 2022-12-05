import 'package:flutter/material.dart';
import 'package:uado/models/Mechanic.dart';
import 'package:uado/services/freelancer_services.dart';

class MechanicProvider extends ChangeNotifier {
  final FreelancerServices _mechanicServices = FreelancerServices();
  bool isLoading = false;

  List<Mechanic> _mechanics = [];

  List<Mechanic> get mechanics => _mechanics;

  Future<void> getAllMechanics() async {
    isLoading = true;
    notifyListeners();

    final response = await _mechanicServices.getAllMechanics();

    _mechanics = response;
    isLoading = false;
    notifyListeners();
  }
}
