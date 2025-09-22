import 'dart:io';

void main() {
  while (true) {
    print("\n=== Aplikasi Konversi Unit ===");
    print("1. Panjang");
    print("2. Massa");
    print("3. Volume");
    print("4. Suhu");
    print("5. Keluar");
    stdout.write("Pilih kategori: ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        convertUnit("Panjang", lengthUnits);
        break;
      case '2':
        convertUnit("Massa", massUnits, allowNegative: false);
        break;
      case '3':
        convertUnit("Volume", volumeUnits, allowNegative: false);
        break;
      case '4':
        convertTemperature();
        break;
      case '5':
        print("Terima kasih sudah menggunakan aplikasi ini!");
        return;
      default:
        print("Pilihan tidak valid!");
    }
  }
}

// Map konversi panjang (basis = meter)
final Map<String, double> lengthUnits = {
  "Meter": 1,
  "Kilometer": 1000,
  "Centimeter": 0.01,
  "Milimeter": 0.001,
  "Mil": 1609.34
};

// Map konversi massa (basis = gram)
final Map<String, double> massUnits = {
  "Gram": 1,
  "Kilogram": 1000,
  "Miligram": 0.001,
  "Ton": 1000000,
  "Pound": 453.592
};

// Map konversi volume (basis = liter)
final Map<String, double> volumeUnits = {
  "Liter": 1,
  "Mililiter": 0.001,
  "Kiloliter": 1000,
  "Gallon": 3.785,
  "Cubic Meter": 1000
};

// Fungsi konversi umum (panjang, massa, volume)
void convertUnit(String category, Map<String, double> units, {bool allowNegative = true}) {
  print("\n-- Konversi $category --");
  print("Daftar unit:");
  int index = 1;
  units.forEach((unit, _) {
    print("$index. $unit");
    index++;
  });

  stdout.write("Pilih unit asal: ");
  int? fromChoice = int.tryParse(stdin.readLineSync() ?? "");
  stdout.write("Pilih unit tujuan: ");
  int? toChoice = int.tryParse(stdin.readLineSync() ?? "");

  if (fromChoice == null ||
      toChoice == null ||
      fromChoice < 1 ||
      fromChoice > units.length ||
      toChoice < 1 ||
      toChoice > units.length) {
    print("Pilihan tidak valid!");
    return;
  }

  String fromUnit = units.keys.elementAt(fromChoice - 1);
  String toUnit = units.keys.elementAt(toChoice - 1);

  stdout.write("Masukkan nilai dalam $fromUnit: ");
  double? value = double.tryParse(stdin.readLineSync() ?? "");
  if (value == null) {
    print("Input tidak valid!");
    return;
  }
  if (!allowNegative && value < 0) {
    print("Nilai tidak boleh negatif!");
    return;
  }

  double valueInBase = value * units[fromUnit]!;
  double result = valueInBase / units[toUnit]!;

  print("Hasil: $value $fromUnit = $result $toUnit");
}

// Fungsi khusus suhu
void convertTemperature() {
  print("\n-- Konversi Suhu --");
  List<String> tempUnits = ["Celsius", "Fahrenheit", "Kelvin", "Reamur", "Rankine"];
  for (int i = 0; i < tempUnits.length; i++) {
    print("${i + 1}. ${tempUnits[i]}");
  }

  stdout.write("Pilih unit asal: ");
  int? fromChoice = int.tryParse(stdin.readLineSync() ?? "");
  stdout.write("Pilih unit tujuan: ");
  int? toChoice = int.tryParse(stdin.readLineSync() ?? "");

  if (fromChoice == null ||
      toChoice == null ||
      fromChoice < 1 ||
      fromChoice > tempUnits.length ||
      toChoice < 1 ||
      toChoice > tempUnits.length) {
    print("Pilihan tidak valid!");
    return;
  }

  String fromUnit = tempUnits[fromChoice - 1];
  String toUnit = tempUnits[toChoice - 1];

  stdout.write("Masukkan nilai dalam $fromUnit: ");
  double? value = double.tryParse(stdin.readLineSync() ?? "");
  if (value == null) {
    print("Input tidak valid!");
    return;
  }

  double celsius = toCelsius(value, fromUnit);
  double result = fromCelsius(celsius, toUnit);

  print("Hasil: $value $fromUnit = $result $toUnit");
}

// Konversi suhu ke Celsius
double toCelsius(double value, String fromUnit) {
  switch (fromUnit) {
    case "Celsius":
      return value;
    case "Fahrenheit":
      return (value - 32) * 5 / 9;
    case "Kelvin":
      return value - 273.15;
    case "Reamur":
      return value * 5 / 4;
    case "Rankine":
      return (value - 491.67) * 5 / 9;
    default:
      return value;
  }
}

// Konversi dari Celsius ke unit lain
double fromCelsius(double value, String toUnit) {
  switch (toUnit) {
    case "Celsius":
      return value;
    case "Fahrenheit":
      return (value * 9 / 5) + 32;
    case "Kelvin":
      return value + 273.15;
    case "Reamur":
      return value * 4 / 5;
    case "Rankine":
      return (value + 273.15) * 9 / 5;
    default:
      return value;
  }
}
