import 'package:firebase_data_management/dokuman_dinleme.dart';
import 'package:firebase_data_management/koleksiyon_dinleme.dart';
import 'package:firebase_data_management/veri_ekleme.dart';
import 'package:firebase_data_management/veri_guncelleme.dart';
import 'package:firebase_data_management/veri_okuma.dart';
import 'package:firebase_data_management/veri_silme.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

/// EKLENECEKLER: ARASINDA NAVİGATİON DÜZELTİLECEK.***
/// GOOGLE FİRESTORE ANDROİD KURULUMU, İŞLEMİ YAPAN FONKSİYONLAR, BUTONLARA FONKSİYONLARIN KONULMASI.
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) =>
            const MyHomePage(title: 'Flutter Data Managment Demo'),
        '/dokuman_dinleme': (BuildContext context) => DokumanDinleme(),
        '/koleksiyon_dinleme': (BuildContext context) => KoleksiyonDinleme(),
        '/veri_ekleme': (BuildContext context) => VeriEkleme(),
        '/veri_silme': (BuildContext context) => VeriSilme(),
        '/veri_okuma': (BuildContext context) => VeriOkuma(),
        '/veri_guncelleme': (BuildContext context) => VeriGuncelleme(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  'Data Management Main Page',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: buildTextButton(
                      Colors.blue,
                      'Koleksiyon Dinleme',
                      () {
                        Navigator.pushNamed(context, 'koleksiyon_dinleme');
                      },
                    )),
                    Expanded(
                        child: buildTextButton(Colors.yellow, 'Döküman Dinleme',
                            () {
                      Navigator.pushNamed(context, 'dokuman_dinleme');
                    })),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: buildTextButton(Colors.red, 'Veri Ekleme', () {
                      Navigator.pushNamed(context, 'veri_ekleme');
                    })),
                    Expanded(
                        child: buildTextButton(Colors.lime, 'Veri Okuma', () {
                      Navigator.pushNamed(context, 'veri_okuma');
                    })),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: buildTextButton(Colors.white, 'Veri Silme', () {
                      Navigator.pushNamed(context, 'veri_silme');
                    })),
                    Expanded(
                        child: buildTextButton(Colors.purple, 'Veri Güncelleme',
                            () {
                      Navigator.pushNamed(context, 'veri_guncelleme');
                    })),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

TextButton buildTextButton(
  Color renk,
  String yazi,
  Function onPressed,
) {
  return TextButton(
    onPressed: () {
      onPressed;
      },
    child: Container(
        height: 50,
        width: 200,
        child: Text(
          style: TextStyle(fontSize: 20, color: Colors.black),
          yazi,
        ),
        color: renk),
  );
}
