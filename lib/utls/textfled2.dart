// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class TextField2Widget extends StatefulWidget {
  final bool checkPass;
  final String hintText;
  final Color? colorIcon;
  final Color color;
  final TextInputType? keyBoard;
  final int? maxLines;
  final IconData iconData;
  final TextEditingController controller;

  const TextField2Widget({
    Key? key,
    this.checkPass = false,
    required this.hintText,
    required this.iconData,
    this.colorIcon,
    required this.color,
    this.keyBoard,
    required this.controller,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  State<TextField2Widget> createState() => _TextFlied2WidgetState();
}

class _TextFlied2WidgetState extends State<TextField2Widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        obscureText: widget.checkPass,
        controller: widget.controller,
        keyboardType: widget.keyBoard,
        maxLines: widget.maxLines,
        decoration: InputDecoration(
          hintStyle: const TextStyle(color: Colors.black),
          filled: true,
          prefixIcon: Icon(
            widget.iconData,
            color: widget.colorIcon,
          ),
          hintText: widget.hintText,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: widget.color),
              borderRadius: BorderRadius.circular(5)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: widget.color),
          ),
        ),
      ),
    );
  }
}
