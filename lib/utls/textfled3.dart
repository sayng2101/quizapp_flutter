// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class TextField3Widget extends StatefulWidget {
  final bool checkPass;
  final String hintText;
  final Color? colorIcon;
  final Color color;
  final TextInputType? keyBoard;
  final IconData iconData;
  final IconData iconData2;
  final Function()? function;
  final TextEditingController controller;
  const TextField3Widget({
    Key? key,
    this.checkPass = false,
    required this.hintText,
    required this.iconData,
    required this.iconData2,
    this.colorIcon,
    this.function,
    required this.color,
    this.keyBoard,
    required this.controller,
  }) : super(key: key);

  @override
  State<TextField3Widget> createState() => _TextFlied3WidgetState();
}

class _TextFlied3WidgetState extends State<TextField3Widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        obscureText: widget.checkPass,
        controller: widget.controller,
        keyboardType: widget.keyBoard,
        decoration: InputDecoration(
          filled: true,
          prefixIcon: Icon(
            widget.iconData,
            color: widget.colorIcon,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              widget.iconData2,
              color: Colors.black54,
            ),
            onPressed: widget.function,
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
