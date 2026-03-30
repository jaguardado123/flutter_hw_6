import 'package:flutter/material.dart';
import 'utils/guess.dart';

class ResultPage extends StatelessWidget {
  final Guess game; 
  const ResultPage({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            "Guessing Game Result",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Text('You ${game.getStatus()}!', style: TextStyle(fontSize: 40),)
            ],
          ),
        ),
    );
  }
}