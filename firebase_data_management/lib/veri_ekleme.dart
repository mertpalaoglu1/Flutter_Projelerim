import 'package:flutter/material.dart';

class VeriEkleme extends StatefulWidget {
  const VeriEkleme({super.key});

  @override
  State<VeriEkleme> createState() => _VeriEklemeState();
}

class _VeriEklemeState extends State<VeriEkleme> {
  TextEditingController nameController =
      TextEditingController(); //form alanları ile ilgili işlemler için sınıf.
  TextEditingController ratingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(children: [
        Text('VERİ EKLEME'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 200),
          child: Form(
              child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(hintText: 'Film adını giriniz'),
              ),
              TextFormField(
                controller: ratingController,
                decoration: InputDecoration(hintText: 'Rating giriniz'),
              ),
            ],
          )),
        )
      ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
