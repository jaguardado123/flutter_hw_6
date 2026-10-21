import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:flutter_hw_6/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Integration Tests - Increment Page', () {
    testWidgets('increments the displayed counter', (tester) async {
      await _launchApp(tester);

      await tester.tap(find.byKey(const Key('increment-pg-button')));
      await tester.pumpAndSettle();

      expect(find.text('Increment Page'), findsOneWidget);
      expect(find.text('0'), findsOneWidget);

      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();
      expect(find.text('1'), findsOneWidget);

      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();
      expect(find.text('2'), findsOneWidget);
    });
  });
  // =============================================================

  group('Integration Tests - Convert Page', () {
    testWidgets('converts miles, yards, and feet', (tester) async {
      await _launchApp(tester);

      await tester.tap(find.byKey(const Key('converter-pg-button')));
      await tester.pumpAndSettle();
      expect(find.text('Convert Page'), findsOneWidget);

      await tester.enterText(find.byKey(const Key('user-input')), '2.5');
      await tester.tap(find.byKey(const Key('miles-to-yards-btn')));
      await tester.pumpAndSettle();
      expect(find.text('4400.0'), findsOneWidget);

      await tester.enterText(find.byKey(const Key('user-input')), '5');
      await tester.tap(find.byKey(const Key('yards-to-feet-btn')));
      await tester.pumpAndSettle();
      expect(find.text('15.0'), findsOneWidget);

      await tester.enterText(find.byKey(const Key('user-input')), '7.8');
      await tester.tap(find.byKey(const Key('feet-to-inches-btn')));
      await tester.pumpAndSettle();
      expect(find.text('93.6'), findsOneWidget);
    });
  });
  // ===================================================================

  group('Integration Tests - Paper Rock Scissors Page', () {
    testWidgets('plays each choice and displays a valid result',
        (tester) async {
      await _launchApp(tester);

      await tester.tap(find.byKey(const Key('paper-rock-scissors-pg-button')));
      await tester.pumpAndSettle();
      expect(find.text('Paper Rock Scissors Page'), findsOneWidget);

      for (final choice in ['Paper', 'Rock', 'Scissors']) {
        await tester.tap(find.text(choice));
        await tester.pumpAndSettle();
        _expectValidGameResult(tester);
      }
    });
  });
}

Future<void> _launchApp(WidgetTester tester) async {
  await tester.pumpWidget(const MyApp());
  await tester.pumpAndSettle();
}

void _expectValidGameResult(WidgetTester tester) {
  final resultTexts =
      ['won', 'lost', 'tie'].map((result) => find.text('Result: $result'));
  expect(
    resultTexts.where((finder) => finder.evaluate().isNotEmpty).length,
    1,
  );
}
