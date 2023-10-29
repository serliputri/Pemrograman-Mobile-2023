import 'package:praktikum2/praktikum2.dart' as praktikum2;

void main(List<String> arguments) {
  //LANGKAH 1
  // var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // print(halogens);

  //LANGKAH 3
  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = {}; // Creates a map, not a set.

  names1.add('Serli Putri Maharani');
  names1.add('2142720023');
  names2.addAll(['Serli P', '2141720023']);
  print(names1);
  print(names2);
  print(names3);
}
