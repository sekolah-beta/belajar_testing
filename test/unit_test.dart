import 'package:flutter_test/flutter_test.dart';

// Fungsi-fungsi yang akan diuji
double calculateRectangleArea(double length, double width) => length * width;
double calculateCircleArea(double radius) => 3.14159 * radius * radius;
double calculateTriangleArea(double base, double height) => 0.5 * base * height;

void main() {
  // Deklarasi variabel yang akan digunakan dalam tes
  late double length;
  late double width;
  late double radius;
  late double base;
  late double height;

  // Digunakan sekali sebelum semua grup tes dijalankan
  setUpAll(() {
    print('Setting up all tests');
  });

  // Digunakan sekali setelah semua grup tes dijalankan
  tearDownAll(() {
    print('Tearing down all tests');
  });

  // Digunakan sebelum setiap tes dalam grup dijalankan
  setUp(() {
    length = 4;
    width = 5;
    radius = 3;
    base = 4;
    height = 5;
    print('Setting up before each test');
  });

  // Digunakan setelah setiap tes dalam grup dijalankan
  tearDown(() {
    print('Tearing down after each test');
  });

  group('Area calculation tests', () {
    test('calculateRectangleArea(length, width) returns 20', () {
      expect(calculateRectangleArea(length, width), 20);
    });

    test('calculateRectangleArea(0, width) returns 0', () {
      expect(calculateRectangleArea(0, width), 0);
    });

    test('calculateCircleArea(radius) returns approximately 28.27', () {
      expect(calculateCircleArea(radius), closeTo(28.27, 0.01));
    });

    test('calculateCircleArea(0) returns 0', () {
      expect(calculateCircleArea(0), 0);
    });

    test('calculateTriangleArea(base, height) returns 10', () {
      expect(calculateTriangleArea(base, height), 10);
    });

    test('calculateTriangleArea(0, height) returns 0', () {
      expect(calculateTriangleArea(0, height), 0);
    });
  });
}
