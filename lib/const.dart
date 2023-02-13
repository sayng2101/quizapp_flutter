
import 'package:flutter/material.dart';
import 'package:quizapp/screens/home_screen.dart';
import 'package:quizapp/screens/profile_screnn.dart';

var backgroundColor = Colors.black;

var buttonColor = Colors.black87;

var textButton = Colors.white;

var buttonColorDanger = Colors.red;
// setting url
var url = 'http://192.168.1.7:8080';

List pages = [
  const HomeScreen(),
  const ProfileScreen(),
];

const t = true;
const f = false;
