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
                  margin: EdgeInsets.symmetric(
                      horizontal: 45), //widgetin dişina mesafe
                  padding: EdgeInsets.all(10.0), //widget içine mesafe
                  color: Colors.brown,
                  child: Row(
                    children: [
                      Icon(
                        Icons.mail,
                        size: 40,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'mertpalaoglu1@gmail.com',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,), //iki containeri açmak için.
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 45),
                  padding: EdgeInsets.all(10.0),
                  color: Colors.brown,
                  child: Row(children: [
                    Icon(
                      Icons.phone,
                      size: 40,
                      color: Colors.white,
                    ),
                    Text(
                      '05360604460',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
