import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizapp/controllers/send_data.dart';
import 'package:quizapp/models/quiz/filter.dart';
import 'package:quizapp/provider/quiz.dart';
import 'package:quizapp/screens/result_screen.dart';
import 'package:quizapp/widgets/option_card.dart';
import 'package:quizapp/widgets/question_widget.dart';
import 'package:quizapp/widgets/show_exit.dart';

class QuizScreen extends ConsumerStatefulWidget {
  final String genre;
  final int limit;
  final int id;
  const QuizScreen(
      {super.key, required this.genre, required this.limit, required this.id});

  @override
  ConsumerState<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends ConsumerState<QuizScreen> {
  int index = 0;
  int score = 0;
  bool isCheck = false;
  bool isCheck1 = false;
  bool isCheck2 = false;
  bool isCheck3 = false;
  bool isCheck4 = false;
  bool isCheckCall1 = false;

  @override
  Widget build(BuildContext context) {
    final dataquiz = ref
        .watch(quizProvider(Filter(genre: widget.genre, limit: widget.limit)));
    return WillPopScope(
      onWillPop: () =>
          showExitPopup(context, "Bạn thoát khỏi sẽ mất hết kết quả?"),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz app'),
          centerTitle: true,
          leading: WillPopScope(
            onWillPop: () =>
                showExitPopup(context, "Bạn thoát khỏi sẽ mất hết kết quả?"),
            child: IconButton(
                onPressed: () {
                  context.router.pushNamed('/home-screen');
                  // ignore: unused_result
                  ref.refresh(quizProvider(
                      Filter(genre: widget.genre, limit: widget.limit)));
                },
                icon: const FaIcon(FontAwesomeIcons.arrowLeft)),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Điểm:$score',
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            )
          ],
        ),
        body: dataquiz.when(
          error: (error, stack) {
            return Text(error.toString());
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          data: (data) => Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                QuestionWidget(
                    question: "",
                    indexAction: index,
                    totalQuestions: data.length),
                const Divider(
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: OptionCard(
                      option: data[index].question,
                      color: Colors.white,
                    )),
                const Spacer(),
                InkWell(
                  onFocusChange: (value1) {
                    value1 = isCheckCall1;
                    log("value 1 $value1");
                  },
                  onTap: () {
                    if (isCheckCall1 == false) {
                      setState(() {
                        isCheckCall1 = true;
                        isCheck1 = true;
                        if (data[index].ans1 == true && isCheck == false) {
                          score += 10;
                          isCheck = true;
                        } else if (data[index].ans2 == true) {
                          isCheck2 = true;
                        } else if (data[index].ans3 == true) {
                          isCheck3 = true;
                        } else if (data[index].ans4 == true) {
                          isCheck4 = true;
                        }
                      });
                    } else {
                      isCheck1 = true;
                      score += 0;
                    }
                  },
                  child: OptionCard(
                    option: "A. ${data[index].op1}",
                    color: isCheck1
                        ? data[index].ans1 == true
                            ? Colors.green
                            : Colors.red
                        : Colors.white,
                  ),
                ),
                InkWell(
                  // onTapCancel: () {
                  //   if (isCheckCall1 == false) {
                  //     setState(() {
                  //       isCheckCall1 = true;
                  //     });
                  //   }
                  // },
                  onFocusChange: (value2) {
                    value2 = isCheckCall1;
                    log("value 2 $value2");
                  },
                  onTap: () {
                    if (isCheckCall1 == false) {
                      setState(() {
                        isCheckCall1 = true;
                        isCheck2 = true;
                        if (data[index].ans2 == true && isCheck == false) {
                          score += 10;
                          isCheck = true;
                        } else if (data[index].ans1 == true) {
                          isCheck1 = true;
                        } else if (data[index].ans3 == true) {
                          isCheck3 = true;
                        } else if (data[index].ans4 == true) {
                          isCheck4 = true;
                        }
                      });
                    } else {
                      isCheckCall1 = true;
                      isCheck2 = true;
                      score += 0;
                    }
                  },
                  child: OptionCard(
                    option: "B. ${data[index].op2}",
                    color: isCheck2
                        ? data[index].ans2 == true
                            ? Colors.green
                            : Colors.red
                        : Colors.white,
                  ),
                ),
                InkWell(
                  onFocusChange: (value3) {
                    value3 = isCheckCall1;
                  },
                  onTap: () {
                    if (isCheckCall1 == false) {
                      setState(() {
                        isCheckCall1 = true;
                        isCheck3 = true;
                        if (data[index].ans3 == true && isCheck == false) {
                          score += 10;
                          isCheck = true;
                        } else if (data[index].ans1 == true) {
                          isCheck1 = true;
                        } else if (data[index].ans2 == true) {
                          isCheck2 = true;
                        } else if (data[index].ans4 == true) {
                          isCheck4 = true;
                        }
                      });
                    } else {
                      isCheck3 = true;
                      score += 0;
                    }
                  },
                  child: OptionCard(
                    option: "C. ${data[index].op3}",
                    color: isCheck3
                        ? data[index].ans3 == true
                            ? Colors.green
                            : Colors.red
                        : Colors.white,
                  ),
                ),
                InkWell(
                  onFocusChange: (value4) {
                    value4 = isCheckCall1;
                    log("value 4 $value4");
                  },
                  onTap: () {
                    if (isCheckCall1 == false) {
                      setState(() {
                        isCheck4 = true;
                        if (data[index].ans4 == true && isCheck == false) {
                          score += 10;
                          isCheck = true;
                        } else if (data[index].ans1 == true) {
                          isCheck1 = true;
                        } else if (data[index].ans2 == true) {
                          isCheck2 = true;
                        } else if (data[index].ans3 == true) {
                          isCheck3 = true;
                        }
                      });
                    } else {
                      isCheck4 = true;
                      score += 0;
                    }
                  },
                  child: OptionCard(
                    option: "D. ${data[index].op4}",
                    color: isCheck4
                        ? data[index].ans4 == true
                            ? Colors.green
                            : Colors.red
                        : Colors.white,
                  ),
                ),
                const Spacer(),
                const Spacer(),
                ElevatedButton(
                    onPressed: () {
                      if (index + 1 == widget.limit) {
                        index = 0;
                        // ignore: unused_result
                        ref.refresh(quizProvider(
                            Filter(genre: widget.genre, limit: widget.limit)));
                        if (isCheck1 || isCheck2 || isCheck3 || isCheck4) {
                          setState(() {
                            isCheckCall1 = false;
                            isCheck1 = false;
                            isCheck2 = false;
                            isCheck3 = false;
                            isCheck4 = false;
                            DataControler().sendScore(widget.id, score);
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ResultScreen(
                                  questionLength: widget.limit,
                                  result: score,
                                  gender: widget.genre,
                                  id: widget.id,
                                ),
                              ),
                            );
                          });
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Chua chon dap an'),
                              duration: Duration(seconds: 1),
                            ),
                          );
                        }
                      } else {
                        if (isCheck1 || isCheck2 || isCheck3 || isCheck4) {
                          setState(() {
                            index++;
                            isCheck1 = false;
                            isCheck2 = false;
                            isCheck3 = false;
                            isCheck4 = false;
                            isCheck = false;
                            isCheckCall1 = false;
                          });
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Chua chon dap an'),
                              duration: Duration(seconds: 1),
                            ),
                          );
                        }
                      }
                    },
                    child: (index + 1 == widget.limit && isCheck1 == true)
                        ? const Text("Kết thúc")
                        : const Text("Câu tiếp theo")),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
