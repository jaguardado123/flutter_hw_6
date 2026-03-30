import 'dart:math';

class Guess {

  int _guesses = 3;
  int _hiddenNum = 0;
  String _status = 'play';
  static bool testingMode = false;

  Guess() {
    final random = Random();
    _hiddenNum = (testingMode) ? 7 : random.nextInt(10);
  }

  void _statusUpdate() {
    if (_guesses == 0) {
      _status = 'lost';
    }
  }

  void guess(int guess) {
    if (_guesses > 0) {
      if (guess == _hiddenNum) {
        _status = 'won';
      }
      else {
        _guesses--;
        _statusUpdate();
      }
    }
  }

  String getStatus() {
    return _status;
  }

  int guesses() {
    return _guesses;
  }

}