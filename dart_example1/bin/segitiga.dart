import 'dart:io';

void main() {
  print('Masukkan tinggi piramida:');
  int tinggi = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= tinggi; i++) {
    // Spasi
    for (int j = 1; j <= tinggi - i; j++) {
      stdout.write(' ');
    }
    // Bintang
    for (int k = 1; k <= (2 * i - 1); k++) {
      stdout.write('*');
    }
    print('');
  }
}
