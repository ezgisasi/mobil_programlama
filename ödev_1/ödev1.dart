import 'dart:io';

void main() {
  while (true) {
    print("İşlem tipini seçiniz (+, -, *, /) veya çıkmak için 'exit' yazın:");

    String secim = stdin.readLineSync()!;

    if (secim == 'exit') {
      print("Programdan çıkılıyor...");
      break;
    }

    if (secim != '+' && secim != '-' && secim != '*' && secim != '/') {
      print("Geçersiz işlem seçimi.");
      continue;
    }

    print("Birinci parametreyi giriniz: ");
    double parametre1 = double.parse(stdin.readLineSync()!);

    print("İkinci parametreyi giriniz: ");
    double parametre2 = double.parse(stdin.readLineSync()!);
    
    if(secim == '/' && parametre2 == 0){
        print("Sıfıra bölme hatası!");
        continue;
    }

    double? sonuc;

    try {
      switch (secim) {
        case '+':
          sonuc = toplama(parametre1, parametre2);
          break;
        case '-':
          sonuc = cikarma(parametre1, parametre2);
          break;
        case '*':
          sonuc = carpma(parametre1, parametre2);
          break;
        case '/':
          sonuc = bolme(parametre1, parametre2);
          break;
      }
      if (sonuc != null) {
        print("Sonuç: $parametre1 $secim $parametre2 = $sonuc\n");
      }
    } catch (e) {
      print("Hata oluştu: $e");
    }
  }
}

double toplama(double sayi1, double sayi2) {
  return sayi1 + sayi2;
}

double cikarma(double sayi1, double sayi2) {
  return sayi1 - sayi2;
}

double carpma(double sayi1, double sayi2) {
  return sayi1 * sayi2;
}

double bolme(double sayi1, double sayi2) {
  return sayi1 / sayi2;
}
