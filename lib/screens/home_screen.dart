import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizapp/const.dart';
import 'package:quizapp/provider/share_key.dart';
import 'package:quizapp/widgets/bottom_nav.dart';
import 'package:quizapp/widgets/show_exit.dart';
import 'package:quizapp/widgets/show_snack_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../router/router.gr.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int pageIndex = 1;
  @override
  Widget build(BuildContext context) {
    final router = context.router;
    return WillPopScope(
      onWillPop: () => showExitPopup(context, "Bạn muốn thoát khỏi ứng dụng?"),
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                _scaffoldKey.currentState!.openDrawer();
              },
              icon: const FaIcon(FontAwesomeIcons.bars)),
          title: const Text('Quiz app'),
          actions: null,
          backgroundColor: Colors.lightBlue,
          automaticallyImplyLeading: false,
        ),
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10,),
                _chooseQuiz(context, router, "Lịch sử", "assets/images/lich-su.png"),
                const SizedBox(height: 10,),
                _chooseQuiz(context, router, "Địa lý", "assets/images/dia-ly.png"),
                const SizedBox(height: 10,),
                _chooseQuiz(context, router, "Công nghệ", "assets/images/cong-nghe.png"),
              ],
            ),
          ),
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.lightBlue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 30, left: 16),
                  child: Center(
                    child: Text(
                      "Quiz app",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                DrawerButton(
                    lable: "Trang chủ",
                    onTap: () async {
                      router.pushNamed('/home-screen');
                    }),
                const Padding(padding: EdgeInsets.only(top: 20)),
                DrawerButton(
                    lable: "Hồ sơ người dùng",
                    onTap: () async {
                      int id = await getid();
                      router.push(ProfileScreen(id: id));
                    }),
                const Padding(padding: EdgeInsets.only(top: 20)),
                 DrawerButton(
                    lable: "Bảng xếp hạng",
                    onTap: () async {
                      int id = await getid();
                      router.push(TableScoreScreen(id: id));
                    }),
                const Padding(padding: EdgeInsets.only(top: 20)),
                DrawerButton(
                    lable: "Cài đặt câu hỏi",
                    onTap: () {
                      router.pushNamed('/limit-quiz-screen');
                    }),
                const Padding(padding: EdgeInsets.only(top: 20)),
                DrawerButton(
                    lable: "Đăng xuất",
                    onTap: () async {
                      showSnackBar("Đăng xuất", context);
                      context.router.replaceNamed('/');
                      SharedPreferences presf =
                          await SharedPreferences.getInstance();
                      await presf.remove("user");
                      await presf.remove("pass");
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _chooseQuiz(BuildContext context, StackRouter router, String genre, String addimage) {
    return Container(
              width: MediaQuery.of(context).size.width - 100,
              height: 150,
              decoration: const BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: InkWell(
                onTap: () async {
                          SharedPreferences presf =
                              await SharedPreferences.getInstance();
                          int limit = presf.getInt(ShareKeys.limitkey) ?? 5;
                          int id = presf.getInt(ShareKeys.iduser) ?? 0;
                          router
                              .push(QuizScreen(genre: genre, limit: limit, id: id));
                        },
                child: Column(
                  children: [
                    const Spacer(),
                    Container(
                      width: 100,
                      height: 100,
                      decoration:  BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(50)),
                        image: DecorationImage(
                          image: AssetImage(addimage),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Center(
                        child: Text(
                          genre,
                          style:
                              const TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    const Spacer()
                  ],
                ),
              ),
            );
  }
}
