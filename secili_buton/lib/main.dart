import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var seciliButon;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          TextButton(
            onPressed: () {
              setState(() {
                seciliButon = 'SOL';
              });

              print(seciliButon);
            },
            child: Container(
              width: 100,
              height: 200,
              color: seciliButon=='SOL' ? Colors.blueAccent: Colors.blueGrey,
              child: seciliButon=='SOL'? Text('AKTİF BUTON', style: TextStyle(color: Colors.black))  : Text('PASİF BUTON', style: TextStyle(color: Colors.black)),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                seciliButon = 'SAĞ';
              });

              print(seciliButon);
            },
            child: Container(
              width: 100,
              height: 200,
              color: seciliButon=='SAĞ'? Colors.blueAccent: Colors.blueGrey,
              child: seciliButon=='SAĞ'? Text('AKTİF BUTON', style: TextStyle(color: Colors.black))  : Text('PASİF BUTON', style: TextStyle(color: Colors.black)),
            ),
          ),
        ]),
      ),
    );
  }
}
