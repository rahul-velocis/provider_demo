import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int _counter = 0; //this variable cannot be directly access from outside
  int get counter => _counter;
  void increaseCounter() {
    _counter++;
    notifyListeners(); //this function updates the values of the counter all over the app
  }

  void decreaseCounter() {
    _counter--;
    notifyListeners();
  }
}


