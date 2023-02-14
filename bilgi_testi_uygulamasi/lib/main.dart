import 'constants.dart';
import 'test_veri.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BilgiTesti());
}

class BilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.indigo[700],
            body: SafeArea(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: SoruSayfasi(),
            ))));
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  List<Widget> secimler = [];
//children içine liste veriyoruz aslında. O listeyi buraya aldık.

  TestVeri test_1 = TestVeri(); //az önceki soruların hepsine sahip

  void butonFonksiyonu(bool secilenButon) {
    if (test_1.testBittiMi() == true) {
      //Eğer son soruya gelmişsek:
      //alert dialog gelecek.
      setState(() {
        test_1.getSoruYaniti() == secilenButon
            ? secimler.add(dogruIconu)
            : secimler.add(yanlisIconu);
       }); // son sorunun cevabını görüntüleyebilmek için.
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            title: Text("Bravo Test Bitti."),
            //content: Text("Alert Dialog body"),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
              TextButton(
                child: Text("Başa Dön."),
                onPressed: () {
                  Navigator.of(context).pop(); //post it kaldırır gibi eklenen katmanı(widgeti) kaldırıyor.
                  setState(() {
                    test_1.testiSifirla(); //testi başa alacak testsırasi sifirlicak
                    secimler = []; //secimleri sıfırla.
                  });
                },
              ),
            ],
          );
        },
      );
    } 
    else {
        setState(() {
          if (test_1.getSoruYaniti() == secilenButon) {
            secimler.add(dogruIconu);
          } else {
            secimler.add(yanlisIconu);
          }
          test_1.sonrakiSoru();
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                test_1.getSoruMetni(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(
          //Wrap widget row gibi ama aşağı satıra devam edebiliyor.
          //alignment: WrapAlignment.end, sondan başa öteler.
          spacing: 2.5, //iconlar arası boşluk.
          runSpacing: 2.5, //icon satırları arası boşluk.
          children: secimler,
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: ElevatedButton(
                          onPressed: () {
                            butonFonksiyonu(false);
                          },
                          child: Icon(
                            color: Colors.red,
                            Icons.thumb_down,
                            size: 30.0,
                          ),
                        ))),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: ElevatedButton(
                          child: Icon(
                            Icons.thumb_up,
                            size: 30.0,
                            color: Colors.green,
                          ),
                          onPressed: () {
                            butonFonksiyonu(true);
                          },
                        ))),
              ])),
        )
      ],
    );
  }
}
