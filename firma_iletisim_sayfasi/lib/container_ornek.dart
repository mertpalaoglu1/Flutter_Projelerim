import 'package:flutter/material.dart';

void main() {
  runApp(BenimUyg());
}

class BenimUyg extends StatelessWidget {
  const BenimUyg({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lime,
        body: SafeArea(
          //daha güvenli bir yere alıyor kendini
          child: Transform(
            transform: Matrix4.rotationZ(-0.2),
            alignment: FractionalOffset
                .center, //Transform widgeti içine aldık ve fractional offset ile merkezden döndürmesini sağladık
            child: Container(
                //transform: Matrix4.rotationZ(-0.2),//z ekseninde radyan cinsinden açı verdi. Sol köşeden döndürür.
                width: 200, //genişlik
                height: 100, //boy
                alignment: Alignment.bottomRight, //yön
                margin: EdgeInsets.symmetric(
                    vertical: 30, horizontal: 35), //containera çerçeve yaptık
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadiusDirectional.circular(
                      16.0), //köşeleri yuvarladı.
                  color: Colors.white,
                ), //hem şekil hem renk
                padding: EdgeInsets.fromLTRB(
                    20, 10, 20, 100), // SOL SAĞ ÜST ALT DEĞER
                child: Transform(
                    transform: Matrix4.rotationZ(-0.2),
                    alignment: FractionalOffset.center,
                    child: Text('Merdo Palo'))), //yazıyı döndürdük.
          ),
        ),
      ),
    );
  }
}
