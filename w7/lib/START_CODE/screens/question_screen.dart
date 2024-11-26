import 'package:flutter/material.dart';
import '../model/quiz.dart';

class QuestionScreen extends StatelessWidget {
  final Question question;
  final ValueChanged<String> onAnswer;

  const QuestionScreen({
    super.key,
    required this.question,
    required this.onAnswer,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
            question.title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20,),
            // Answer Buttons
            ...question.possibleAnswers.map((answer){
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: ElevatedButton(
                  onPressed: () {
                    // Pass the selected answer
                    onAnswer(answer); 
                  },
                  child: Text(answer),
                  ),
                  );

            }).toList(),
          ],
        ),
      ),
    );
  }
}
 