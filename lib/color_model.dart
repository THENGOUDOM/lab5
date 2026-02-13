import 'package:flutter/material.dart';

class ColorModel extends ChangeNotifier {
  Color _selectedColor = Colors.blue;

  Color get selectedColor => _selectedColor;

  void changeColor(Color color) {
    _selectedColor = color;
    notifyListeners();
  }
}