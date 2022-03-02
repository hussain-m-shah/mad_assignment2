import 'dart:io';

void main() {
  List<List<dynamic>> phoneBook = [
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
    [
      {"name": "Sarfaraz", "phone": "03441230978"},
      {"name": "Ahsan", "phone": "03005436543"},
      {"name": "Babar", "phone": "03221234098"},
      {"name": "Hafeez", "phone": "03445678901"},
      {"name": "Afridi", "phone": "03012345678"},
      {"name": "Imad", "phone": "03005437890"},
      {"name": "Ifthikar", "phone": "03123456789"},
      {"name": "Shadab", "phone": "03337654321"},
      {"name": "Haris", "phone": "03068756421"},
    ]
  ];
  while (true) {
    print("\nUse Phone Book By");
    print("\t1) Number");
    print("\t2) Name");
    String? choiceStr = stdin.readLineSync();
    int? choice = int?.parse(choiceStr!);
    if (choice == 1) {
      print("\nEnter the number");
      String? numberStr = stdin.readLineSync();
      int? number = int?.parse(numberStr!);
      Map<String, String> nameMap = phoneBook[1][number];
      print("\n\tName corresponding to number $number is ${nameMap["name"]}");
    } else {
      print("\nEnter the name");
      String? name = stdin.readLineSync();
      int index = phoneBook[1].indexWhere((element) => element["name"] == name);
      String phoneNumber = phoneBook[1][index]["phone"];
      print("\n\tName corresponding to number $name is $phoneNumber");
    }
    print("\nDo you want to continue (Y/N)");
    String? cont = stdin.readLineSync();
    if (cont == "N" || cont == "n") {
      break;
    }
  }
}



