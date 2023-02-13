// ignore_for_file: unused_field, use_build_context_synchronously, unused_import

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quizapp/controllers/service.dart';
import 'package:quizapp/models/user.dart';
import 'package:quizapp/screens/home_screen.dart';
import 'package:quizapp/screens/profile_screnn.dart';
import 'package:quizapp/screens/resetpass_screen.dart';
import 'package:quizapp/screens/signup_screen.dart';
import 'package:quizapp/widgets/bottom_nav.dart';
import 'package:quizapp/widgets/show_snack_bar.dart';

import '../const.dart';
import '../utls/textfled2.dart';
import '../utls/textfled3.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _controleremail = TextEditingController();
  final TextEditingController _controlerpassword = TextEditingController();
  // ignore: prefer_final_fields
  bool _isLoading = false;
  bool _checkPass = true;
  bool? changValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 10, top: 100, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: const [
                  Text(
                    'Đăng nhập',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField2Widget(
              hintText: 'Email đăng nhập',
              iconData: Icons.person,
              color: backgroundColor,
              colorIcon: Colors.black,
              controller: _controleremail,
            ),
            const SizedBox(
              height: 20,
            ),
            TextField3Widget(
                checkPass: _checkPass,
                hintText: 'Mật khẩu',
                iconData: Icons.lock,
                iconData2: _checkPass ? Icons.visibility_off : Icons.visibility,
                function: () {
                  setState(() {
                    _checkPass = !_checkPass;
                  });
                },
                colorIcon: Colors.black,
                color: backgroundColor,
                controller: _controlerpassword),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 50,
              height: 50,
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _isLoading = true;
                    });
                    Service().loginUser(_controleremail.text.trim(),
                        _controlerpassword.text.trim(),context);
                    
                    _controleremail.clear();
                    _controlerpassword.clear();
                  },
                  child: _isLoading
                      ? Center(
                          child: CircularProgressIndicator(
                            color: textButton,
                          ),
                        )
                      : Text(
                          'Đăng nhập',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: textButton,
                          ),
                        ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Đăng ký',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ResetPassScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Quên mật khẩu?',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  
}


