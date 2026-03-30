import 'package:flutter/material.dart';
import 'utils/guess.dart';
import 'guess_resultpage.dart';

class GuessPage extends StatefulWidget {
  const GuessPage({super.key});

  @override
  State<GuessPage> createState() => _GuessPageState();
}

class _GuessPageState extends State<GuessPage> {
  
  final game = Guess();

  final guessController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
            "Guessing Game",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Text("You have ${game.guesses()} guesses remaining."),
              TextField(
                controller: guessController,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    game.guess(int.parse(guessController.text));
                  });

                  if (game.getStatus() != 'play') {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ResultPage(game: game)));
                  }
                }, 
                child: Text("Guess")
              )
            ],
          ),
        ),
      ),
    );
  }
}
