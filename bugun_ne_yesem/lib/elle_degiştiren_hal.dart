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
                    setState(() {
                      corbaNo=Random().nextInt(5)+1;//0-4 aralığı +1--> 1-5 arası oldu.
                      tatliNo=Random().nextInt(5)+1; 
                      yemekNo=Random().nextInt(5)+1;  
                    });
                  
                    
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
                    setState(() {
                      yemekNo=Random().nextInt(5)+1; 
                      tatliNo=Random().nextInt(5)+1; 
                      corbaNo=Random().nextInt(5)+1; 
                    });
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
                    setState(() {
                        tatliNo=Random().nextInt(5)+1;
                        corbaNo=Random().nextInt(5)+1;
                        yemekNo=Random().nextInt(5)+1;
                    });
                  },
                  child: Image.asset('lib/images/tatli_$tatliNo.jpg')),
            ),
          ), //flex propertysi bölüyor paylara (expanded)
        ],
      ),
    );
  }
}
