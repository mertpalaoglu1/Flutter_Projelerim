import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: (ThemeData(
          scaffoldBackgroundColor: Colors.lightBlue,
          primaryColor: Colors.lightBlue[300])),
      home: InputPage(),
    );
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('YAŞAM BEKLENTİSİ', style: TextStyle(color: Colors.black54)),
      centerTitle: true,
    ),
  );
}
