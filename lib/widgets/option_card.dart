import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  const OptionCard({
    super.key,
    required this.option,
    required this.color,
  });
  final String option;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: ListTile(
        title: Text(
          textAlign: TextAlign.center,
          option,
          style: TextStyle(
              fontSize: 22.0,
              color: color.red != color.green ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
