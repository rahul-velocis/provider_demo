import 'package:flutter/material.dart';

class ColorProvider with ChangeNotifier {
  Color _color = Colors.grey;

  Color get color => _color;

  void setColor(Color color) {
    _color = color;
  }
}
