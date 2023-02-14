import 'package:flutter/material.dart';

void main() {
  runApp(BenimUyg());
}

class BenimUyg extends StatelessWidget {
  const BenimUyg({super.key});
 //row ve colum aynı sadece mainaxis ve cross axis değişiyor. Sizedboxlarda ayni mantıkla düşünülecek (height değil width olacak)
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lime,
        body: SafeArea(
          //daha güvenli bir yere alıyor kendini
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,//containerları ikinci eksende kıpırdatıyor. Strech full kaplatıyor.
            mainAxisAlignment: MainAxisAlignment.spaceEvenly ,//eşit boyutlu dağıtıyor.
            mainAxisSize: MainAxisSize.min,//colum min yer kaplasın. kendi childları kadar kaplıyor.
            children: <Widget>[
              Container(
                color: Colors.white,
                width: 200, //genişlik
                height: 100, //boy
                child: Text('1.container'),
              ),
              SizedBox(height: 30,), //containerlar arası boşluk açtı ama bir şey yok içinde
              Container(
                width: 200,
                height: 100,
                color: Colors.red,
                child: Text('2.container'),
              ),
              SizedBox(height: 30,), //containerlar arası boşluk açtı ama bir şey yok içinde
              Container(
                  width: 200,
                  height: 100,
                  color: Colors.green,
                  child: Text('3.container'),
                ),
              //Container(width: double.infinity,)  //hayalet container 2.eksende full yer kaplasın diye.
            ],
          ),
        ),
      ),
    );
  }
}
