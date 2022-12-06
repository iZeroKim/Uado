import 'package:flutter/material.dart';
import 'package:uado/models/Club.dart';
import 'package:uado/services/club_services.dart';

class ClubProvider extends ChangeNotifier {
  final ClubServices _clubServices = ClubServices();
  bool isLoading = false;

  List<Club> _clubs = [];

  List<Club> get clubs => _clubs;

  Future<void> getAllClubs() async {
    isLoading = true;
    notifyListeners();

    final response = await _clubServices.getAllClubs();

    _clubs = response;
    isLoading = false;
    notifyListeners();
  }

  Future<void> addClub(Club club) async{
    _clubServices.addClub(club);
    notifyListeners();
  }
}
