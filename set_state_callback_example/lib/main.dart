import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? sehirBilgisi;

  void changeCity (String yeniSehirBilgisi){
    sehirBilgisi=yeniSehirBilgisi;
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('callback kullanımı'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(child: SolWidgetA(sehirBilgisi: 'Istanbul',)),
            Expanded(child: SagWidgetA(sehirBilgisi: 'Istanbul', callback: changeCity,)), //sadece adı yazılıyor. fonksiyonu çalıştırmadan adresini verdik. gönderdik.
          ],
        ),
      ),
    );
  }
}

class SolWidgetA extends StatelessWidget {
  
  final String sehirBilgisi;

  const SolWidgetA({super.key, required this.sehirBilgisi});


  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.yellow,
        child: Column(
          children: [
            Text(
              'Sol Widget',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Sehir:$sehirBilgisi',
              style: TextStyle(fontSize: 20),
            )
          ],
        ));
  }
}

class SagWidgetA extends StatelessWidget {
   final String sehirBilgisi;
   final Function? callback;
  const SagWidgetA({super.key, required this.sehirBilgisi,this.callback});
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Column(children: [
        Text(
          'SagWidget A',
          style: TextStyle(fontSize: 20),
        ),
        SagWidgetB(sehirBilgisi: 'Istanbul',callback: callback,)
      ]),
    );
  }
}

class SagWidgetB extends StatelessWidget {
  final String sehirBilgisi;
  final Function? callback;
  const SagWidgetB({super.key, required this.sehirBilgisi,this.callback});
 
 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 180,
      color: Colors.purple,
      child: Column(children: [
        Text(
          'SagWidget B',
          style: TextStyle(fontSize: 20),
        ),
        SagWidgetC(sehirBilgisi: 'Istanbul',callback:callback)
      ]),
    );
  }
}

class SagWidgetC extends StatelessWidget {
   final String sehirBilgisi;
   final Function? callback;
  const SagWidgetC({super.key, required this.sehirBilgisi,this.callback});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 150,
      width: 160,
      child: Column(children: [
        Text(
          'SagWidget C',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          'Şehir: $sehirBilgisi ',
          style: TextStyle(fontSize: 20),
        ),
        TextField(onChanged: 
        (input){
          callback!(input);
        }
        )
      ]),
    );
  }
}