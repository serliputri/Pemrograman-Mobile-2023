import 'package:praktikum5/praktikum5.dart' as praktikum5;

void main(List<String> arguments) {
  // // LANGKAH 1
  // var record = ('first', a: 2, b: true, 'last');
  // print(record);

  // // LANGKAH 3
  // (int, int) tukar((int, int) record) {
  // var (a, b) = record;
  // return (b, a);
  // }

  // // LANGKAH 4
  // // Record type annotation in a variable declaration:
  // (String, int) mahasiswa;
  // mahasiswa = ('Serli Putri Maharani', 2141720023);
  // print(mahasiswa);

  // LANGKAH 5
  var mahasiswa2 = ('Serli Putri M', a: 2141720023, b: true, 'last');
  
  print(mahasiswa2.$1); // Prints 'Serli Putri M'
  print(mahasiswa2.a); // Prints 2141720023
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}
