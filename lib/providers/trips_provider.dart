import 'package:flutter/material.dart';
import 'package:uado/models/DayTrips.dart';
import 'package:uado/models/Mechanic.dart';
import 'package:uado/services/freelancer_services.dart';
import 'package:uado/services/trip_services.dart';

class TripProvider extends ChangeNotifier {
  final TripServices _tripServices = TripServices();
  bool isLoading = false;

  List<DayTrip> _dayTrips = [];

  List<DayTrip> get dayTrips => _dayTrips;

  Future<void> getAllDayTrips() async {
    isLoading = true;
    notifyListeners();

    final response = await _tripServices.getAllTrips();

    _dayTrips= response;
    isLoading = false;
    notifyListeners();
  }
}
