import 'package:freezed_annotation/freezed_annotation.dart';
part 'quiz.freezed.dart';
part 'quiz.g.dart';

@freezed
class Quiz with _$Quiz{
  factory Quiz({
    @Default(0) int id,
    @Default('') String question,
    @Default('') String op1,
    @Default('') String op2,
    @Default('') String op3,
    @Default('') String op4,
    @Default(false) bool ans1,
    @Default(false) bool ans2,
    @Default(false) bool ans3,
    @Default(false) bool ans4,
    @Default('') String mon,
    @Default('') String createAt,
    @Default('') String updateAt,
  }) = _Quiz;

  factory Quiz.fromJson(Map<String, dynamic> json) => _$QuizFromJson(json);

}

