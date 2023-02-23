import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

ThemeData yesil = ThemeData(
    primarySwatch: Colors.green,
    buttonTheme: ButtonThemeData(buttonColor: Colors.green.shade300),
    scaffoldBackgroundColor: Colors.green.shade50);

ThemeData mavi = ThemeData(
  primarySwatch: Colors.blue,
  buttonTheme: ButtonThemeData(buttonColor: Colors.blue.shade300),
  scaffoldBackgroundColor: Colors.blue.shade50,
);

class TemaRengiBilgisi with ChangeNotifier {
  static late SharedPreferences _sharedPrefObject; //static=elimizde bir sınıf var obje oluşturmadan kullanabileceğim bir örnek oluşturuyor demek.

  bool _yesilMi = true;
  bool get yesilMi => _yesilMi; //yeşil mi döndüren getter fonksiyon..
  ThemeData get temaRengi {
    return _yesilMi ? yesil : mavi;
  }

  void temaDegistir() {
    _yesilMi = !_yesilMi;
    temayiSharedPrefeKaydet(_yesilMi); //her tema değiştirdiğinde veriyi shared prefe kaydediyor.
    notifyListeners();
  }

  Future<void> createSharedPrefObject() async {
    //asenkron işlem uygulama ilk açıldıgında veri çekecek.
    _sharedPrefObject = await SharedPreferences.getInstance();
  }

  void temayiSharedPrefeKaydet(bool value) {
    _sharedPrefObject.setBool('temaBilgisi', value);
  }

  void temayiSharedPreftenYukle() async {
   // await createSharedPrefObject(); -> kendine ihtiyacın olan şeyi oluşturup sonra atamaya yarar ama mainde aynısı var zaten şuanda.
    _yesilMi=_sharedPrefObject.getBool('temaBilgisi')?? true;
    
    
    /*if (_sharedPrefObject.getBool('temaBilgisi') == null) {
        _yesilMi == true;
    } else {
      _yesilMi = _sharedPrefObject
          .getBool('temaBilgisi')!; //yeni açıldığında bundan çekecek veriyi.
    }*/
  }
}
