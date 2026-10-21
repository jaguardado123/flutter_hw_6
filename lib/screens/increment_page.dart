import 'package:flutter/material.dart';
import '../utils/increment.dart';

class IncrementPage extends StatefulWidget {
  const IncrementPage({super.key});

  @override
  State<IncrementPage> createState() => _IncrementPageState();
}

class _IncrementPageState extends State<IncrementPage> {
  Increment _counter = Increment();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          centerTitle: true,
          title: const Text('Increment Page'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // ADD YOUR CODE HERE

            // ==================
          },
          child: const Icon(Icons.add),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${_counter.getValue()}',
                style: const TextStyle(fontSize: 50),
              )
            ],
          ),
        ));
  }
}
