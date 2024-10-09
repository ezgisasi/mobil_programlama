import 'dart:io';

void main() {
  List<int> sayilar = [];

  print('10 tane sayı giriniz:');
  for (int i = 0; i < 10; i++) {
    print('${i + 1}. sayıyı girin:');
    String? girdi = stdin.readLineSync();

    if (girdi != null) {
      int sayi = int.parse(girdi);
      sayilar.add(sayi);
    }
  }

  List<int> ciftSayilar = sayilar.where((sayi) => sayi % 2 == 0).toList();

  if (ciftSayilar.isNotEmpty) {
    print('Çift sayılar: $ciftSayilar');
  } else {
    print('Çift sayı yok.');
  }
}
