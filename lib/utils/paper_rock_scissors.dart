import 'dart:math';

final choices = ['rock', 'paper', 'scissors'];
final random = Random();

class PaperRockScissors {
  static String _cpu = '';
  String _player = '';

  PaperRockScissors() {
    _cpu = choices[random.nextInt(3)];
  }

  static void isTest(String choice) {
    // ADD YOUR CODE HERE
  }

  void play(String choice) {
    // ADD YOUR CODE HERE
  }

  String result() {
    // ADD YOUR CODE HERE
    return '';
  }
}
