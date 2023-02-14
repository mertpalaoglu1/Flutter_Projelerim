import 'soru.dart';

class TestVeri {
  int _soruSirasi = 0;

  List<Soru> _soruBankasi = [
    //başka bir dart dosyasında soru diye bir class oluşuturup cevapları ve soruları içine aldık.
    //'_' private yapıyor.
    Soru('Galatasaray Türkiyenin en büyük takımıdır', true),
    Soru('Titanic gelmiş geçmiş en büyük gemidir', false),
    Soru('Dünyadaki tavuk sayısı insan sayısından fazladır', true),
    Soru('Kelebeklerin ömrü bir gündür', false),
    Soru('Dünya düzdür', false),
    Soru('Kaju fıstığı aslında bir meyvenin sapıdır', true),
    Soru('Fatih Sultan Mehmet hiç patates yememiştir', true),
    Soru('Fransızlar 80 demek için, 4 - 20 der', true)
  ];

  String getSoruMetni() {
    //kütüphane görevlisi gibi.

    return _soruBankasi[_soruSirasi].soruMetni;
  }

  bool getSoruYaniti() {
    return _soruBankasi[_soruSirasi].soruYaniti;
  }

  void sonrakiSoru() {
    if (_soruSirasi + 1 < _soruBankasi.length) {
      _soruSirasi++;
    }
  }

  bool testBittiMi() {
    if (_soruSirasi + 1 >= _soruBankasi.length) {
      return true;
    } 
    else {
      return false;
    }
  }

  void testiSifirla() {
    _soruSirasi = 0;
  }

}



/*class GeridenTestVeri extends TestVeri {
@override
  void sonrakiSoru() {
    if (_soruSirasi + 1 > _soruBankasi.length) {
      _soruSirasi--; (soru sirasini= kaç sorun varsa oradan başlatırsın.)
    }
  }
}*/ 
//Sorularda geri geri gitmek için kullanılabilir.