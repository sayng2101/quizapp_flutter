import 'package:flutter/material.dart';
import 'package:quizapp/const.dart';
import 'package:quizapp/widgets/nexr_button.dart';
import 'package:quizapp/widgets/result.dart';
import 'package:quizapp/widgets/show_snack_bar.dart';

import '../models/questions_model.dart';
import '../widgets/option_card.dart';
import '../widgets/question_widget.dart';

class QuizScrenn extends StatefulWidget {
  const QuizScrenn({super.key});

  @override
  State<QuizScrenn> createState() => _QuizScrennState();
}

class _QuizScrennState extends State<QuizScrenn> {
  final List<Question> _questions = [
    Question(
        id: '10',
        title: '1 + 1 = ?',
        options: {'3': f, '2': t, '4': f, '5': f}),
    Question(
        id: '11',
        title: '1 + 2 = ?',
        options: {'3': t, '2': f, '4': f, '5': f}),
    Question(
        id: '12',
        title: '10 + 20 = ?',
        options: {30.toString(): t, '10': f, 3.toString(): f, 5.toString(): f}),
    Question(id: '13', title: '10 % 2 = ?', options: {
      3.toString(): f,
      6.toString(): f,
      4.toString(): f,
      5.toString(): t,
    }),
    Question(
        id: '14',
        title: '10 * 10 =?',
        options: {'10': f, '50': f, 100.toString(): t, '200': f}),
  ];
  int index = 0;
  int score = 0;
  bool isCheck = false;

  void nextQuestion() {
    if (index == _questions.length - 1) {
      showDialog(
        context: context,
        builder: (context) => ResultBox(
            questionLength: _questions.length, result: score, ontap: batdaulai),
      );
    } else {
      if (isCheck) {
        setState(() {
          index++;
          isCheck = false;
        });
      } else {
        showSnackBar('Vui lòng chọn đáp án', context);
      }
    }
  }

  void batdaulai() {
    setState(() {
      index = 0;
      score = 0;
      isCheck = false;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz app'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Điểm:$score',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            QuestionWidget(
                question: _questions[index].title,
                indexAction: index,
                totalQuestions: _questions.length),
            const Divider(
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            for (int i = 0; i < _questions[index].options.length; i++)
              InkWell(
                onTap: () {
                  checkScore(_questions[index].options.values.toList()[i]);
                  setState(() {
                    isCheck = true;
                  });
                },
                child: OptionCard(
                  option: _questions[index].options.keys.toList()[i],
                  color: isCheck
                      ? _questions[index].options.values.toList()[i] == true
                          ? Colors.green
                          : Colors.red
                      : Colors.white,
                ),
              )
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10.0),
        child: NextButton(
          nextQuestion: nextQuestion,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  void checkScore(bool value) {
    if (value == true) {
      score++;
      setState(() {
        isCheck = true;
      });
    }
  }
}
