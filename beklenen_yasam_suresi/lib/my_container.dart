import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  //const MyContainer({Key? key, }) : super(key: key); //(gerek yok şuanlık)
  final Color? renk; //myContainer widgetimiza özel parametre yazdık.
  final Widget? child;
  final void Function()? onPressx; //kendi container widgetımıza tuş gibi on pressed özelliği ekledik.

  MyContainer(
      {this.renk = Colors.white, this.child, this.onPressx}); //zorunlu renk istiyor beyaz da default hali.
  @override

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressx,
      child: Container(
        margin: EdgeInsets.all(12.0),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(12.0), color: renk), 
        child: child, //kutumuza child alabilme özelliği ekledik.
      ),
    );
  }
}