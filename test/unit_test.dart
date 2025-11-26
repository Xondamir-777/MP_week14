// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:lab14/Calculator.dart';

void main() {
  Calculator calculator = Calculator();

  group('Calculator Tests', () {
    test('Addition Test with positive integers', () {
      expect(calculator.add(2, 3), 5);
    });

    test('Addition Test with negative integers', () {
      expect(calculator.add(-2, -3), -5);
    });

    test('Addition Test with mixed integers', () {
      expect(calculator.add(-2, 3), 1);
    });

    test('Addition Test with positive doubles', () {
      expect(calculator.addDouble(2.5, 3.5), 6.0);
    });

    test('Addition Test with negative doubles', () {
      expect(calculator.addDouble(-2.5, -3.5), -6.0);
    });

    test('Addition Test with mixed doubles', () {
      expect(calculator.addDouble(-2.5, 3.5), 1.0);
    });
  });
}
