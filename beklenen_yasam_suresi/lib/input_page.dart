import 'package:flutter/material.dart';
import 'package:ortalama_yasam_suresi/constants.dart';
import 'package:ortalama_yasam_suresi/result_page.dart';
import 'package:ortalama_yasam_suresi/user_data.dart';
import 'icon_cinsiyet.dart';
import 'my_container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String? seciliCinsiyet;
  double icilenSigara = 0.0;
  double yapilanSpor = 0.0;
  int boy = 170;
  int kilo = 65;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: MyContainer(
                      child: Row(children: [
                    SizedBox(
                      width: 10,
                    ),
                    RotatedBox(
                      child: Text(
                        'BOY',
                        style: metinStili,
                      ),
                      quarterTurns:
                          -1, //saat yönünün tersine 90 derece çevirdi.
                    ),
                    RotatedBox(
                      child: Text(
                        '$boy',
                        style: degiskenMetinStili,
                      ),
                      quarterTurns: -1,
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ButtonTheme(
                          minWidth: 36,
                          child: OutlinedButton(
                            style: ButtonStyle(
                              side: MaterialStateProperty.all(
                                BorderSide(color: Colors.lightBlue, width: 2),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                boy++;
                              });
                            },
                            child: Icon(
                              FontAwesomeIcons.plus,
                              color: Colors.black54,
                              size: 10.0,
                            ),
                          ),
                        ),
                        ButtonTheme(
                          minWidth: 36,
                          child: OutlinedButton(
                            style: ButtonStyle(
                              side: MaterialStateProperty.all(
                                BorderSide(color: Colors.lightBlue, width: 2),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                boy--;
                              });
                            },
                            child: Icon(
                              FontAwesomeIcons.minus,
                              color: Colors.black54,
                              size: 10.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ])),
                ),
                Expanded(
                  child: MyContainer(
                      child: Row(children: [
                    SizedBox(
                      width: 10,
                    ),
                    RotatedBox(
                      child: Text(
                        'KİLO',
                        style: metinStili,
                      ),
                      quarterTurns:
                          -1, //saat yönünün tersine 90 derece çevirdi.
                    ),
                    RotatedBox(
                      child: Text(
                        '$kilo',
                        style: degiskenMetinStili,
                      ),
                      quarterTurns: -1,
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ButtonTheme(
                          minWidth: 36,
                          child: OutlinedButton(
                            style: ButtonStyle(
                              side: MaterialStateProperty.all(
                                BorderSide(color: Colors.lightBlue, width: 2),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                kilo++;
                              });
                            },
                            child: Icon(
                              FontAwesomeIcons.plus,
                              color: Colors.black54,
                              size: 10.0,
                            ),
                          ),
                        ),
                        ButtonTheme(
                          minWidth: 36,
                          child: OutlinedButton(
                            style: ButtonStyle(
                              side: MaterialStateProperty.all(
                                BorderSide(color: Colors.lightBlue, width: 2),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                kilo--;
                              });
                            },
                            child: Icon(
                              FontAwesomeIcons.minus,
                              color: Colors.black54,
                              size: 10.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ])),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                children: [
                  Text(
                    'Haftada kaç gün spor yapıyorsunuz?',
                    style: metinStili,
                  ),
                  Text(
                    yapilanSpor.round().toString(),
                    style: degiskenMetinStili,
                  ),
                  Slider(
                      min: 0,
                      max: 7,
                      value: yapilanSpor,
                      divisions: 7,
                      label: '$yapilanSpor',
                      onChanged: (double newValue_2) {
                        setState(() {
                          yapilanSpor = newValue_2;
                        });
                      })
                ],
              ),
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Günde kaç sigara içiyorsunuz?',
                      style: metinStili,
                    ),
                    Text(
                      icilenSigara
                          .round() //double sayiyi int yapıp
                          .toString(), //int değeri stringe çevirdi.
                      //'${icilenSigara.round()}',
                      style: degiskenMetinStili,
                    ),
                    Slider(
                        min: 0,
                        max: 30,
                        value: icilenSigara.toDouble(),
                        label: '$icilenSigara',
                        onChanged: (double newValue) {
                          setState(() {
                            icilenSigara = newValue;
                          });
                        }) //value dediği sliderın tekrar oluşurken baz aldığı değer.
                  ]),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    onPressx: () {
                      setState(() {
                        seciliCinsiyet = 'KADIN';
                      });
                    },
                    renk: seciliCinsiyet == 'KADIN'
                        ? Colors.lightBlue[100]
                        : Colors.white,
                    child: IconCinsiyet(
                      cinsiyet: 'KADIN',
                      icon: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    onPressx: () {
                      setState(() {
                        seciliCinsiyet = 'ERKEK';
                      });
                    },
                    renk: seciliCinsiyet == 'ERKEK'
                        ? Colors.lightBlue[100]
                        : Colors.white,
                    child: IconCinsiyet(
                      cinsiyet: 'ERKEK',
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ButtonTheme(
            height: 50,
            buttonColor: Colors.white,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => ResultPage(
                          UserData(
                              kilo: kilo,
                              boy: boy,
                              yapilanSpor: yapilanSpor,
                              icilenSigara: icilenSigara,
                              seciliCinsiyet: seciliCinsiyet!,
                            )))));
              },
              child: Text(
                'HESAPLA',
                style: metinStili,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
