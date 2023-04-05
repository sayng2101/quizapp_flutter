import 'package:freezed_annotation/freezed_annotation.dart';
part 'edit_user.freezed.dart';
@freezed
abstract class EditUser with _$EditUser {
  factory EditUser({
    required int id,
    required String hoten,
    required String ngaysinh,
  }) = _EditUser;
}
