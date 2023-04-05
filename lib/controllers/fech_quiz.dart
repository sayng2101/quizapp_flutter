
import 'package:dio/dio.dart';
import 'package:quizapp/const.dart';
import 'package:quizapp/models/quiz/quiz.dart';

class QuizControler {
  final Dio? _dio;
  final CancelToken? _cancelToken;
  QuizControler({Dio? dio, CancelToken? cancelToken})
      : _dio = dio,
        _cancelToken = cancelToken;
  Future<List<Quiz>> getQuiz(String genre, int limit) async {
    final apiGetQuiz = '$url/v1/quiz/';
    try {
      final response = await (_dio ?? Dio()).request(apiGetQuiz,
          data: FormData.fromMap({
            'genre': genre,
            'limit': limit,
          }),
          options: Options(method: "POST"),
          cancelToken: _cancelToken);
      if (response.statusCode == 200) {
        final data = response.data as List;
        return data.map((e) => Quiz.fromJson(e)).toList();
      } else {
        throw Exception('Failed to load users: ${response.statusCode}');
      }
    } on DioError catch (e) {
      throw e.error;
    }
  }
}
