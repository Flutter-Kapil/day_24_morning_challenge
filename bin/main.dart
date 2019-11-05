// Challenge 1
// Write test cases for the given challenges

// Challenge 2
// Pandigital Numbers
// A pandigital number contains all digits (0-9) at least once. Write a function
// that takes an integer, returning true if the integer is pandigital, and false otherwise.
//  Examples
//  isPandigital(98140723568910) ➞ true
bool isPandigital(int x) {
  String xToString = x.toString();
  for (int j = 0; j < 10; j++) {
    String jString = j.toString();
    if (!xToString.contains(jString)) {
      return false;
    }
  }
  return true;
}

// Challenge 3
// Area of Overlapping Rectangles
// Create a function that returns the area of the overlap between two rectangles.
// The function will receive two rectangles, each with the coordinates of two of
// its opposite angles.
//
// Examples
// overlappingRectangles(
//    [{ x: 2, y: 1 }, { x: 5, y: 5 }],
//    [{ x: 3, y: 2 }, { x: 5, y: 7 }]
//  ) ➞ 6
int overlappingRectangles(List<Map> recA, List<Map> recB) {
  //lets find coordinates for recA, lets say cord 1 and 3 are given
  // we have to find cord 2 and 4 now
  int cordAaX = recA[0]['x'];
  int cordAaY = recA[0]['y'];
  int cordAcX = recA[1]['x'];
  int cordAcY = recA[1]['y'];
  //we have  a(cordAaX,cordAaY) c(cordAcX,cordAcY)
  //now lets get coordinates of b and d
  int cordAbX = recA[1]['x'];
  int cordAbY = recA[0]['y'];
  int cordAdX = recA[0]['x'];
  int cordAdY = recA[1]['y'];
  print('a($cordAaX,$cordAaY),b($cordAbX,$cordAbY) ,c($cordAcX,$cordAcY), d($cordAdX,$cordAdY)');// print all coordinates of rectangle A


  //lets calculate coordinates of recB now
  int cordBaX = recB[0]['x'];
  int cordBaY = recB[0]['y'];
  int cordBcX = recB[1]['x'];
  int cordBcY = recB[1]['y'];
  //we have  a(cordBaX,cordBaY) c(cordBcX,cordBcY)
  //now lets get coordinates of b and d
  int cordBbX = recB[1]['x'];
  int cordBbY = recB[0]['y'];
  int cordBdX = recB[0]['x'];
  int cordBdY = recB[1]['y'];
  print('a($cordBaX,$cordBaY),b($cordBbX,$cordBbY) ,c($cordBcX,$cordBcY), d($cordBdX,$cordBdY)');// print all coordinates of rectangle B


  //lets first  check whether two rectangles overlap or not
  // for this we can check if the line from of rec A x coordinates overlap with line from recB x coordinates, it should also do the same for Y axis.
  return 0;
}

bool xAxisOverlapsOrNot(int Ax1, int Ax2,  int Bx1,  int Bx2, ){
    if((Ax2<=Bx2 && Ax2>=Bx1) || (Ax1<=Bx2 && Ax1>=Bx1)){
      print('x axis overlapts');
      return true;
    }
  return false;
}
bool yAxisOverlapsOrNot(int Ay1, int Ay2,  int By1,  int By2, ){
  if((Ay2>=By1 && Ay2<=By2) || (Ay1>=By1 && Ay1<=By2)){
    print('y axis overlapts');
    return true;
  }
  return false;
}
bool rectangleOverLapsOrNot(int Ax1,int Ay1, int Ax2, int Ay2, int Bx1, int By1,  int Bx2, int By2, ){
  if(xAxisOverlapsOrNot(Ax1, Ax2,  Bx1,  Bx2 ) && yAxisOverlapsOrNot(Ay1, Ay2, By1, By2 )){
    return true;
  }else{
    return false;
  }

}
main() {
  print(isPandigital(0123456789));
  print(overlappingRectangles([{ 'x': 2, 'y': 1 }, { 'x': 5, 'y': 5 }], [{ 'x': 3, 'y': 2 }, { 'x': 5, 'y': 7 }]));
  print(rectangleOverLapsOrNot(2,1,4,5,3,2,5,6));
}
