import 'package:flutter/material.dart';
import 'package:ortalama_yasam_suresi/constants.dart';
import 'package:ortalama_yasam_suresi/user_data.dart';
import 'calculations.dart';

class ResultPage extends StatelessWidget {
  final UserData _userData;
  ResultPage(this._userData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SONUC SAYFASI',
          style: metinStili,
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Center(
                  child: Text(
            Calculations(_userData).calculation().toString(),
            style: metinStili,
          ))),
          Expanded(
            child: TextButton(
              child: Text(
                'Geri Dön',
                style: metinStili,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
