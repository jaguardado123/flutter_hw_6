import 'package:flutter/material.dart';
import '../utils/convert.dart';

class ConvertPage extends StatefulWidget {
  const ConvertPage({super.key});

  @override
  State<ConvertPage> createState() => _ConvertPageState();
}

class _ConvertPageState extends State<ConvertPage> {
  Convert _converter = Convert();
  double _value = 0.0;
  TextEditingController _userInputController = TextEditingController();

  @override
  void dispose() {
    _userInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          centerTitle: true,
          title: const Text('Convert Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  '${_value}',
                  style: const TextStyle(fontSize: 50),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  controller: _userInputController,
                  decoration: const InputDecoration(
                      hint: Text('Input non-negative real number')),
                  key: const Key('user-input'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: ElevatedButton(
                  onPressed: () {
                    // ADD YOUR CODE HERE

                    // ==================
                  },
                  key: const Key('miles-to-yards-btn'),
                  child: const Text('Miles to Yards'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: ElevatedButton(
                  onPressed: () {
                    // ADD YOUR CODE HERE

                    // ==================
                  },
                  key: const Key('yards-to-feet-btn'),
                  child: const Text('Yards to Feet'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: ElevatedButton(
                  onPressed: () {
                    // ADD YOUR CODE HERE

                    // ==================
                  },
                  key: const Key('feet-to-inches-btn'),
                  child: const Text('Feet to Inches'),
                ),
              ),
            ],
          ),
        ));
  }
}
