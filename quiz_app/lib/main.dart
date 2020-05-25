import 'package:flutter/material.dart';
import 'package:quiz/QuizBrain.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(child: QuizPage()),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> score = [];
  QuizBrain quiz = new QuizBrain();

  void checkAnswer(bool answer) {
    bool correctAnswer = quiz.getCorrectAnswer();

    if (answer == correctAnswer) {
      score.add(
        Icon(
          Icons.check,
          color: Colors.green,
        ),
      );
    } else {
      score.add(
        Icon(
          Icons.close,
          color: Colors.red,
        ),
      );
    }

    setState(() {
      quiz.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 7,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                quiz.getQuestionText(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: RaisedButton(
              onPressed: () {
                checkAnswer(true);
              },
              child: Text(
                'true',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.green,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: RaisedButton(
              onPressed: () {
                checkAnswer(false);
              },
              child: Text(
                'false',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.red,
            ),
          ),
        ),
        Row(
          children: score,
        ),
      ],
    );
  }
}
