import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_login.freezed.dart';

@freezed
abstract class LoginUser with _$LoginUser {
  factory LoginUser({
    required String username,
    required String password,
  }) = _LoginUser;
}
@freezed
abstract class SignupUser with _$SignupUser {
  factory SignupUser({
    required String username,
    required String fullname,
    required String password,
  }) = _SignupUser;
}
