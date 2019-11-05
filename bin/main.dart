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
  return 0;
}
main() {
  print(isPandigital(0123456789));
  print(overlappingRectangles([{ 'x': 2, 'y': 1 }, { 'x': 5, 'y': 5 }], [{ 'x': 3, 'y': 2 }, { 'x': 5, 'y': 7 }]));
}
