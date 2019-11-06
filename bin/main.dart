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
  //lets first  check whether two rectangles overlap or not
  // for this we can check if the line from of rec A x coordinates overlap with line from recB x coordinates, it should also do the same for Y axis.
  if (rectangleOverLapsOrNot(recA, recB)) {
    //if recA and recB overlap then calculate their intersection area and return that
    //now lets check which x point of recA and which y point of  recAis overlapping with recB.
    //this way we will know which two points are of common rectangle between them. then we can just find the area of rectangle from those two points.
    //lets call then point A and point B of this new rectangle
    List pointA = []; //[x,y]
    List pointB = []; //[x,y]
    if ((recA[1]['x'] <= recB[1]['x'] && recA[1]['x'] >= recB[0]['x'])) {
      pointA.add(recA[1]['x']);
    } else if ((recA[0]['x'] <= recB[1]['x'] && recA[0]['x'] >= recB[0]['x'])) {
      pointA.add(recA[0]['x']);
    }
    //above two if statements will add x coordinate for point A
    //now lets add y coordinate of point A
    if (recA[1]['y'] <= recB[1]['y'] && recA[1]['y'] >= recB[0]['y']) {
      pointA.add(recA[1]['y']);
    } else if (recA[0]['y'] <= recB[1]['y'] && recA[0]['y'] >= recB[0]['y']) {
      pointA.add(recA[0]['y']);
    }
//    print('pointA is $pointA');

    //now lets find coordinates for pointB
    if ((recB[0]['x'] <= recA[1]['x'] && recB[0]['x'] >= recA[0]['x'])) {
      pointB.add(recB[0]['x']);
    } else if ((recB[1]['x'] <= recA[1]['x'] && recB[1]['x'] >= recA[0]['x'])) {
      print('is ${recB[1]['x']}<=${recA[1]['x']}  ');
      pointB.add(recB[1]['x']);
    }
    //above two if statements will add x coordinate for point B
    //now lets add y coordinate of point B
    if (recB[1]['y'] <= recA[1]['y'] && recB[1]['y'] >= recA[0]['y']) {
      pointB.add(recB[1]['y']);
    } else if (recB[0]['y'] <= recA[1]['y'] && recB[0]['y'] >= recA[0]['y']) {
      pointB.add(recB[0]['y']);
    }
//    print('pointB is $pointB');

    //now return product of the difference of x and y coordinate of pointA and point Y
    return (pointA[0] - pointB[0]) * (pointA[1] - pointB[1]);
  } else {
    //if recA and recB don't overlap then return null
    return null;
  }
}

bool xAxisOverlapsOrNot(List<Map> recA, List<Map> recB) {
  if ((recA[1]['x'] <= recB[1]['x'] && recA[1]['x'] >= recB[0]['x']) ||
      (recA[0]['x'] <= recB[1]['x'] && recA[0]['x'] >= recB[0]['x'])) {
// print('x axis overlaps');
    return true;
  }

  return false;
}

bool yAxisOverlapsOrNot(List<Map> recA, List<Map> recB) {
  if ((recA[1]['y'] <= recB[1]['y'] && recA[1]['y'] >= recB[0]['y']) ||
      (recA[0]['y'] <= recB[1]['y'] && recA[0]['y'] >= recB[0]['y'])) {
//    print('y axis overlaps');
    return true;
  }

  return false;
}

bool rectangleOverLapsOrNot(List<Map> recA, List<Map> recB) {
  if (xAxisOverlapsOrNot(recA, recB) && yAxisOverlapsOrNot(recA, recB)) {
    return true;
  } else {
    return false;
  }
}

main() {
  print(isPandigital(0123456789));
  print(overlappingRectangles([
    {'x': -1, 'y': -1},
    {'x': 1, 'y': 1}
  ], [
    {'x': 0, 'y': 0},
    {'x': 5, 'y': 7}
  ]));
  print(overlappingRectangles([
    {'x': -1, 'y': -1},
    {'x': -3, 'y': -4}
  ], [
    {'x': -2, 'y': -3},
    {'x': -5, 'y': -7}
  ]));
  print(rectangleOverLapsOrNot([
    {'x': -5, 'y': -5},
    {'x': -1, 'y': -1}
  ], [
    {'x': 3, 'y': 2},
    {'x': 5, 'y': 7}
  ]));
}
