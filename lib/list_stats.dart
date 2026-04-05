import 'dart:io';

void main() {

  print("\nEnter number of elements:");
  int count = int.parse(stdin.readLineSync()!);

  List<int> list = [];
  for (int i = 0; i < count; i++) {
    list.add(int.parse(stdin.readLineSync()!));
  }

  int max = list[0], min = list[0], sum = 0;

  for (int val in list) {
    if (val > max) max = val;
    if (val < min) min = val;
    sum += val;
  }

  double avg = sum / list.length;

  print("Max: $max, Min: $min, Avg: $avg");
}