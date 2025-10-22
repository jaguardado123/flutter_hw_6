import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:flutter_hw_6/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  /////////// Screen 1: Integration Tests ///////////////////

  testWidgets('Increment Integration Test: Happy Path', (WidgetTester tester) async {
    // Build the app
    await tester.pumpWidget(const MainApp());

    // Navigating to Increment Page
    await tester.tap(find.text("Screen 1: Increment"));
    await tester.pumpAndSettle(); // Wait for animations to complete

    // START YOUR TEST HERE


  });

  //////////// Screen 2: Integration Tests //////////////////

  testWidgets('Converter Integration Test: Happy Path',
      (WidgetTester tester) async {
    // Build the app
    await tester.pumpWidget(const MainApp());

    // Navigating to Increment Page
    await tester.tap(find.text("Screen 1: Increment"));
    await tester.pumpAndSettle(); // Wait for animations to complete

    // START YOUR TEST HERE


  });

  testWidgets('Converter Integration Test: Sad Path',
      (WidgetTester tester) async {
    // Build the app
    await tester.pumpWidget(const MainApp());

    // Navigating to Converter Page
    await tester.tap(find.text("Screen 2: Converter"));
    await tester.pumpAndSettle(); // Wait for animations to complete

    // START YOUR TEST HERE


  });

  //////////// Integration Tests: Screen 3 ////////////////

  testWidgets('Has Numbers Integration Test: Happy Path',
      (WidgetTester tester) async {
    // Build the app
    await tester.pumpWidget(const MainApp());

    // Navigating to Has Numbers Page
    await tester.tap(find.text("Screen 3: Has Numbers"));
    await tester.pumpAndSettle(); // Wait for animations to complete

    // START YOUR TEST HERE


  });

  testWidgets('Has Numbers Integration Test: Sad Path',
      (WidgetTester tester) async {
    // Build the app
    await tester.pumpWidget(const MainApp());

    // Navigating to Has Numbers Page
    await tester.tap(find.text("Screen 3: Has Numbers"));
    await tester.pumpAndSettle(); // Wait for animations to complete

    // START YOUR TEST HERE

  });
}
