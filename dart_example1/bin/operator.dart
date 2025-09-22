import 'dart:io';

void main() {
  print('Masukkan angka pertama:');
  int a = int.parse(stdin.readLineSync()!);

  print('Masukkan angka kedua:');
  int b = int.parse(stdin.readLineSync()!);

  // Operator Aritmatika
  print('\nOperator Aritmatika:');
  print('a + b = ${a + b}');
  print('a - b = ${a - b}');
  print('a * b = ${a * b}');
  print('a / b = ${a / b}');
  print('a % b = ${a % b}');

  // Operator Penugasan
  print('\nOperator Penugasan:');
  int c = a;
  c += b;
  print('c += b: $c');
  c -= b;
  print('c -= b: $c');
  c *= b;
  print('c *= b: $c');
  c ~/= b;
  print('c ~/= b: $c');
  c %= b;
  print('c %= b: $c');

  // Operator Perbandingan
  print('\nOperator Perbandingan:');
  print('a == b: ${a == b}');
  print('a != b: ${a != b}');
  print('a > b: ${a > b}');
  print('a < b: ${a < b}');
  print('a >= b: ${a >= b}');
  print('a <= b: ${a <= b}');

  // Operator Logika
  print('\nOperator Logika:');
  bool x = a > 0;
  bool y = b > 0;
  print('x && y: ${x && y}');
  print('x || y: ${x || y}');
  print('!x: ${!x}');

  // Operator Bitwise
  print('\nOperator Bitwise:');
  print('a & b: ${a & b}');
  print('a | b: ${a | b}');
  print('a ^ b: ${a ^ b}');
  print('~a: ${~a}');
  print('a << 1: ${a << 1}');
  print('a >> 1: ${a >> 1}');

  // Operator Increment & Decrement
  print('\nOperator Increment & Decrement:');
  int d = a;
  print('d++: ${d++}');
  print('++d: ${++d}');
  print('d--: ${d--}');
  print('--d: ${--d}');

  // Operator Kondisional (Ternary)
  print('\nOperator Kondisional (Ternary):');
  String result = (a > b) ? 'a lebih besar' : 'b lebih besar atau sama';
  print(result);

  // Operator Null-aware
  print('\nOperator Null-aware:');
  int? e;
  print('e ?? a: ${e ?? a}');
}
