import 'package:flutter/material.dart';
import 'package:giris_sayfasi_getx/auth_controller.dart';
import 'package:giris_sayfasi_getx/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
class KayitSayfasi extends StatelessWidget {
  const KayitSayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var sifreController = TextEditingController();
    return SafeArea(
      child: Scaffold(
      resizeToAvoidBottomInset: false,
        appBar: AppBar(
            centerTitle: true,
            title: Text(
              'KAYIT SAYFASI',
              style: GoogleFonts.basic(textStyle: TextStyle(fontSize: 20)),
            )),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Image(
                  image: NetworkImage(
                      'https://www.shareicon.net/data/256x256/2015/09/16/101936_hacker_512x512.png')),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  style: GoogleFonts.aladin(textStyle: TextStyle(fontSize: 40)),
                  'HOS GELDINIZ',
                ),
              ),
              Text('Bir Hesap Oluşturun:', style: GoogleFonts.atomicAge()),
              Card(
                child: SafeArea(
                  child: TextField(
                    controller: emailController,
                    obscureText: false,
                    decoration: InputDecoration(
                      icon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                      labelText: 'E posta',
                    ),
                  ),
                ),
              ),
              Card(
                child: SafeArea(
                  child: TextField(
                    controller: sifreController,
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(Icons.password),
                      border: OutlineInputBorder(),
                      labelText: 'Şifre',
                    ),
                  ),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text('Zaten Kayıtlı mısın?'),
                TextButton(
                  onPressed: () {
                    Get.to(GirisSayfasi());
                  },
                  child: Text(
                    'Giriş yap',
                    style: GoogleFonts.amiko(
                        textStyle: TextStyle(
                            fontSize: 18, color: Colors.grey.shade400)),
                  ),
                ),
              ]),
            ],
          ),
        ),
      floatingActionButton: FloatingActionButton(
            onPressed: () {
              AuthController.instance.register(emailController.text.trim(), sifreController.text.trim());//trim methodu yazının yanlarındaki boşlukları siler.
              },
            tooltip: 'Kayıt olun',
            shape:
                BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: Text('Kayıt'),
          ),
      ),
    );
  }
}
