import 'package:praktikum3/praktikum3.dart' as praktikum3;

void main(List<String> arguments) {
  var gifts = {
  // Key:    Value
  'nama': 'Serli Putri Maharani',
  'NIM': '2141720023',
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 1
  };

  var nobleGases = {
    0: 'Serli Putri M', 
    1: '2141720023', 
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  gifts['nama'] = 'Serli Putri Maharani';
  gifts['NIM'] = '2141720023';
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[0] = 'Serli Putri M';
  nobleGases[1] = '2141720023';
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
}
