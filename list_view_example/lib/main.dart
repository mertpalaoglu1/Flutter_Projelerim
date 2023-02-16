import 'package:flutter/material.dart';

void main() {
  runApp((ListViewPage()));
}

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<String> names = ['Mert', 'Mehmet', 'Melisa', 'Ebrar'];
  @override
  Widget build(BuildContext context) {
    List list_items = [
      ListTile(
        tileColor: Colors.lightBlueAccent,
        title: Text('1. Öğe'),
      ),
      ListTile(
        tileColor: Colors.pinkAccent,
        title: Text('2. Öğe'),
      ),
      ListTile(
        tileColor: Colors.greenAccent,
        title: Text('3. Öğe'),
      ),
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text('Listview Demo'),
          backgroundColor: Colors.yellowAccent,
        ),
        body: Center(
            child: FractionallySizedBox(
              widthFactor:0.8, //ekran genişliğini sıkıştırdı %80,
              heightFactor: 0.3,// ekran yüksekliğini sıkıştırdı %30,
              child: ListView.separated(
                      //kaydırılabilir bir sütun oldu.
                      //shrinkWrap: true, --> kendini list tile'lar kadar bir alana kısıtlar.
                      //reverse: true, --> öğeleri terse çevirdi ekranın dibinden başlattı.
                      padding: EdgeInsets.all(10.0),
                      itemCount: names.length,
                      itemBuilder: ((context, index) {
              //indexi kullanarak sıra ile çizdireceğiz.
              ///List <String> ==> List <Widget>/ container
              List<Container> containers = names
                  .map((name) => Container(
                    height: 100, width: 100, //parent'i bir sınırlama verirse etki etmiyor.
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.all(8),
                      color: Colors.red[60],
                      child: Text(name)))
                  .toList();
            
              return containers[index];
                      }),
                      separatorBuilder: (context, _) { //index kullanmıyoruz.
              return Divider(
                height: 5,
                color: Colors.amber[500],
              );
                      },
                    ),
            )));
  }
}
