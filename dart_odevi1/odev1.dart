import 'dart:io';

void main(List<String> args) {
  List<num> sayilar_kucukten = [];
  List<num> sayilar_buyukten = [];
  try {
    for (var i = 1; i <= 10; i++) {
      stdout.write("Lutfen sayı giriniz : ");
      num? girilen = num.parse(stdin.readLineSync()!);
      sayilar_kucukten.add(girilen);
    }
    sayilar_kucukten.sort();
    print(
        "Girilen sayıların küçükten büyüğe sıralanmış hali : ${sayilar_kucukten}");
    sayilar_buyukten.addAll(sayilar_kucukten.reversed);
    print(
        "Girilen sayıların büyükten küçüğe sıralanmış hali : ${sayilar_buyukten}");
  } catch (e) {
    print(
        "Yanlış tuşlama yaptınız lütfen programı yeniden başlatınız!!! Örnek tuşlama: 3 || 5.2 || -2");
  }
}
