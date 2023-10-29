import 'package:praktikum5/praktikum5.dart' as praktikum5;

void main(List<String> arguments) {
  // var record = ('first', a: 2, b: true, 'last');
  // print(record);

  //LANGKAH 3
  // (int, int) tukar((int, int) record) {
  // var (a, b) = record;
  // return (b, a);
  // }
  // print(tukar((1,2)));

  //LANGKAH 4
  // Record type annotation in a variable declaration:
  // (String, int) mahasiswa;
  // mahasiswa = ('Serli Putri Maharani', 2141720023);
  // print(mahasiswa);

  //LANGKAH 5
  var mahasiswa2 = ('first', a: 2, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}


