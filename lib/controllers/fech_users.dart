import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:quizapp/const.dart';
import 'package:quizapp/models/user/users.dart';

class UsersControler {
  final Dio? _dio;
  final CancelToken? _cancelToken;
  UsersControler({Dio? dio, CancelToken? cancelToken})
      : _dio = dio,
        _cancelToken = cancelToken;
  Future<List<Users>> getUsers() async {
    final apiGetUSers = '$url/v1/user/';
    try {
      final response = await (_dio ?? Dio()).request(apiGetUSers,
          options: Options(method: "GET"),
          cancelToken: _cancelToken);
      if (response.statusCode == 200) {
        final data = response.data as List;
        log(data.toString());
        return data.map((e) => Users.fromJson(e)).toList();
      } else {
        throw Exception('Failed to load users: ${response.statusCode}');
      }
    } on DioError catch (e) {
      throw e.error;
    }
  }
}
