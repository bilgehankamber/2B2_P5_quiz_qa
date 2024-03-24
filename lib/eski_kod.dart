import 'package:deneme/data/question_data.dart';
import 'package:deneme/models/question.dart';
import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  int _questionIndex = 0;
  final List<Question> _questions = questions;
  final List<String?> _userAnswers = List.filled(questions.length, null);

  void _nextQuestion() {
    setState(() {
      if (_questionIndex < _questions.length - 1) {
        _questionIndex++;
      } else {
        _showResults();
      }
    });
  }

  void _prevQuestion() {
    setState(() {
      if (_questionIndex > 0) {
        _questionIndex--;
      }
    });
  }

  void _saveAnswer(String answer) {
    setState(() {
      _userAnswers[_questionIndex] = answer;
    });
  }

  void _showResults() {
    showDialog(
      useSafeArea: mounted,
      context: context,
      builder: (_) => AlertDialog(
        scrollable: true,
        title: const Text('Sonuçlar'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            _questions.length,
            (index) {
              final isCorrect = _userAnswers[index] ==
                  _questions[index]
                      .answers
                      .firstWhere((answer) => answer.isCorrect)
                      .answer;
              return ListTile(
                title: Text(
                  'Soru ${index + 1}: ${isCorrect ? "Doğru" : "Yanlış"}',
                  style: TextStyle(
                    color: isCorrect ? Colors.green : Colors.red,
                  ),
                ),
              );
            },
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Kapat'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sorular'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Soru ${_questionIndex + 1}/${_questions.length}',
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Text(
            _questions[_questionIndex].question,
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          ..._questions[_questionIndex].answers.map((answer) {
            return ElevatedButton(
              onPressed: () {
                _saveAnswer(answer.answer);
                _nextQuestion();
              },
              child: Text(answer.answer),
            );
          }),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if (_questionIndex > 0)
                ElevatedButton(
                  onPressed: _prevQuestion,
                  child: const Text('Önceki Soru'),
                ),
              if (_questionIndex < _questions.length - 1)
                ElevatedButton(
                  onPressed: _nextQuestion,
                  child: const Text('Sonraki Soru'),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
