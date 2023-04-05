import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quizapp/controllers/edit_user.dart';
import 'package:quizapp/controllers/fech_user.dart';
import 'package:quizapp/controllers/fech_users.dart';
import 'package:quizapp/controllers/service.dart';
import 'package:quizapp/models/user/edit_user.dart';
import 'package:quizapp/models/user/user.dart';
import 'package:quizapp/models/user/user_login.dart';
import 'package:quizapp/models/user/users.dart';

//login user
final apiProvider = Provider((ref) {
  return ApiServic();
});

// ignore: non_constant_identifier_names, avoid_types_as_parameter_names
final loginUserProvider = FutureProvider.autoDispose
    .family<bool, LoginUser>((ref, LoginUser loginUser) async {
  return ref
      .watch(apiProvider)
      .loginUser(loginUser.username, loginUser.password);
});

//signup user
final apiSignupProvider = Provider((ref) {
  return ApiSignup();
});

// ignore: non_constant_identifier_names, avoid_types_as_parameter_names
final signUpUserProvider = FutureProvider.autoDispose
    .family<bool, SignupUser>((ref, SignupUser signupUser) async {
  return ref
      .watch(apiSignupProvider)
      .sigupUser(signupUser.username, signupUser.password, signupUser.fullname);
});

// fech user
final userControllerProvider =
    Provider.family<UserControler, CancelToken?>((ref, cancelToken) {
  return UserControler(cancelToken: cancelToken);
});

final userProvider =
    FutureProvider.autoDispose.family<Data?, int?>((ref, id) async {
  final link = ref.keepAlive();
  Timer? timer;
  ref.onCancel(() {
     timer = Timer(const Duration(seconds: 30), () {
      // dispose on timeout
      link.close();
    });
  });
  var user = ref.watch(userControllerProvider(CancelToken())).getUser(id!);
  return user;
});

//edit user
final editUserControllerProvider = Provider((ref) {
  return EditUserControler();
});

final editUserProvider = FutureProvider.autoDispose
    .family<bool, EditUser>((ref, EditUser editUser) async {
  await ref
      .read(editUserControllerProvider)
      .editUser(editUser.id, editUser.hoten, editUser.ngaysinh);
  ref.keepAlive();
  return true;
});

//list users
final apiUsersProvider =
    Provider.family<UsersControler, CancelToken>((ref, cancelToken) {
  return UsersControler(cancelToken: cancelToken);
});

final usersProvider =
    FutureProvider<List<Users>>((ref) async {
  final quiz = ref
      .watch(apiUsersProvider(CancelToken()))
      .getUsers();
  return quiz;
});