import 'package:flutter/material.dart';

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
  const YemekSayfasi({super.key});

  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo=1;
  int yemekNo=1;
  int tatliNo=1;
  
  
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
                  onPressed: () {
                    //içinde ne varsa tıklanınca yapıyor
                    print('Corba butonu=$corbaNo');
                    corbaNo++;
                  },
                  child: Image.asset('lib/images/corba_$corbaNo.jpg')),
            ),
          ), //cocugunu ekstra alanı doldurması için zorluyor.
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  style: TextButton.styleFrom(foregroundColor: Colors.black),
                  onPressed: () {
                    print('yemek butonu= $yemekNo');
                    yemekNo++;
                  },
                  child: Image.asset('lib/images/yemek_$yemekNo.jpg')),
            ),
          ), //kardeş payi yaptilar. ayni sütun içinde
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  style: TextButton.styleFrom(foregroundColor: Colors.black),
                  onPressed: () {
                    print('tatli butonu=$tatliNo.');
                    tatliNo++;
                  },
                  child: Image.asset('lib/images/tatli_$tatliNo.jpg')),
            ),
          ), //flex propertysi bölüyor paylara (expanded)
        ],
      ),
    );
  }
}