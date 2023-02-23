import 'package:flutter/material.dart';

class Sayac_Class with ChangeNotifier { //changenotifier özelliklerini kullanabiliyor.
  int _sayac = 0;
  int get Yazdir => _sayac; //yazdir fonksiyonu sayac'ı getirecek.
  void Arttir() {
    _sayac++; //sayacı 1 arttırıyor.
    notifyListeners(); //provider'a gönderip dinleyenleri bilgilendiriyor.
  }
}
