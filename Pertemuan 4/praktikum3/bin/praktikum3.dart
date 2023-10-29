import 'package:praktikum3/praktikum3.dart' as praktikum3;

void main(List<String> arguments) {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  gifts['Nama'] = 'Serli Putri Maharani';
  gifts['Nim'] = '2141720023';

  assert(
      gifts['Nama'] == 'Serli Putri Maharani' && gifts['Nim'] == '2141720023');
  print(gifts['Nama']);
  print(gifts['Nim']);

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  nobleGases[20] = 'Serli Putri Maharani';
  nobleGases[28] = '2141720023';

  assert(nobleGases[20] == 'Serli Putri Maharani' &&
      nobleGases[28] == '2141720023');
  print(nobleGases[20]);
  print(nobleGases[28]);
}
