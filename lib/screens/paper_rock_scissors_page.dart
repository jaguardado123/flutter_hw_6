import 'package:flutter/material.dart';
import '../utils/paper_rock_scissors.dart';

class PaperRockScissorsPage extends StatefulWidget {
  const PaperRockScissorsPage({super.key});

  @override
  State<PaperRockScissorsPage> createState() => _PaperRockScissorsPageState();
}

class _PaperRockScissorsPageState extends State<PaperRockScissorsPage> {
  PaperRockScissors _game = PaperRockScissors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          centerTitle: true,
          title: const Text('Paper Rock Scissors Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  'Result: ${_game.result()}',
                  style: const TextStyle(fontSize: 50),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: ElevatedButton(
                  onPressed: () {
                    // ADD YOUR CODE HERE

                    // ==================
                  },
                  child: const Text('Paper'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: ElevatedButton(
                  onPressed: () {
                    // ADD YOUR CODE HERE

                    // ==================
                  },
                  child: const Text('Rock'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: ElevatedButton(
                  onPressed: () {
                    // ADD YOUR CODE HERE

                    // ==================
                  },
                  child: const Text('Scissors'),
                ),
              ),
            ],
          ),
        ));
  }
}
