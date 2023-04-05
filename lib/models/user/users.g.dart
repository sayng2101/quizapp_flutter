// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Users _$$_UsersFromJson(Map<String, dynamic> json) => _$_Users(
      id: json['id'] as int? ?? 0,
      account: json['account'] as String? ?? '',
      hoten: json['hoten'] as String? ?? '',
      score: json['score'] as int? ?? 0,
      age: json['age'] as String? ?? '',
      createAt: json['createAt'] as String? ?? '',
      updateAt: json['updateAt'] as String? ?? '',
    );

Map<String, dynamic> _$$_UsersToJson(_$_Users instance) => <String, dynamic>{
      'id': instance.id,
      'account': instance.account,
      'hoten': instance.hoten,
      'score': instance.score,
      'age': instance.age,
      'createAt': instance.createAt,
      'updateAt': instance.updateAt,
    };
