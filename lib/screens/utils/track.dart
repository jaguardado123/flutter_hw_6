class Track {

  int _counter = 0;

  void increment() {
    _counter++;
  }

  void decrement() {
    if (_counter > 0) {
      _counter--;
    }
  }

  int count() {
    return _counter;
  }

}