import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizapp/provider/share_key.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LimitQuizScreen extends StatefulWidget {
  const LimitQuizScreen({super.key});

  @override
  State<LimitQuizScreen> createState() => _LimitQuizScreenState();
}

class _LimitQuizScreenState extends State<LimitQuizScreen> {
  double sliderValue = 5;
  int minvalue = 5;
  int maxvalue = 10;
  Future<void> pop() async {
    await context.router.pop("/home-screen");
  }

  @override
  void initState() {
    super.initState();
    initDefaultLimit();
  }

  initDefaultLimit() async {
    SharedPreferences presf = await SharedPreferences.getInstance();
    int value = presf.getInt(ShareKeys.limitkey) ?? 5;
    setState(() {
      sliderValue = value.toDouble();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () async {
              SharedPreferences presf = await SharedPreferences.getInstance();
              await presf.setInt(ShareKeys.limitkey, sliderValue.toInt());
              pop();
            },
            icon: const FaIcon(FontAwesomeIcons.arrowLeft)),
        title: const Text('Quiz app'),
        actions: null,
        backgroundColor: Colors.lightBlue,
        automaticallyImplyLeading: false,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(children: [
          const Spacer(),
          const Center(
            child: Text(
              'Cai dat so luong cau hoi',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          const Spacer(),
          Text(
            sliderValue.toInt().toString(),
            style: const TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
          ),
          Slider(
              value: sliderValue,
              min: minvalue.toDouble(),
              max: maxvalue.toDouble(),
              divisions: maxvalue - minvalue,
              onChanged: (value) {
                print(value);
                setState(() {
                  sliderValue = value;
                });
              }),
          const Spacer(),
          const Spacer(),
          const Spacer(),
        ]),
      ),
    );
  }
}
