import 'dart:io';

void main() {
  Map<String, double> rates = {
    'IDR': 1, // Rupiah sebagai dasar
    'USD': 16408.80,
    'EUR': 19255.6,
  };

  print('Pilih mata uang asal (IDR/USD/EUR):');
  String from = stdin.readLineSync()!.toUpperCase();

  print('Pilih mata uang tujuan (IDR/USD/EUR):');
  String to = stdin.readLineSync()!.toUpperCase();

  print('Masukkan jumlah uang:');
  double amount = double.parse(stdin.readLineSync()!);

  if (!rates.containsKey(from) || !rates.containsKey(to)) {
    print('Mata uang tidak dikenali.');
    return;
  }

  // Konversi ke IDR dulu, lalu ke mata uang tujuan
  double inIDR = from == 'IDR' ? amount : amount * rates[from]!;
  double result = to == 'IDR' ? inIDR : inIDR / rates[to]!;

  print('$amount $from = ${result.toStringAsFixed(2)} $to');
}
