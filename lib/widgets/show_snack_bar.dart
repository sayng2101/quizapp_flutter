import 'package:flutter/material.dart';

void showSnackBar(String content, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
      duration: const Duration(milliseconds: 3000),
    ),
  );
}
