import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DrumMachine());
}

class DrumMachine extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: DrumPage(),
      ),
    );
  }
}

class DrumPage extends StatelessWidget {

final oynatici = AudioPlayer(); //audioplayer hazır fonksiyonu. 

void sesiCal(String ses) {
oynatici.play(AssetSource('$ses.wav')); //sesi çalmak için bir fonksiyon kurduk.
}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: buildDrumPad('bongo', Colors.blueAccent),
                      ),
                      Expanded(
                        child: buildDrumPad('how', Colors.green),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: buildDrumPad('woo', Colors.purpleAccent),
                      ),
                      Expanded(
                        child: buildDrumPad('ridebull', Colors.orangeAccent),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: buildDrumPad('oobah', Colors.redAccent),
                      ),
                      Expanded(
                        child: buildDrumPad('clap3', Colors.amber,)
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: buildDrumPad('bip', Colors.white),
                      ),
                      Expanded(
                        child: buildDrumPad('clap2',Colors.brown),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
    }


TextButton buildDrumPad (String ses, Color renk){ //code refactoring için tek bir fonksiyon kurduk.
  return TextButton( 
      onPressed: () {
      sesiCal(ses);
    },
      child: Container(
        color: renk,
         ),
       );
  }
}