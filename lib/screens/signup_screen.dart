import 'package:flutter/material.dart';

import 'package:quizapp/screens/login_screen.dart';

import '../const.dart';
import '../utls/textfled2.dart';
import '../utls/textfled3.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _controleremail = TextEditingController();
  final TextEditingController _controlerpassword = TextEditingController();
  final TextEditingController _controlerfullname = TextEditingController();
  // ignore: prefer_final_fields
  bool _isLoading = false;
  bool _checkPass = true;
  bool? changValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 10, top: 100, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: const [
                    Text(
                      'Đăng ký',
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
                hintText: 'Nhập email đăng ký',
                iconData: Icons.person,
                color: backgroundColor,
                colorIcon: Colors.black,
                controller: _controleremail,
              ),
              const SizedBox(
                height: 30,
              ),
              TextField2Widget(
                hintText: 'Nhập ten cua ban',
                iconData: Icons.person,
                color: backgroundColor,
                colorIcon: Colors.black,
                controller: _controlerfullname,
              ),
              const SizedBox(
                height: 30,
              ),
              TextField3Widget(
                  checkPass: _checkPass,
                  hintText: 'Mật khẩu',
                  iconData: Icons.lock,
                  iconData2:
                      _checkPass ? Icons.visibility_off : Icons.visibility,
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
                      signUpUser();
                      _controleremail.clear();
                      _controlerpassword.clear();
                      _controlerfullname.clear();
                    },
                    child: _isLoading
                        ? Center(
                            child: CircularProgressIndicator(
                              color: textButton,
                            ),
                          )
                        : Text(
                            'Đăng ký tài khoản',
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
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Bạn đã có tài khoản?',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  signUpUser() async {
    setState(() {
      _isLoading = true;
    });
  }
}
