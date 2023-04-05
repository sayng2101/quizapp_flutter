// ignore_for_file: use_build_context_synchronously
import 'dart:async';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:quizapp/provider/share_key.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../const.dart';

class ApiServic {
  final Dio? _dio;
  ApiServic({Dio? dio}) : _dio = dio;
  Future<bool> loginUser(String username, String password) async {
    final apiLogin = '$url/v1/user/login';
    try {
      final response = await (_dio ?? Dio())
          .post(apiLogin, data: {'account': username, 'password': password});
      if (response.statusCode == 200) {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setInt(ShareKeys.iduser, response.data["data"]["id"]);
      }
      return true;
    } on DioError catch (e) {
      log(e.message);
      return false;
    }
  }
}

class ApiSignup {
  final Dio? _dio;
  ApiSignup({Dio? dio}) : _dio = dio;
  Future<bool> sigupUser(
      String username, String fullname, String password) async {
    final apiSigup = '$url/v1/user/create';
    try {
       await (_dio ?? Dio()).post(apiSigup,
          data: {'account': username, 'password': password, 'hoten': fullname});
      return true;
    } on DioError catch (e) {
      log(e.message);
      return false;
    }
  }
}
