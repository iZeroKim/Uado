import 'package:flutter/material.dart';
import 'package:uado/models/User.dart';
import 'package:uado/services/auth_services.dart';

class AuthProvider extends ChangeNotifier {
  bool isLoading = false;
  bool loadingProfile = true;

  AppUser? _user = null;

  AppUser? get user => user;


  Future<void> register(AppUser user) async{
    _user = user;
    notifyListeners();
  }
  Future<bool> login(AppUser user) async{
    bool result = false;
    if(_user != null && user == _user ){

      result = true;
      notifyListeners();

    } else{
      notifyListeners();
    }

    return result;
  }

  Future<AppUser?> getUserProfile() async{
    AppUser? currentUser;
    currentUser = await AuthService().getUserProfile();
    return currentUser;
  }

}
