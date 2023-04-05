import 'package:dio/dio.dart';
import 'package:quizapp/const.dart';

class DataControler {
  final Dio? _dio;
  final CancelToken? _cancelToken;
  DataControler({Dio? dio, CancelToken? cancelToken})
  : _dio = dio,
        _cancelToken = cancelToken;
  Future<bool> sendScore(int id,int score) async {
    final apiScore= '$url/v1/user/score/$id';
    try {
        await (_dio ?? Dio())
          .put(apiScore, data: {"score": score}, cancelToken: _cancelToken);
      return true;
    } on DioError catch (e) {
      throw e.error;
    }
  }
}