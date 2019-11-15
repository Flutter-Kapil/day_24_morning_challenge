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
  if ((recA.every((Map map) => map.values.every((x) => x < 0))) &&
      (recB.every((Map map) => map.values.every((x) => x < 0)))) {
    recA.forEach((map) => map.forEach((k, v) => map[k] = v.abs()));
    recB.forEach((map) => map.forEach((k, v) => map[k] = v.abs()));
  }
  //lets first  check whether two rectangles overlap or not
  // for this we can check if the line from of rec A x coordinates overlap with line from recB x coordinates, it should also do the same for Y axis.
  if (rectangleOverLapsOrNot(recA, recB)) {
    List pointA = [
      somefunction(recA[0]['x'], recA[1]['x'], recB[0]['x'], recB[1]['x']),
      somefunction(recA[0]['y'], recA[1]['y'], recB[0]['y'], recB[1]['y'])
    ]; //[x,y]
    List pointB = [
      anotherfunction(recA[0]['x'], recA[1]['x'], recB[0]['x'], recB[1]['x']),
      anotherfunction(recA[0]['y'], recA[1]['y'], recB[0]['y'], recB[1]['y'])
    ];
    return (pointA[0] - pointB[0]) * (pointA[1] - pointB[1]);
  } else {
    //if recA and recB don't overlap then return null
    return null;
  }
}

int somefunction(int a, int b, int c, int d) => c >= a ? c : d;
int anotherfunction(int a, int b, int c, int d) => b >= c ? b : a;

bool xAxisOverlapsOrNot(List<Map> recA, List<Map> recB) =>
    (recA[1]['x'] <= recB[1]['x'] && recA[1]['x'] >= recB[0]['x']) ||
    (recA[0]['x'] <= recB[1]['x'] && recA[0]['x'] >= recB[0]['x']);

bool yAxisOverlapsOrNot(List<Map> recA, List<Map> recB) =>
    (recA[1]['y'] <= recB[1]['y'] && recA[1]['y'] >= recB[0]['y']) ||
    (recA[0]['y'] <= recB[1]['y'] && recA[0]['y'] >= recB[0]['y']);

bool rectangleOverLapsOrNot(List<Map> recA, List<Map> recB) =>
    xAxisOverlapsOrNot(recA, recB) && yAxisOverlapsOrNot(recA, recB);

main() {}
