import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

// void main(List<String> arguments) {
//   print('Hello world: ${dart_application_1.calculate()}!');
// }

import 'dart:io'; 

void main(){
  stdout.write('Masukkan Nama Anda: ');
  String nama1 = stdin.readLineSync()!;

  stdout.write('Masukkan Umur Anda: ');
  int age1 = int.parse(stdin.readLineSync()!);

  stdout.write('Masukkan Teman Nama Anda: ');
  String nama2 = stdin.readLineSync()!;

  stdout.write('Masukkan Teman Umur Anda: ');
  int age2 = int.parse(stdin.readLineSync()!);

  String hasilNama = nama1 + nama2;
  print("$hasilNama");

  int hasilUmur = age1 + age2;
  print("$hasilUmur");
}
