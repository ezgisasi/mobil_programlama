import 'dart:io';

class Ogrenci {
  String ad;
  String soyad;
  List<double> notlar;

  Ogrenci(this.ad, this.soyad) : notlar = [];

  void notEkle(double notDegeri) {
    notlar.add(notDegeri);
  }

  double ortalamaHesapla() {
    if (notlar.isEmpty) {
      return 0;
    }
    double toplam = notlar.reduce((a, b) => a + b);
    return toplam / notlar.length;
  }
}

void main() {
  print('Öğrenci adı:');
  String ad = stdin.readLineSync()!;

  print('Öğrenci soyadı:');
  String soyad = stdin.readLineSync()!;

  Ogrenci ogrenci = Ogrenci(ad, soyad);

  for (int i = 1; i <= 2; i++) {
    print('not girin:');
    String? girdi = stdin.readLineSync();
    
    double? notDegeri = double.tryParse(girdi!);
    if (notDegeri != null) {
      ogrenci.notEkle(notDegeri);
    } else {
      print('Geçersiz girdi lütfen bir sayı girin.');
      i--; 
    }
  }

  double ortalama = ogrenci.ortalamaHesapla();
  print('ortalama: $ortalama');
}
