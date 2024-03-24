class Question {
  final String question;
  final List<Answer> answers;

  Question({
    required this.question,
    required this.answers,
  });
}

class Answer {
  final String answer;
  final bool isCorrect;

  Answer({
    required this.answer,
    required this.isCorrect,
  });
}