import 'dart:math';

import 'package:test/test.dart';
import 'package:flutter_hw_6/utils/lib.dart';

void main() {
  // Testing the Increment class.
  group('Unit Tests - Increment Class: ', () {
    test('The counter starts at 0.', () {
      Increment counter = Increment();
      expect(counter.getValue(), 0);
    });

    test('The counter increments by 1 each time.', () {
      Increment counter = Increment();
      expect(counter.getValue(), 0);
      // Increment by 1
      counter.increment();
      expect(counter.getValue(), 1);
      // Increment by 2
      counter.increment();
      counter.increment();
      expect(counter.getValue(), 3);
      // Increment by 3
      counter.increment();
      counter.increment();
      counter.increment();
      expect(counter.getValue(), 6);
    });
  });
  // =========================================

  // Testing the Convert class.
  group('Unit Tests - Convert class: ', () {
    test('Only valid inputs are allowed.', () {
      Convert converter = Convert();
      // Miles to Yards
      expect(converter.miles_to_yards('bob'), -1);
      expect(converter.miles_to_yards(''), -1);
      expect(converter.miles_to_yards(-55), -1);
      // Yards to Feet
      expect(converter.yards_to_feet('carl'), -1);
      expect(converter.yards_to_feet(''), -1);
      expect(converter.yards_to_feet(-78), -1);
      // Feet to Inches
      expect(converter.feet_to_inches('jane'), -1);
      expect(converter.feet_to_inches(''), -1);
      expect(converter.feet_to_inches(-88), -1);
    });

    test('We can convert from Miles to Yards.', () {
      Convert converter = Convert();
      // 1 Mile = 1760 Yards
      expect(converter.miles_to_yards(1.0), 1760.0);
      // 2.5 Miles = 4400 Yards
      expect(converter.miles_to_yards('2.5'), 4400.0);
      // 3.33 Miles = 5860.8 Yards
      expect(converter.miles_to_yards(3.3), 5860.8);
    });

    test('We can convert from Yards to Feet.', () {
      Convert converter = Convert();
      // 1 Yard = 3 Feet
      expect(converter.yards_to_feet(1.0), 3.0);
      // 5 Yards = 15 Feet
      expect(converter.yards_to_feet('5.0'), 15.0);
      // 11.2 Yards = 33.6 Feet
      expect(converter.yards_to_feet(11.2), 33.6);
    });

    test('We can convert from Feet to Inches.', () {
      Convert converter = Convert();
      // 1 Foot = 12 Inches
      expect(converter.feet_to_inches(1.0), 12.0);
      // 5 Feet = 60 Inches
      expect(converter.feet_to_inches('5.0'), 60.0);
      // 7.8 Feet = 93.6 Inches
      expect(converter.feet_to_inches(7.8), 93.6);
    });
  });
  // ================================================

  // Testing the PaperRockScissors class.
  group('Unit Tests - PaperRockScissors class: ', () {
    test('CPU plays Paper.', () {
      PaperRockScissors game = PaperRockScissors();
      // CPU plays Paper
      PaperRockScissors.isTest('paper');
      game.play('rock');
      expect(game.result(), 'lost'); // Player loses
      game.play('scissors');
      expect(game.result(), 'won'); // Player wins
      game.play('paper');
      expect(game.result(), 'tie'); // Player ties
    });

    test('CPU plays Rock.', () {
      PaperRockScissors game = PaperRockScissors();
      // CPU plays Rock
      PaperRockScissors.isTest('rock');
      game.play('scissors');
      expect(game.result(), 'lost'); // Player loses
      game.play('paper');
      expect(game.result(), 'won'); // Player wins
      game.play('rock');
      expect(game.result(), 'tie'); // Player ties
    });

    test('CPU plays Scissors.', () {
      PaperRockScissors game = PaperRockScissors();
      // CPU plays Rock
      PaperRockScissors.isTest('scissors');
      game.play('paper');
      expect(game.result(), 'lost'); // Player loses
      game.play('rock');
      expect(game.result(), 'won'); // Player wins
      game.play('scissors');
      expect(game.result(), 'tie'); // Player ties
    });
  });
}
