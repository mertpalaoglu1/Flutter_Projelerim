import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Center(child:TurkBayragi(),),);
  }
}

class TurkBayragi extends StatelessWidget {
@override
  Widget build(BuildContext context) {
  return Center(
      child:Stack(children: [bayrakZemini,icHilal,disHilal,yildiz]),
      );
  }

Widget bayrakZemini = Container(height:200 ,width: 300, color: Colors.red);
Widget icHilal = Positioned(height: 125, width: 125,top:40,left: 40, child: Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(75),),));
Widget disHilal = Positioned(height: 105, width:105,top:50,left:65,child: Container( decoration: BoxDecoration(color: Colors.red, borderRadius:BorderRadius.circular(75),),));
Widget yildiz = Positioned(top:80 ,left:145, child: Container(transform: Matrix4.rotationZ(-0.2),child: const Positioned(child: Icon(Icons.star, size:50 , color: Colors.white))));

}