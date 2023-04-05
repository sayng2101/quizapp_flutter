import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class Data with _$Data {
   const factory Data({
    @Default(0) int id,
    @Default('') String account,
    @Default('') String hoten,
    @Default('') String age,
    @Default('') String createAt,
    @Default('') String updateAt,
  }) = _Data;
   factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class User with _$User{
  const factory User({
    int? code,
    Data? data,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
