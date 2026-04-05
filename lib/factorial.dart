import 'dart:io';

void main() {

  print("\nEnter number for factorial:");
  int factNum = int.parse(stdin.readLineSync()!);

  int factIter = 1;
  for (int i = 1; i <= factNum; i++) {
    factIter *= i;
  }

  int factRec = factorial(factNum);

  print("Iterative: $factIter");
  print("Recursive: $factRec");
}
int factorial(int n) {
  if (n == 0) return 1;
  return n * factorial(n - 1);
}