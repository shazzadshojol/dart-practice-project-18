import 'dart:io';

void main() {
  student obj = new student();
  print("enter your name ?");
  String Name = stdin.readLineSync()!;
  print(" inter your ID ");
  int id = int.parse(stdin.readLineSync()!);
  print(" Enter your Roll");
  int roll = int.parse(stdin.readLineSync()!);
  obj.dynamicDisplay(Name, id, roll);
}

class student {
  String name = " ";
  String ID = " ";
  String Roll = " ";
  String Batch = " ";

  void dynamicDisplay(String name, int ID, int Roll, [String Batch = "null"]) {
    List<String> nameParts = name.split(" ");
    print(nameParts);
    for (int n = 0; n < nameParts.length; n++) {
      String currentPart = nameParts[n];
      if (currentPart.isEmpty) {
        continue;
      }
      print("Your part name is $currentPart");
    }
    print("your id is $ID");
    print("your roll is $Roll");
    print("your batch is $Batch");
    int total = ID + Roll;
    print("Your addition is $total");
  }
}
