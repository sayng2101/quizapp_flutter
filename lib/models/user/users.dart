import 'package:freezed_annotation/freezed_annotation.dart';
part 'users.freezed.dart';
part 'users.g.dart';
@freezed
class Users with _$Users{
  factory Users({
     @Default(0) int id,
    @Default('') String account,
    @Default('') String hoten,
    @Default(0) int score,
    @Default('') String age,
    @Default('') String createAt,
    @Default('') String updateAt,
  }) = _Users;

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);

}