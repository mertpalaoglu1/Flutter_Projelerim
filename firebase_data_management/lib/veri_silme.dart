import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class VeriSilme extends StatefulWidget {
  const VeriSilme({super.key});

  @override
  State<VeriSilme> createState() => _VeriSilmeState();
}

class _VeriSilmeState extends State<VeriSilme> {
  final _firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    var moviesRef = _firestore.collection('Movies');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Koleksiyon Dinleme'),
      ),
      body: Center(
        child: Column(
          children: [
            StreamBuilder<QuerySnapshot>(
              ///neyi dinlediğimiz bilgisi.
              stream: moviesRef.snapshots(),

              ///streamden veri gelince aşağıdakini yap.
              builder: (BuildContext context, AsyncSnapshot asyncSnapshot) {
                if (asyncSnapshot.hasError) {
                  return Center(
                    child: Text('Bir hata oluştur tekrar deneyiniz'),
                  );
                } else {
                  if (asyncSnapshot.hasData) {
                    List<DocumentSnapshot> listOfDocumentSnap =
                        asyncSnapshot.data.docs;
                    return Flexible(
                      child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Card(
                                child: ListTile(
                              title: Text(
                                '${listOfDocumentSnap[index].get('name')}',
                                style: TextStyle(fontSize: 20),
                              ),
                              subtitle: Text(
                                '${listOfDocumentSnap[index].get('rating')}',
                                style: TextStyle(fontSize: 10),
                              ),
                              trailing: IconButton(
                                icon: Icon(Icons.delete),
                                onPressed: (() async{
                                  //uyarı diyaloğu eklenmesi lazım. 
                                  await listOfDocumentSnap[index].reference.delete();
                                }),
                              ),
                            ));
                          },
                          itemCount: listOfDocumentSnap.length),
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Geri git'),
            ),
          ],
        ),
      ),
    );
  }
}
