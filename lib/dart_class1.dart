// int calculate() {
//   return 6 * 7;
// }

// void main() {
//   print(add(3,4));
//   print(add(3,4,5));
//   print(add(3,4,5,6));

// }
// // method overloading : same name but different signature: hudaina 
// //optional parameter:[]: optional:

// int add (int first, int second, [int third = 0, int fourth = 0]) {
//   return first + second + third + fourth ;

  // }

void main() {
  print(multiply(3,4));
  print(multiply(3,4,5));
  print(multiply(3,4,5,6));

}
int multiply (int first, int second, [int third = 1, int fourth = 1]) {
  return first * second * third * fourth ;

  }