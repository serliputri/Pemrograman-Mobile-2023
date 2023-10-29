import 'package:praktikum4/praktikum4.dart' as praktikum4;

void main(List<String> arguments) {
  // var list = [1, 2, 3];
  // var list2 = [0, ...list];
  // print(list);
  // print(list2);
  // print(list2.length);

  //LANGKAH 3
  // var list1 = [1,2, null];
  // var nim = 2141720023;
  // print(list1);
  // var list3 = [0, ...list1, nim];
  // print(list3);
  // print(list3.length);

  //LANGKAH 4
  // bool promoActive = true;
  // var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print(nav);

  //LANGKAH 5
  // String login = 'Manager';
  // var nav2 = [
  //   'Home',
  //   'Furniture',
  //   'Plants',
  //   if (login case 'Manager') 'Inventory'
  // ];
  // print(nav2);

  //LANGKAH 6
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
