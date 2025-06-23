import 'package:flutter/material.dart';

class ColorProvider with ChangeNotifier {
  //colors
  Color _color = Colors.grey;

  Color get color => _color;

  void setColor(Color color) {
    _color = color;
    notifyListeners();
  }

  //Color Name
  String _colorName = 'Grey';
  String get colorName => _colorName;

  void setColorName(String newColorName) {
    _colorName = newColorName;
  }
}
