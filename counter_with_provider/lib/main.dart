import 'package:counter_with_provider/sayac_class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider( //Provider widget agacında kendine bağlı her yere duyuruyor.
      create: (context) => Sayac_Class(), //sayac class'ı tipinde bir obje.
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SayacSayfasi(), //kökte sayac sayfasini döndürdü.
      ),
    );
  }
}

class SayacSayfasi extends StatelessWidget { //stateless widget 
  const SayacSayfasi({super.key});
  @override
  Widget build(BuildContext context) {
    final sayac = Provider.of<Sayac_Class>(context,listen: false);// her değişiklikte bir kere alıyor.
    final deger = sayac.Yazdir; //sayac objesine ait yazdir fonksiyonunu bir degere atadım. (int)
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Düğmeye şu kadar kez bastınız:'),
            Text(
              deger.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            FloatingActionButton(
              onPressed: () {
                sayac.Arttir(); //sayac objesinin arttir fonksiyonu çağırıldı.
              },
              child: Icon(Icons.add),
              tooltip: 'Arttır',
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      appBar: AppBar(
        title: Text('Sayaç Uygulaması'),
      ),
    );
  }
}
