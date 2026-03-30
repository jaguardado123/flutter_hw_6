import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:flutter_hw_6/main.dart';
import 'package:flutter_hw_6/screens/utils/guess.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  ///////////  Q1: Track App Integration Tests ///////////////////

  group("Testing Q1: Track App", () {

    testWidgets('Testing increment (+) button', (WidgetTester tester) async {
      // Build the app
      await tester.pumpWidget(const MainApp());

      // Navigating to Increment Page
      await tester.tap(find.byKey(const Key('q1-button')));
      await tester.pumpAndSettle(); // Wait for animations to complete

      // START YOUR TEST HERE


    });

    testWidgets('Testing decrement (-) button', (WidgetTester tester) async {
      // Build the app
      await tester.pumpWidget(const MainApp());

      // Navigating to Increment Page
      await tester.tap(find.byKey(const Key('q1-button')));
      await tester.pumpAndSettle(); // Wait for animations to complete

      // START YOUR TEST HERE


    });

  });

  ///////////  Q2: Match App Integration Tests ///////////////////

  group("Testing Q2: Match App", () {

    testWidgets('Testing words that match', (WidgetTester tester) async {
      // Build the app
      await tester.pumpWidget(const MainApp());

      // Navigating to Increment Page
      await tester.tap(find.byKey(const Key('q2-button')));
      await tester.pumpAndSettle(); // Wait for animations to complete

      // START YOUR TEST HERE


    });

    testWidgets('Testing words that do NOT match', (WidgetTester tester) async {
      // Build the app
      await tester.pumpWidget(const MainApp());

      // Navigating to Increment Page
      await tester.tap(find.byKey(const Key('q2-button')));
      await tester.pumpAndSettle(); // Wait for animations to complete

      // START YOUR TEST HERE


    });

  });

  ///////////  Q1: Guessing Game Integration Tests ///////////////////

  group("Testing Q3: Guessing Game", () {

    Guess.testingMode = true;

    testWidgets('Testing increment (+) button', (WidgetTester tester) async {
      // Build the app
      await tester.pumpWidget(const MainApp());

      // Navigating to Increment Page
      await tester.tap(find.byKey(const Key('q1-button')));
      await tester.pumpAndSettle(); // Wait for animations to complete

      // START YOUR TEST HERE


    });

    testWidgets('Testing decrement (-) button', (WidgetTester tester) async {
      // Build the app
      await tester.pumpWidget(const MainApp());

      // Navigating to Increment Page
      await tester.tap(find.byKey(const Key('q1-button')));
      await tester.pumpAndSettle(); // Wait for animations to complete

      // START YOUR TEST HERE


    });

  });

}