import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quizapp/controllers/fech_quiz.dart';
import 'package:quizapp/models/quiz/filter.dart';
import 'package:quizapp/models/quiz/quiz.dart';

final apiQuizProvider =
    Provider.family<QuizControler, CancelToken>((ref, cancelToken) {
  return QuizControler(cancelToken: cancelToken);
});

final quizProvider =
    FutureProvider.family<List<Quiz>, Filter>((ref, Filter filter) async {
  final quiz = ref
      .watch(apiQuizProvider(CancelToken()))
      .getQuiz(filter.genre, filter.limit);
  return quiz;
});

final listQuizProvider =
    StateNotifierProvider<ListQuizNotifier, List<Quiz>>((ref) {
  return ListQuizNotifier();
});

class ListQuizNotifier extends StateNotifier<List<Quiz>> {
  ListQuizNotifier() : super([]);
  void nextQuestion(int value) {
    value++;
  }
}
