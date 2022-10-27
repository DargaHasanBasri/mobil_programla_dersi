import 'dart:io';

void main(List<String> args) {
  var menu = "1- Toplama İşlemi İçin  + tuşlayınız!\n" +
      "2- Çıkarma İşlemi İçin  - tuşlayınız!\n" +
      "3- Çarpma  İşlemi İçin  * tuşlayınız!\n" +
      "4- Bölme   İşlemi İçin  / tuşlayınız!\n" +
      "5- Çıkış   Yapmak İçin  x tuşlayınız!\n";
  while (true) {
    print("\n");
    print(menu);
    try {
      stdout.write("Bir işlem seçiniz  : ");
      String? secim = stdin.readLineSync();
      if (secim == 'X' || secim == 'x') {
        print("Çıkış yaptınız!!!");
        break;
      }
      stdout.write("İlk sayıyı giriniz : ");
      num? a = num.parse(stdin.readLineSync()!);

      stdout.write("İlk sayıyı giriniz : ");
      num? b = num.parse(stdin.readLineSync()!);

      switch (secim) {
        case '+':
          topla(a, b);
          break;
        case '-':
          cikart(a, b);
          break;
        case '*':
          carp(a, b);
          break;
        case '/':
          if (b == 0) {
            print("İkinci sayı 0 olamaz!");
          }
          bol(a, b);
          break;
        default:
          print("Hatalı operatör seçtiniz !!!");
      }
    } catch (e) {
      print("Hatalı Tuşlama Yaptınız Lütfen Tekrar Deneyiniz!!!");
    }
  }
}

topla(num a, num b) {
  print("Sonuc -> $a + $b = ${a + b}");
}

cikart(num a, num b) {
  print("Sonuc -> $a - $b = ${a - b}");
}

carp(num a, num b) {
  print("Sonuc -> $a * $b = ${a * b}");
}

bol(num a, num b) {
  print("Sonuc -> $a / $b = ${a / b}");
}
