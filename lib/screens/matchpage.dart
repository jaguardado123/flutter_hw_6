import 'package:flutter/material.dart';
import 'utils/match.dart';

class MatchPage extends StatefulWidget {
  const MatchPage({super.key});

  @override
  State<MatchPage> createState() => _MatchPageState();
}

class _MatchPageState extends State<MatchPage> {
  final Match match = Match();

  final wordA_controller = TextEditingController();
  final wordB_controller = TextEditingController();

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
            "Match App",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Text(match.status(), style: TextStyle(fontSize: 40)),
              TextField(
                controller: wordA_controller,
                key: const Key('wordA-textfield'),
              ),
              TextField(
                controller: wordB_controller,
                key: const Key('wordB-textfield')
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    match.compare(wordA_controller.text, wordB_controller.text);
                  });
                }, 
                key: const Key('compare-button'),
                child: const Text("Compare")
              ),
            ],
          ),
        ),
      ),
    );
  }
}
