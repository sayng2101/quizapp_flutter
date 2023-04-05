
import 'package:flutter/material.dart';
import 'package:quizapp/screens/login_screen.dart';

import '../const.dart';
import '../utls/textfled2.dart';

class ResetPassScreen extends StatefulWidget {
  const ResetPassScreen({super.key});

  @override
  State<ResetPassScreen> createState() => _ResetPassScreenState();
}

class _ResetPassScreenState extends State<ResetPassScreen> {
  final TextEditingController _controleremail = TextEditingController();

  // ignore: prefer_final_fields
  bool _isLoading = false;
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
                  'Quên mật khẩu',
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
            hintText: 'Nhập email',
            iconData: Icons.person,
            color: backgroundColor,
            colorIcon: Colors.black,
            controller: _controleremail,
          ),
          const SizedBox(
            height: 20,
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
                 
                  _controleremail.clear();
                },
                child: _isLoading
                    ? Center(
                        child: CircularProgressIndicator(
                          color: textButton,
                        ),
                      )
                    : Text(
                        'Lấy lại mật khẩu',
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
                  'Trở về màn đăng nhập',
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
    ));
  }


}
