import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quizapp/widgets/show_exit.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>showExitPopup(context),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz app'),
          actions: null,
          backgroundColor: Colors.blue,
          automaticallyImplyLeading: false,
        ),
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child:  Center(
            child: Column(
              
              children: const [Text('')],
            ),
              // child: Container(
              //   width: 100,
              //   height: 50,
              //   decoration: BoxDecoration(
              //     color: buttonColor,
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              // child: Center(
              //   child: InkWell(
              //     onTap: () {
              //       Navigator.of(context).push(MaterialPageRoute(
              //         builder: (context) => const QuizScrenn(),
              //       ));
              //     },
              //     child: const Text(
              //       'Play',
              //       style: TextStyle(color: Colors.white, fontSize: 20),
              //     ),
              //   ),
              // ),
              // ),
              
              ),
        ),
      ),
    );
  }
}
