import 'package:praktikum2/praktikum2.dart' as praktikum2;

void main(List<String> arguments) {
  // var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  

  // menggunakan .add()
  names1.add('Serli Putri Maharani');
  names1.add('2141720023');

  // menggunakan .addAll()
  names2.addAll({'Serli Putri', '2141720023'});

  print(names1);
  print(names2);
}
