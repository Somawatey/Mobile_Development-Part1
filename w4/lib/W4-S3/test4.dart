import 'package:flutter/material.dart';

void main() {
  runApp(ScoreBarApp());
}

class ScoreBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreenAccent,
        appBar: AppBar(
          title: Text("Score Bar Exercise"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ScoreBar(title: "My score in Flutter"),
              SizedBox(height: 20),
              ScoreBar(title: "My score in Dart"),
              SizedBox(height: 20),
              ScoreBar(title: "My score in React"),
            ],
          ),
        ),
      ),
    );
  }
}

class ScoreBar extends StatefulWidget {
  final String title;

  ScoreBar({required this.title});

  @override
  _ScoreBarState createState() => _ScoreBarState();
}

class _ScoreBarState extends State<ScoreBar> {
  int score = 5; // Initial score

  void increaseScore() {
    setState(() {
      if (score < 10) score++;
    });
  }

  void decreaseScore() {
    setState(() {
      if (score > 0) score--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.title, style: TextStyle(fontSize: 18)),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: decreaseScore,
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                    ),
                  ),
                  Container(
                    height: 20,
                    width: (MediaQuery.of(context).size.width - 100) * (score / 10),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: increaseScore,
            ),
          ],
        ),
      ],
    );
  }
}
