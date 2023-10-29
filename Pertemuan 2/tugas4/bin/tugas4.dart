import 'package:tugas4/tugas4.dart' as tugas4;
import 'dart:io';
void main(){
  stdout.write('Masukkan bilangan 1: ');
  final bil1 = int.parse(stdin.readLineSync()!);
  stdout.write('Masukkan bilangan 2: ');
  final bil2 = int.parse(stdin.readLineSync()!);
  stdout.write('Masukkan operator(+, -, *, /): ');
  final operator = stdin.readLineSync()!;

  
  switch(operator){
    case '+':
    print('$bil1 $operator $bil2 = ${bil1 + bil2}');
    break;

    case '-':
    print('$bil1 $operator $bil2 = ${bil1 - bil2}');
    break;

    case '*':
    print('$bil1 $operator $bil2 = ${bil1 * bil2}');
    break;

    case '/':
    print('$bil1 $operator $bil2 = ${bil1 / bil2}');
    break;

    default: 
    print('Operator tidak ditemukan!');
  }
}
