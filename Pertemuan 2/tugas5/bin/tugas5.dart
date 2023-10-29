import 'package:tugas5/tugas5.dart' as tugas5;
import 'dart:io';

void main() {
  stdout.write("Masukkan panjang alas segitiga (angka ganjil): ");
  int Alas = int.parse(stdin.readLineSync()!);

  if (Alas.isOdd) {
    int tinggi = (Alas + 1) ~/ 2; 

    for (int i = 1; i <= tinggi; i++) {
      for (int j = tinggi - i; j > 0; j--) {
        stdout.write(' '); 
      }
      for (int k = 1; k <= 2 * i - 1; k++) {
        stdout.write('*');
      }
      stdout.writeln(); 
    }
  } else {
    print("Panjang alas harus ganjil.");
  }
}
