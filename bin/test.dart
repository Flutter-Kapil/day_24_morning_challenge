import 'main.dart';
import 'package:test/test.dart';

void main() {
  test("test case 1", () {
    expect(isPandigital(98140723568910), true);
  });

  test("test case 2", () {
    expect(overlappingRectangles(
        [{ 'x': 2, 'y': 1 }, { 'x': 5, 'y': 5 }], [{ 'x': 3, 'y': 2 }, { 'x': 5, 'y': 7 }]), 6);
  });
}
