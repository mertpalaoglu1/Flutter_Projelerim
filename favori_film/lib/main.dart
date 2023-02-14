import 'package:flutter/material.dart';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  const BenimUygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 211, 159, 75),
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('FAVORİ FİLMİM',style: TextStyle(color: Colors.black),),
          centerTitle: true,
        ),
        body: Center(
          child: Image.asset('favori_film_poster.jpg'),
        ),
      ),
    );
  }
}
