import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:giris_sayfasi_getx/login_page.dart';
import 'package:giris_sayfasi_getx/profile_page.dart';

class AuthController extends GetxController {
  
  static AuthController instance =
      Get.find(); //auth controllera diğer sayfalardan ulaşabileceğiz.
  late Rx<User?> _user; // email, şifre gibi özellikleri tutacak olan user.
  FirebaseAuth auth = FirebaseAuth
      .instance; // bu değişkeni kullanıp firebasedeki bir sürü özelliğe(propertyler) ulaşabileceğiz.

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth
        .currentUser); //firebase instance tipindeki current useri kendi değişkenimize tipini değiştirip atadık.
    _user.bindStream(auth
        .userChanges()); // userimizi stream'a bağladık. userda bir şey değişince user değişkeni bilgilenecek.
    ever(_user,
        _initialScreen); //bir şey değişince user haberdar olucak ve initialscreen fonksiyonu çalışacak.
  }

  _initialScreen(User? user) {
    if (user == null) {
      //giriş yapmadıysa.
      print('giriş sayfasi');
      Get.offAll(() => GirisSayfasi());
    } else {
      //yaptıysa.
      Get.offAll(() => ProfilSayfasi(email:user.email.toString(),userid: user.uid.toString(),));
    }
  }

  void register(String email, sifre) async {
    try {
    await auth.createUserWithEmailAndPassword(email: email, password: sifre);
    } catch (e) { //hata yakalama kısmı
      Get.snackbar('Kullanıcı Hakkında', 'Kullanıcı Mesajı',
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            'Hesap oluşturma başarısız.',
            style: TextStyle(color: Colors.white),
          ),
          messageText: Text(e.toString()));
    }
  }
  
  void login(String email, sifre) async {
    try {
    await auth.signInWithEmailAndPassword(email: email, password: sifre);
    } catch (e) {
      Get.snackbar('Giriş Hakkında', 'Giriş Mesajı',
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            'Giriş yapma başarısız.',
            style: TextStyle(color: Colors.white),
          ),
          messageText: Text(e.toString()));
    }
  }

  void logout () async{
    await auth.signOut();
  }

}
