import 'package:flutter/material.dart';
import 'dart:math'; //random sayacı için

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  const BenimUygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Bugun ne yesem?',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;
  List<String> corbaAdlari = [
    'Mercimek Çorbası',
    'Tarhana Çorbası',
    'Tavuksuyu Çorbası',
    'Düğün Çorbası',
    'Yoğurtlu Çorba'
  ];
  List<String> yemekAdlari = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];
  List<String> tatliAdlari = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma'
  ];
  void RastgeleSec() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1; //0-4 aralığı +1--> 1-5 arası oldu.
      tatliNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                  ),
                  onPressed:
                      RastgeleSec, //rastgelesec() yapmadık çünkü void fonksiyon bir şey döndürmüyor.
                  child: Image.asset('lib/images/corba_$corbaNo.jpg')),
            ),
          ), //cocugunu ekstra alanı doldurması için zorluyor.
          Text(
            corbaAdlari[corbaNo - 1], //1.eleman için 0. isimi çağırması lazım.
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5.0,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  style: TextButton.styleFrom(foregroundColor: Colors.black),
                  onPressed: RastgeleSec,
                  child: Image.asset('lib/images/yemek_$yemekNo.jpg')),
            ),
          ), //kardeş payi yaptilar. ayni sütun içinde
          Text(
            yemekAdlari[yemekNo - 1],
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          Container(
            width: 200,
            child: Divider(height: 5.0, color: Colors.black),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  style: TextButton.styleFrom(foregroundColor: Colors.black),
                  onPressed: RastgeleSec,
                  child: Image.asset('lib/images/tatli_$tatliNo.jpg')),
            ),
          ), //flex propertysi bölüyor paylara (expanded)
          Text(
            tatliAdlari[tatliNo - 1],
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          Container(
            width: 200,
            child: Divider(height: 5.0, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
