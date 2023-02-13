// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as int,
      account: json['account'] as String,
      hoten: json['hoten'] as String,
      createAt: json['createAt'] as String,
      updateAt: json['updateAt'] as String,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'account': instance.account,
      'hoten': instance.hoten,
      'createAt': instance.createAt,
      'updateAt': instance.updateAt,
    };
