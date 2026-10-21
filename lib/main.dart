import 'package:flutter/material.dart';
import 'screens/increment_page.dart';
import 'screens/convert_page.dart';
import 'screens/paper_rock_scissors_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const IncrementPage()));
                    },
                    key: const Key('increment-pg-button'),
                    child: const Text("Increment Page"))),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ConvertPage()));
                    },
                    key: const Key('converter-pg-button'),
                    child: const Text("Converter Page"))),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const PaperRockScissorsPage()));
                    },
                    key: const Key('paper-rock-scissors-pg-button'),
                    child: const Text("Paper Rock Scissors Page"))),
          ],
        ),
      ),
    );
  }
}
