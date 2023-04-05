// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Quiz _$$_QuizFromJson(Map<String, dynamic> json) => _$_Quiz(
      id: json['id'] as int? ?? 0,
      question: json['question'] as String? ?? '',
      op1: json['op1'] as String? ?? '',
      op2: json['op2'] as String? ?? '',
      op3: json['op3'] as String? ?? '',
      op4: json['op4'] as String? ?? '',
      ans1: json['ans1'] as bool? ?? false,
      ans2: json['ans2'] as bool? ?? false,
      ans3: json['ans3'] as bool? ?? false,
      ans4: json['ans4'] as bool? ?? false,
      mon: json['mon'] as String? ?? '',
      createAt: json['createAt'] as String? ?? '',
      updateAt: json['updateAt'] as String? ?? '',
    );

Map<String, dynamic> _$$_QuizToJson(_$_Quiz instance) => <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'op1': instance.op1,
      'op2': instance.op2,
      'op3': instance.op3,
      'op4': instance.op4,
      'ans1': instance.ans1,
      'ans2': instance.ans2,
      'ans3': instance.ans3,
      'ans4': instance.ans4,
      'mon': instance.mon,
      'createAt': instance.createAt,
      'updateAt': instance.updateAt,
    };
