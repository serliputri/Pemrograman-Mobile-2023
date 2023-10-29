import 'package:tugas1/tugas1.dart' as tugas1;
import 'dart:io';

void main() {
  stdout.write('Apakah ada telur? (yes/no): ');
  String input = stdin.readLineSync()!;
  bool adaTelur = (input.toLowerCase() == 'yes');

  int minyakGoreng;
  int telur=0;

  if(adaTelur){
    minyakGoreng = 6;
  } else{
    minyakGoreng = 1;
  }

  print('Jumlah minyak goreng yang diambil adalah $minyakGoreng botol');
  print('Jumlah telur yang diambil adalah $telur butir');
}
// int mainCode() {
//   stdout.write('Apakah ada telur? (yes/no): ');
//   String input = stdin.readLineSync()!;
//   bool adaTelur = (input.toLowerCase() == 'yes');
// // declaration variable
// int oilThatShouldBuy;
// int egg=0;
// if(adaTelur){
//     oilThatShouldBuy = 6;
//   } else{
//     oilThatShouldBuy = 1;
//   }
// return oilThatShouldBuy;
// }
// void main(){
//   int minyak=mainCode(); 
//   print('Jumlah minyak goreng yang diambil adalah $minyak botol');
//   print('Jumlah telur yang diambil adalah $egg butir');
// }
