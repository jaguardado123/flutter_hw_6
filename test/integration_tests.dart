import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:flutter_hw_6/main.dart';
import 'package:flutter_hw_6/utils/lib.dart';

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
  }, skip: true);
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
  }, skip: true);
  // ===================================================================

  group('Integration Tests - Paper Rock Scissors Page', () {
    testWidgets('user can win the game', (tester) async {
      await _launchApp(tester);

      await tester.tap(find.byKey(const Key('paper-rock-scissors-pg-button')));
      await tester.pumpAndSettle();
      expect(find.text('Paper Rock Scissors Page'), findsOneWidget);

      PaperRockScissors.isTest('rock'); // CPU plays Scissors
      await tester.tap(find.byKey(const Key('paper-btn')));
      await tester.pumpAndSettle();
      expect(find.text('Result: won'), findsOneWidget);
    });

    testWidgets('user can lose the game', (tester) async {
      await _launchApp(tester);

      await tester.tap(find.byKey(const Key('paper-rock-scissors-pg-button')));
      await tester.pumpAndSettle();
      expect(find.text('Paper Rock Scissors Page'), findsOneWidget);

      PaperRockScissors.isTest('rock'); // CPU plays Rock
      await tester.tap(find.byKey(const Key('scissors-btn')));
      await tester.pumpAndSettle();
      expect(find.text('Result: lost'), findsOneWidget);
    });

    testWidgets('user can tie the game', (tester) async {
      await _launchApp(tester);

      await tester.tap(find.byKey(const Key('paper-rock-scissors-pg-button')));
      await tester.pumpAndSettle();
      expect(find.text('Paper Rock Scissors Page'), findsOneWidget);

      PaperRockScissors.isTest('rock'); // CPU plays Rock
      await tester.tap(find.byKey(const Key('rock-btn')));
      await tester.pumpAndSettle();
      expect(find.text('Result: tie'), findsOneWidget);
    });
  }, skip: true);
}

Future<void> _launchApp(WidgetTester tester) async {
  await tester.pumpWidget(const MyApp());
  await tester.pumpAndSettle();
}
