
import 'package:flutter/material.dart';
import 'package:quizapp/provider/share_key.dart';
import 'package:quizapp/router/router.gr.dart';
import 'package:shared_preferences/shared_preferences.dart';

var backgroundColor = Colors.black;

var buttonColor = Colors.black87;

var textButton = Colors.white;

var buttonColorDanger = Colors.red;
// setting url
var url = 'http://192.168.1.13:8080';
//172.20.32.1

List pages = [
  const HomeScreen(),
  
];

 Future<int> getid() async {
    final prefs = await SharedPreferences.getInstance();
    int id = prefs.getInt(ShareKeys.iduser) ?? 0;
    return id;
  }

//flutter pub run build_runner watch --delete-conflicting-outputs