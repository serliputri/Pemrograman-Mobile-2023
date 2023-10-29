import 'package:praktikum4/praktikum4.dart' as praktikum4;

void main(List<String> arguments) {
  var list1 = [1, 2, 3];
  var list2 = [0, ...list1];
  print(list1);
  print(list2);
  print(list2.length);

  list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);

  var names1 =<String>{};

  // NIM dengan Spread Operator
  var nim = '2141720023';
  names1.addAll([nim]); 

  print(names1);
}
