import 'package:dio/dio.dart';
import 'package:quizapp/const.dart';


class EditUserControler {
  final Dio? _dio;
  final CancelToken? _cancelToken;
  EditUserControler({Dio? dio, CancelToken? cancelToken})
      : _dio = dio,
        _cancelToken = cancelToken;
  Future<bool> editUser(int id, String hoten, String ngaysinh) async {
    final apiEditUser = '$url/v1/user/update/$id';
    try {
        await (_dio ?? Dio())
          .put(apiEditUser, data: {"hoten": hoten, "age": ngaysinh}, cancelToken: _cancelToken);
      return true;
    } on DioError catch (e) {
      throw e.error;
    }
  }
  Future<bool> editPassUser(int id, String passwod) async {
    final apiEditUser = '$url/v1/user/update/$id';
    try {
        await (_dio ?? Dio())
          .put(apiEditUser, data: {"password": passwod}, cancelToken: _cancelToken);
      return true;
    } on DioError catch (e) {
      throw e.error;
    }
  }
}
