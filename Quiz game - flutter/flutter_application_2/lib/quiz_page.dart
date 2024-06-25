import 'package:flutter/material.dart';
import 'data.dart';
import 'dart:async';

class QuizPage extends StatefulWidget {
  final String category;

  const QuizPage({Key? key, required this.category}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentQuestionIndex = 0;
  int score = 0;
  late Timer _timer;
  int _timeLeft = 10;
  List<String> userAnswers = [];

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    const duration = Duration(seconds: 1);
    _timer = Timer.periodic(duration, (timer) {
      setState(() {
        if (_timeLeft > 0) {
          _timeLeft--;
        } else {
          _timeLeft = 10;
          _goToNextQuestion();
        }
      });
    });
  }

  void _goToNextQuestion() {
    setState(() {
      if (currentQuestionIndex < questions[widget.category]!.length - 1) {
        currentQuestionIndex++;
        _timeLeft = 10;
      } else {
        _timer.cancel();
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Kviz završen'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Vaš rezultat je: $score/100'),
                const SizedBox(height: 10.0),
                Text('Tačni odgovori:'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _getCorrectAnswers(),
                ),
                const SizedBox(height: 10.0),
                Text('Netačni odgovori:'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _getIncorrectAnswers(),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: const Text('u redu'),
              ),
            ],
          ),
        );
      }
    });
  }

  void _answerQuestion(String option) {
    userAnswers.add(option);
    if (option ==
        questions[widget.category]![currentQuestionIndex].correctAnswer) {
      setState(() {
        score += 10;
      });
    } else if (option != 'Preskoči pitanje') {
      setState(() {
        score -= 5;
      });
    }
    _goToNextQuestion();
  }

  List<Widget> _getCorrectAnswers() {
    final categoryQuestions = questions[widget.category]!;
    return categoryQuestions.asMap().entries.map((entry) {
      final index = entry.key;
      final question = entry.value;
      final correctAnswer = question.correctAnswer;
      final userAnswer = index < userAnswers.length ? userAnswers[index] : '';

      if (correctAnswer == userAnswer) {
        return Text('${index + 1}. ${question.question}');
      } else {
        return SizedBox.shrink();
      }
    }).toList();
  }

  List<Widget> _getIncorrectAnswers() {
    final categoryQuestions = questions[widget.category]!;
    return categoryQuestions.asMap().entries.map((entry) {
      final index = entry.key;
      final question = entry.value;
      final correctAnswer = question.correctAnswer;
      final userAnswer = index < userAnswers.length ? userAnswers[index] : '';

      if (correctAnswer != userAnswer) {
        return Text('${index + 1}. ${question.question}');
      } else {
        return SizedBox.shrink();
      }
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final categoryQuestions = questions[widget.category]!;
    final currentQuestion = categoryQuestions[currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kviz: ${widget.category}',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFF38a3a5),
      ),

      body: Container(
        color: Color(0xFFc7f9cc),
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.help_outline, size: 24.0, color: Colors.black),
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: Text(
                        currentQuestion.question,
                        style: const TextStyle(fontSize: 20.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                ...currentQuestion.options.map((option) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF38a3a5),
                      padding: const EdgeInsets.all(16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    onPressed: () => _answerQuestion(option),
                    child: Text(
                      option,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF38a3a5),
                      padding: const EdgeInsets.all(16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    onPressed: () {
                      _goToNextQuestion();
                    },
                    child: const Text(
                      'Preskoči pitanje',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 1.5 - 50,
              left: MediaQuery.of(context).size.width / 2 - 50,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Color(0xFFfefae0),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  children: [
                    Icon(Icons.timer, size: 30.0, color: Colors.red),
                    const SizedBox(width: 20.0),
                    Text(
                      '$_timeLeft',
                      style: const TextStyle(
                        fontSize: 30.0,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Color(0xFFfefae0),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Pitanje ${currentQuestionIndex + 1}/${categoryQuestions.length}',
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Text(
                      'Rezultat: $score',
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 10.0),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
