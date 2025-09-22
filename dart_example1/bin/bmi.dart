import 'dart:io';

void main() {
  print('Masukkan berat badan (kg):');
  double berat = double.parse(stdin.readLineSync()!);

  print('Masukkan tinggi badan (cm):');
  double tinggiCm = double.parse(stdin.readLineSync()!);

  double tinggiM = tinggiCm / 100;
  double bmi = berat / (tinggiM * tinggiM);

  print('BMI Anda: ${bmi.toStringAsFixed(2)}');

  if (bmi < 18.5) {
    print('Kategori: Kurus');
  } else if (bmi < 25) {
    print('Kategori: Normal');
  } else if (bmi < 30) {
    print('Kategori: Gemuk');
  } else {
    print('Kategori: Obesitas');
  }
}
