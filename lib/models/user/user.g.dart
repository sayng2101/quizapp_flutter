// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      id: json['id'] as int? ?? 0,
      account: json['account'] as String? ?? '',
      hoten: json['hoten'] as String? ?? '',
      age: json['age'] as String? ?? '',
      createAt: json['createAt'] as String? ?? '',
      updateAt: json['updateAt'] as String? ?? '',
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'id': instance.id,
      'account': instance.account,
      'hoten': instance.hoten,
      'age': instance.age,
      'createAt': instance.createAt,
      'updateAt': instance.updateAt,
    };

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      code: json['code'] as int?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };
