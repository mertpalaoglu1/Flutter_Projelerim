import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart'; google fonts

void main() {
  runApp(
    MaterialApp(
      // theme: ThemeData(fontFamily: 'Satisfy'), TÜM UYGULAMANIN VARSAYILANI AYARLIYOR.
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.brown[300],
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.lime,
                  backgroundImage: AssetImage('images/kahve.jpg'),
                ),
                Text(
                  'Flutter Kahvecisi',
                  style: TextStyle(
                    fontFamily: 'Satisfy',
                    fontSize: 45,
                    color: Colors.brown[900],
                  ),
                ),
                Text(
                  'BİR FİNCAN UZAĞINIZDA',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: 200,
                  child: Divider(//bölücü çizgi widgeti.
                    height: 30,
                  ),
                ), 
                Card(
                  margin: EdgeInsets.symmetric(
                      horizontal: 45), //widgetin dişina mesafe
                  color: Colors.brown,
                  child: ListTile(
                    //list tile paddingli gelir.
                    leading: Icon(
                      Icons.mail,
                      size: 40,
                      color: Colors.white,
                    ),
                    title: Text(
                      'mertpalaoglu1@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ), //iki containeri açmak için.
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 45),
                  color: Colors.brown,
                  child: ListTile(
                    //list tile bir sürü şekilde oluyor biz bi sembol bi yazılı halini kullandık.
                    leading: Icon(
                      Icons.phone,
                      size: 40,
                      color: Colors.white,
                    ),
                    title: Text(
                      '05360604460',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
