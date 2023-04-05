import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../router/router.gr.dart';

// ignore: must_be_immutable
class ResultScreen extends StatelessWidget {
  int result;
  int questionLength;
  String gender;
  int id;
  ResultScreen(
      {super.key,
      required this.result,
      required this.questionLength,
      required this.gender,
      required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(70.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Điểm',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CircleAvatar(
              backgroundColor: result / 10 == questionLength / 2
                  ? Colors.yellow
                  : result / 10 < questionLength / 2
                      ? Colors.red
                      : Colors.green,
              radius: 70,
              child: Text(
                '$result',
                style: const TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Số câu trả lời đúng là: ${result ~/ 10}/$questionLength",
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                context.router
                    .push(QuizScreen(genre: gender, limit: questionLength, id: id));
              },
              child: const Text(
                'Chơi lại',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  letterSpacing: 1.0,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: (){context.router.pushNamed('/home-screen');},
                child: const Text(
                  'Trở về trang chủ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            
          ],
        ),
      ),
    ));
  }
}
