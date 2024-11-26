import 'package:flutter/material.dart';

import '../model/quiz.dart';
import '../widgets/app_button.dart';

class ResultScreen extends StatelessWidget {
  final VoidCallback onRestart;
  final List<String> userAnswers;
  final Quiz quiz;
  const ResultScreen({
    super.key,
    required this.onRestart,
    required this.userAnswers,
    required this.quiz,
  });

  @override
  Widget build(BuildContext context) {
    //to store the correct answers
    int score = 0;
    for (int i = 0; i < quiz.questions.length; i++) {
      if (quiz.questions[i].goodAnswer == userAnswers[i]) {
        score++;
      }
    }
    return Scaffold(
      backgroundColor: Colors.blue[500],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answer $score on ${quiz.questions.length}',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),

            //Display result question
            Expanded(
              child: ListView.builder(
                  itemCount: quiz.questions.length, //count the length of questions 
                  itemBuilder: (context, index) {
                    final question = quiz.questions[index];
                    final userAnswer = userAnswers[index];
                    final isCorrect = question.goodAnswer == userAnswer;

                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 20),
                      child: ListTile(  // use ListTile to display question and answer
                        leading: CircleAvatar( //to get the circle around the number of the question
                          backgroundColor:
                              isCorrect ? Colors.green : Colors.red,
                          child: Text(
                            '${index + 1}',
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                        title: Text(
                          question.title,
                          style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold,),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Display all possible answers
                            ...question.possibleAnswers.map((answer) {
                              final isSelected = answer == userAnswer;
                              return Text(
                                '${isSelected ? "✓ " : ""}$answer',
                                style: TextStyle(
                                  color: isSelected
                                      ? (isCorrect
                                          ? Colors.green
                                          : Colors.red)
                                      : Colors.black,
                                ),
                              );
                            }).toList(),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            AppButton(
              "Restart Quiz", // Button label
              onTap: onRestart, // Trigger restart callback
              icon: Icons.refresh, // Refresh icon for restart button
            ),
          ],
        ),
      ),
    );
  }
}
