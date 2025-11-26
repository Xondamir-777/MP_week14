// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lab14/Login.dart';

void main() {

  testWidgets('TextField accepts input', (WidgetTester tester) async {
    await tester.pumpWidget(
    MaterialApp(
      home: LoginPage(),
    ),
  );

    final textField1 = find.byKey(Key('emailField'));
    final textField2 = find.byKey(Key('passwordField'));

    expect(textField1, findsOneWidget);
    expect(textField2, findsOneWidget);

    await tester.enterText(textField1, 'sombody@example.com');
    await tester.enterText(textField2, '12345678');

    await tester.tap(find.text('Login'));

    await tester.pump();

    expect(find.text('Email: Email is valid'), findsOneWidget);
    expect(find.text('Password: Password is valid'), findsOneWidget);


    await tester.enterText(textField1, 'sombodyexample.com');
    await tester.enterText(textField2, '1234578');

    await tester.tap(find.text('Login'));

    await tester.pump();

    expect(find.text('Email: Email is not valid'), findsOneWidget);
    expect(find.text('Password: Password is not valid'), findsOneWidget);
  });
}
