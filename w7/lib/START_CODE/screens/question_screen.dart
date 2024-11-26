import 'package:flutter/material.dart';
import '../model/quiz.dart';
import '../widgets/app_button.dart';

class QuestionScreen extends StatelessWidget {
  final Question question;
  final ValueChanged<String> selectedAnswer;

  const QuestionScreen({
    super.key,
    required this.question,
    required this.selectedAnswer,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
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

            // display choice Buttons
            ...question.possibleAnswers.map((answer){
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: AppButton(
                  answer, // Pass the answer text as the label
                  onTap: () {
                    selectedAnswer(answer); // Call onAnswer with the selected answer
                  },
                ),
                  );

            }).toList(),
          ],
        ),
      ),
    );
  }
}
 