import 'package:flutter/material.dart';
import 'package:uado/models/User.dart';

class AuthProvider extends ChangeNotifier {
  bool isLoading = false;

  User? _user = null;

  User? get user => user;


  Future<void> register(User user) async{
    _user = user;
    notifyListeners();
  }
  Future<bool> login(User user) async{
    bool result = false;
    if(_user != null && user == _user ){

      result = true;
      notifyListeners();

    } else{
      notifyListeners();
    }

    return result;
  }
}
