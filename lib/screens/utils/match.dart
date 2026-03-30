class Match {

  bool _match = true;

  void compare(String wordA, String wordB) {
    if (wordA == wordB) {
      _match = true;
    }
    else {
      _match = false;
    }
  }

  String status() {
    if (_match) {
      return "Match!";
    }
    else {
      return "Not a Match!";
    }
  }
}