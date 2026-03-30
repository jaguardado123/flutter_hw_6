import 'package:flutter/material.dart';
import 'screens/trackpage.dart';
import 'screens/matchpage.dart';
import 'screens/guesspage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Screens(),
    );
  }
}

class Screens extends StatelessWidget {
  const Screens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TrackPage()));
                    },
                    key: const Key('q1-button'),
                    child: const Text("Q1: Track App"))),
            Padding(
                padding: EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MatchPage()));
                    },
                    key: const Key('q2-button'),
                    child: const Text("Q2: Match App"))),
            Padding(
                padding: EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GuessPage()));
                    },
                    key: const Key('q3-button'),
                    child: const Text("Q3: Guessing Game"))),
          ],
        ),
      ),
    );
  }
}
