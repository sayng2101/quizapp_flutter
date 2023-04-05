
import 'package:dio/dio.dart';
import '../const.dart';
import '../models/user/user.dart';


class UserControler {
  final Dio? _dio;
  final CancelToken? _cancelToken;
  UserControler({Dio? dio, CancelToken? cancelToken}) : _dio = dio , _cancelToken = cancelToken;
  Future<Data?> getUser(int id) async {
    final apiLogin = '$url/v1/user/$id';
    try {
      final response = await (_dio ?? Dio()).get(apiLogin, cancelToken: _cancelToken);
      return Data.fromJson(response.data['data']);
    } on DioError catch (e) {
      throw e.error;
    }
  }
}
