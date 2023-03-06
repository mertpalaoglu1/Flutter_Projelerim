import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:giris_sayfasi_getx/auth_controller.dart';
import 'package:giris_sayfasi_getx/register_page.dart';
import 'package:google_fonts/google_fonts.dart';

class GirisSayfasi extends StatefulWidget {
  @override
  State<GirisSayfasi> createState() => _GirisSayfasiState();
}
///giriş yapma özelliği eklenecek.
///controller eklenecek.
class _GirisSayfasiState extends State<GirisSayfasi> {
  @override
  Widget build(BuildContext context) {

    TextEditingController emailController= TextEditingController();
    TextEditingController sifreController= TextEditingController();

    return SafeArea(
      child: Scaffold(
      resizeToAvoidBottomInset: false,
          appBar: AppBar(
              title: Text(
                'GİRİŞ SAYFASI',
                style: GoogleFonts.basic(textStyle: TextStyle(fontSize: 20)),
              ),
              centerTitle: true),
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
                    style:
                        GoogleFonts.aladin(textStyle: TextStyle(fontSize: 40)),
                    'HOS GELDINIZ',
                  ),
                ),
                Text('Hesabiniza giris yapin:', style: GoogleFonts.atomicAge()),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Hesabın Yok mu?'),
                    TextButton(
                      onPressed: () {
                        Get.to(()=>KayitSayfasi());},
                      child: Text(
                        'Kayıt ol',
                        style: GoogleFonts.amiko(textStyle: TextStyle(
                            fontSize: 18, color: Colors.grey.shade400)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {AuthController.instance.login(emailController.text.trim(), sifreController.text.trim());},
            tooltip: 'Giriş Yapin',
            shape:
                BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: Text('Giriş'),
          )),
    );
  }
}
