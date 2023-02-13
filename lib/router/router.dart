import 'package:auto_route/annotations.dart';
import 'package:quizapp/screens/home_screen.dart';
import 'package:quizapp/screens/login_screen.dart';
    
@MaterialAutoRouter(              
  replaceInRouteName: 'Page,Route',              
  routes: <AutoRoute>[              
    AutoRoute(page: LoginScreen, initial: true),              
    AutoRoute(page: HomeScreen),              
  ],              
)              
class $AppRouter {}   