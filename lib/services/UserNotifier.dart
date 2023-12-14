import 'package:flutter/material.dart';
import 'package:crud_apps/model/User.dart';

class UserNotifier with ChangeNotifier {
  List<User> _userList = [];

  List<User> get userList => _userList;

  void setUsers(List<User> users) {
    _userList = users;
    notifyListeners();
  }

  void deleteUser(int userId) {
    _userList.removeWhere((user) => user.id == userId);
    notifyListeners();
  }
}
