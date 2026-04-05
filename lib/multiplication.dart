import 'dart:io';

void main() {

  print("\nEnter number:");
  int tableNum = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= 10; i++) {
    print("$tableNum x $i = ${tableNum * i}");
  }
}