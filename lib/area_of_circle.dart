void main (){
  print(areaOfCircle(4));
  print(areaOfCircle(4,3.15));
  
}
// optional parameter:[]
// named parameter : {}
double areaOfCircle (double radius, [double pi = 3.14]) {
  return pi * radius * radius ;
}