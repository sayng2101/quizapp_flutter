import 'package:flutter/material.dart';

class ResultBox extends StatelessWidget {
  const ResultBox({
    super.key,
    required this.result,
    required this.questionLength,
    required this.ontap,
  });
  final int result;
  final int questionLength;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.black,
      content: Padding(
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
              backgroundColor: result == questionLength / 2
                  ? Colors.yellow
                  : result < questionLength / 2
                      ? Colors.red
                      : Colors.green,
              radius: 70,
              child: Text(
                '$result/$questionLength',
                style: const TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: ontap,
              child: const Text(
                'Bắt đầu lại',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 22,
                  letterSpacing: 1.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
