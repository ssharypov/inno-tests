import 'dart:io';

void main() {
 bool exit = false;
 List<int> intArray = [];
 int? tmpVal;
 while(!exit) {
  var inputVal = stdin.readLineSync();
  if(inputVal! == "exit") break;
  try {
   tmpVal = int.parse(inputVal);
   if(tmpVal > 0) {
    intArray.add(tmpVal);
    print("Длина массива: ${intArray.length}");
    print("");
   } else {
    print("Это не число");
    print("Длина массива: ${intArray.length}");
    print("");
   }
  } catch (_) {
   print("Это не число");
   print("Длина массива: ${intArray.length}");
   print("");
  }
 }
}
