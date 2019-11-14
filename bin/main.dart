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
  //if all numbers are negative then turn them  into positive(abs)
//  if ((recA.every((Map map) => map.values.every((x) => x < 0))) &&
//      (recB.every((Map map) => map.values.every((x) => x < 0)))) {
//    recA.forEach((map) => map.forEach((k, v) => map[k] = v.abs()));
//    recB.forEach((map) => map.forEach((k, v) => map[k] = v.abs()));
//  }
  //lets first  check whether two rectangles overlap or not
  // for this we can check if the line from of rec A x coordinates overlap with line from recB x coordinates, it should also do the same for Y axis.
  int recAx0 = recA[0]['x'];
  int recAx1 = recA[1]['x'];
  int recAy0 = recA[0]['y'];
  int recAy1 = recA[1]['y'];
  int recBx0 = recB[0]['x'];
  int recBx1 = recB[1]['x'];
  int recBy0 = recB[0]['y'];
  int recBy1 = recB[1]['y'];
  List pointA = [];
  List pointB = [];
  if (recBx0 >= recAx0 && recBx0 <= recAx1) {
    pointA.add(recBx0);
  } else {
    pointA.add(recBx1);
  }
}

main() {
  overlappingRectangles([
    {'x': -1, 'y': -1},
    {'x': -3, 'y': -4}
  ], [
    {'x': -2, 'y': -3},
    {'x': -5, 'y': -7}
  ]);
  print(0 * 0);
}
