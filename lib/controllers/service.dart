// ignore_for_file: use_build_context_synchronously

import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quizapp/widgets/show_snack_bar.dart';

import '../const.dart';
import '../models/user.dart';

class Service {
  final dio = Dio();
  Future<User> loginUser(
      String username, String password, BuildContext context) async {
    final apiLogin = '$url/v1/user/login';

    final response = await dio
        .post(apiLogin, data: {"account": username, "password": password});
    User user = User.fromJson(response.data);
    if (user.code == 200) {
      context.router.replaceNamed('/home-screen');
    }
    return user;
  }

  Future regiterUSer(String username, String password, String hoten,
      BuildContext context) async {
    try {
      Response response = await dio.post('$url/v1/user/create',
          data: {"account": username, "password": password, "hoten": hoten});
      if (response.statusCode == 200) {
        showSnackBar("Dang ki thanh cong", context);
      }
    } catch (e) {}
  }
}

final userdata = Provider<Service>((ref) => Service());
