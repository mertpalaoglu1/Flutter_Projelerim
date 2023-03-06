import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:giris_sayfasi_getx/auth_controller.dart';
import 'package:get/get.dart';
import 'package:giris_sayfasi_getx/splash_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController()));
  runApp(BenimUygulamam());
}
///Kayıt olan kullanıcı için firestore’da users adında collection açılacak.
class BenimUygulamam extends StatelessWidget {
  const BenimUygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Colors.grey)),
      home: SplashScreen(), //yükleme ekranı açıyor.
    );
  }
}

