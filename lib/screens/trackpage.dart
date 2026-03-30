import 'package:flutter/material.dart';
import 'utils/track.dart';

class TrackPage extends StatefulWidget {
  const TrackPage({super.key});

  @override
  State<TrackPage> createState() => _TrackPageState();
}

class _TrackPageState extends State<TrackPage> {
  
  final Track tracker = Track();

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
          title: const Text(
            "Track App",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // CREATE CODE TO DISPLAY CURRENT COUNTER VALUE
              Text(
                '${tracker.count()}', 
                style: const TextStyle(fontSize: 40),
                key: const Key('count-text'),
              ),
              Row(
                children: [
                  Spacer(),
                  ElevatedButton(
                    onPressed: () { 
                      setState(() {
                        tracker.decrement();
                      });
                    }, 
                    key: const Key('decrement-button'),
                    child: const Icon(Icons.remove),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  ElevatedButton(
                    onPressed: () { 
                      setState(() {
                        tracker.increment();
                      });
                    }, 
                    key: const Key('increment-button'),
                    child: const Icon(Icons.add)
                  ),
                  Spacer()
                ],
              )

            ],
          ),
        ),
        // CREATE FLOATING ACTION BUTTON TO INCREMENT COUNTER
      ),
    );
  }
}
