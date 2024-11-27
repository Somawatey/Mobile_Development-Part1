import 'package:w7/START_CODE/model/quiz.dart';

class Submission {
  late final List<Answer> answers;
  void addAnswer(Answer answer) {
    answers.add(answer);
  }

  void removeAnswer(Answer answer) {
    answers.remove(answer);
  }

  int getScore() {
    int score = 0;
    for (var answer in answers) {
      if (answer.isCorrect) score++;
    }
    return score;
  }

  Answer? getAnswerFor(Question question) {
    for (var answer in answers) {
      if (answer.questionAnswer == question.goodAnswer) //compare the answer u choose with the format answer in question that we have
      return answer;
    }

    return null;
  }
}
