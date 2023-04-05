import 'package:auto_route/annotations.dart';
import 'package:quizapp/screens/home_screen.dart';
import 'package:quizapp/screens/limit_quiz_screen.dart';
import 'package:quizapp/screens/login_screen.dart';
import 'package:quizapp/screens/quiz_screen.dart';
import 'package:quizapp/screens/table_score_screen.dart';
import 'package:quizapp/screens/time_screen.dart';
import 'package:quizapp/screens/reset_pass_screen.dart';
import 'package:quizapp/screens/signup_screen.dart';
import 'package:quizapp/screens/profile_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginScreen, initial: true),
    AutoRoute(path: '/time-screen', page: TimeScreen),
    AutoRoute(path: '/sign-screen', page: SignUpScreen),
    AutoRoute(path: '/reset-screen', page: ResetPassScreen),
    AutoRoute(path: '/profile-sceen', page: ProfileScreen),
    AutoRoute(path: '/home-screen', page: HomeScreen),
    AutoRoute(path: '/table-score-screen', page: TableScoreScreen),
    AutoRoute(path: '/quiz-screen', page: QuizScreen),
    AutoRoute(path: '/limit-quiz-screen', page: LimitQuizScreen),
  ],
)
class $AppRouter {}
