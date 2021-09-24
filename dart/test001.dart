import 'dart:math';
import 'dart:io';

void main() {
  var randoms = List.filled(10,0);
  var rnd = Random();

  for (int i = 0; i < randoms.length; i++) {
    randoms[i] = rnd.nextInt(99);
    stdout.write(randoms[i]);
    stdout.write(' ');
  };

  print("");

  for(int i = 0; i < randoms.length; i++) {
    if(randoms[i] % 2 == 0) {
      stdout.write(randoms[i]);
      stdout.write(' ');
    }
  }
  print("");
}
