import 'package:flutter/material.dart';
import 'package:giris_sayfasi_getx/auth_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilSayfasi extends StatelessWidget {
  String email;
  String userid;
   ProfilSayfasi({Key? key, required this.email,required this.userid}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'PROFİL SAYFASI',
            style: GoogleFonts.basic(textStyle: TextStyle(fontSize: 20)),
          ),
        ),
        body: Center(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: const Image(
                  image: NetworkImage(
                      'https://store.donanimhaber.com/51/ac/96/51ac9636fa6ce6892c296bd4f3a3efa5.jpg')),
            ),
            Text(
              style: GoogleFonts.aladin(textStyle: TextStyle(fontSize: 40)),
              'HOS GELDINIZ',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Kullanıcı ID: $userid' ),
            ),
            Text('Kullanıcı E-posta:$email'),
            TextButton(
              child: Text(
                'ÇIKIS YAP',
                style: GoogleFonts.amiko(
                    textStyle:
                        TextStyle(fontSize: 18, color: Colors.grey.shade400)),
              ),
              onPressed: () {
                AuthController.instance.logout();
              },
            ),
          ]),
        ),
      ),
    );
  }
}
