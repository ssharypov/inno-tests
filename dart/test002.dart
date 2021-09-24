import 'dart:io';

void main() {
 while(true) {
  var inputVal = stdin.readLineSync();
  try {
   int? i = int.tryParse(inputVal!);
   if(i! > 0) print(i);
   else print("Это не число");
   print("");
  } catch (_) {
   print("Это не число");
   print("");
  }
 }
}
