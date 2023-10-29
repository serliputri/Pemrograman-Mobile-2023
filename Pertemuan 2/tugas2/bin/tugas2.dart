import 'package:tugas2/tugas2.dart' as tugas2;
import 'dart:io';

void main(){
  for(int i=1; i<=10; i++){
    for (int j=1; j<=i; j++){
      stdout.write('*');
    }
    print('');
  }
}
