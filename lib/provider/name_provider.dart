import 'package:flutter/material.dart';

class NameProvider with ChangeNotifier {
  String _name = 'Rahul';

  String get name => _name;

  void changeName({required String newName}) {
    _name = newName;
    notifyListeners();
  }

  void clearName() {
    _name = '';
    notifyListeners();
  }
}
