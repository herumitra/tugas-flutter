import 'dart:io';

// Fungsi untuk melakukan operasi matematika sederhana
double kalkulator(double angka1, double angka2, String operator) {
  switch (operator) {
    case '+':
      return angka1 + angka2;
    case '-':
      return angka1 - angka2;
    case '*':
      return angka1 * angka2;
    case '/':
      if (angka2 != 0) {
        return angka1 / angka2;
      } else {
        throw ArgumentError('Pembagian dengan nol tidak diperbolehkan.');
      }
    default:
      throw ArgumentError('Operator tidak valid. Gunakan +, -, *, atau /.');
  }
}

void main() {
  print('Kalkulator Sederhana');

  try {
    // Input angka pertama
    stdout.write('Masukkan angka pertama: ');
    double angka1 = double.parse(stdin.readLineSync()!);

    // Input angka kedua
    stdout.write('Masukkan angka kedua: ');
    double angka2 = double.parse(stdin.readLineSync()!);

    // Input operator
    stdout.write('Masukkan operator (+, -, *, /): ');
    String operator = stdin.readLineSync()!;

    // Hitung hasil
    double hasil = kalkulator(angka1, angka2, operator);

    // Tampilkan hasil
    print('Hasil: $angka1 $operator $angka2 = $hasil');
  } catch (e) {
    print('Error: ${e.toString()}');
  }
}
