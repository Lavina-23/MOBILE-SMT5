import 'dart:io';

void main() {
  stdout.write('Masukkan angka untuk menghitung faktorial: ');
  int? n = int.tryParse(stdin.readLineSync() ?? '');
  if (n == null || n < 0) {
    print('Input tidak valid. Masukkan bilangan bulat positif.');
    return;
  }
  int faktorial = 1;
  for (int i = 1; i <= n; i++) {
    faktorial *= i;
  }
  print('Faktorial dari $n adalah $faktorial');
}
