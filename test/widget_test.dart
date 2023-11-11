// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:form_screens/main.dart';

void main() {
  testWidgets('User Registration Form Test', (WidgetTester tester) async {
    // Build your app and trigger a frame.
    await tester.pumpWidget(UserRegistrationApp()); // Replace with your app's main widget

    // Find the text field for the username.
    final usernameField = find.byKey(Key('username_field_key')); // Replace with the actual key you set in your TextFormField.

    // Enter a username into the text field.
    await tester.enterText(usernameField, 'TestUser');

    // Verify that the text entered is correctly displayed.
    expect(find.text('TestUser'), findsOneWidget);
  });
}

