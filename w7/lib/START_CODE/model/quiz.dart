class Quiz {
  final String title;
  final List<Question> questions;

  Quiz({required this.title, required this.questions});
}

class Question {
  final String title;
  final List<String> possibleAnswers;
  final String goodAnswer;

  const Question(
      {required this.title,
      required this.possibleAnswers,
      required this.goodAnswer});
}

class Answer {
  final String questionAnswer;
  final bool isCorrect;

  const Answer({
    required this.questionAnswer,
    this.isCorrect = false,
  });
}

