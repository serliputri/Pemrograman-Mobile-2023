import 'package:tugas3/tugas3.dart' as tugas3;
import 'dart:io';

void main() {
  int i = 10;
  do {
    int j = 1;
    do {
      stdout.write('*');
      j++;
    } while (j <= i);
    print('');
    i--;
  } while (i >= 1);
}
