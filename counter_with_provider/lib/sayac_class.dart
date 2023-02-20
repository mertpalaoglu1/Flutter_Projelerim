import 'package:flutter/material.dart';

class Sayac_Class with ChangeNotifier {
  int _sayac = 0;
  int get Yazdir => _sayac;
  void Arttir() {
    _sayac++;
    notifyListeners();
  }
}
