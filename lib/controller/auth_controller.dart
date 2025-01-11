import 'package:flutter/material.dart';
import 'package:flutter_sesi4/model/photo.dart';
import 'package:flutter_sesi4/model/repository/auth_repository.dart';

class AuthController extends ChangeNotifier{
  User? _user;

  User ? get user => _user;

  Future<User?> fetch() async {
    _user = await AuthRepository().getUser();
    notifyListeners();
  }
  
  login(User user) async {
    _user = await AuthRepository().save(user);
    notifyListeners();
  }
  
  logout() async {
    _user = await AuthRepository().delete();
    notifyListeners();
  }
}