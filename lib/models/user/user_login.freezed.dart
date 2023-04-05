// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginUser {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginUserCopyWith<LoginUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginUserCopyWith<$Res> {
  factory $LoginUserCopyWith(LoginUser value, $Res Function(LoginUser) then) =
      _$LoginUserCopyWithImpl<$Res, LoginUser>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class _$LoginUserCopyWithImpl<$Res, $Val extends LoginUser>
    implements $LoginUserCopyWith<$Res> {
  _$LoginUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginUserCopyWith<$Res> implements $LoginUserCopyWith<$Res> {
  factory _$$_LoginUserCopyWith(
          _$_LoginUser value, $Res Function(_$_LoginUser) then) =
      __$$_LoginUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$_LoginUserCopyWithImpl<$Res>
    extends _$LoginUserCopyWithImpl<$Res, _$_LoginUser>
    implements _$$_LoginUserCopyWith<$Res> {
  __$$_LoginUserCopyWithImpl(
      _$_LoginUser _value, $Res Function(_$_LoginUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$_LoginUser(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginUser implements _LoginUser {
  _$_LoginUser({required this.username, required this.password});

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginUser(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginUser &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginUserCopyWith<_$_LoginUser> get copyWith =>
      __$$_LoginUserCopyWithImpl<_$_LoginUser>(this, _$identity);
}

abstract class _LoginUser implements LoginUser {
  factory _LoginUser(
      {required final String username,
      required final String password}) = _$_LoginUser;

  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_LoginUserCopyWith<_$_LoginUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignupUser {
  String get username => throw _privateConstructorUsedError;
  String get fullname => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupUserCopyWith<SignupUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupUserCopyWith<$Res> {
  factory $SignupUserCopyWith(
          SignupUser value, $Res Function(SignupUser) then) =
      _$SignupUserCopyWithImpl<$Res, SignupUser>;
  @useResult
  $Res call({String username, String fullname, String password});
}

/// @nodoc
class _$SignupUserCopyWithImpl<$Res, $Val extends SignupUser>
    implements $SignupUserCopyWith<$Res> {
  _$SignupUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? fullname = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignupUserCopyWith<$Res>
    implements $SignupUserCopyWith<$Res> {
  factory _$$_SignupUserCopyWith(
          _$_SignupUser value, $Res Function(_$_SignupUser) then) =
      __$$_SignupUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String fullname, String password});
}

/// @nodoc
class __$$_SignupUserCopyWithImpl<$Res>
    extends _$SignupUserCopyWithImpl<$Res, _$_SignupUser>
    implements _$$_SignupUserCopyWith<$Res> {
  __$$_SignupUserCopyWithImpl(
      _$_SignupUser _value, $Res Function(_$_SignupUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? fullname = null,
    Object? password = null,
  }) {
    return _then(_$_SignupUser(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignupUser implements _SignupUser {
  _$_SignupUser(
      {required this.username, required this.fullname, required this.password});

  @override
  final String username;
  @override
  final String fullname;
  @override
  final String password;

  @override
  String toString() {
    return 'SignupUser(username: $username, fullname: $fullname, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignupUser &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, fullname, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignupUserCopyWith<_$_SignupUser> get copyWith =>
      __$$_SignupUserCopyWithImpl<_$_SignupUser>(this, _$identity);
}

abstract class _SignupUser implements SignupUser {
  factory _SignupUser(
      {required final String username,
      required final String fullname,
      required final String password}) = _$_SignupUser;

  @override
  String get username;
  @override
  String get fullname;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_SignupUserCopyWith<_$_SignupUser> get copyWith =>
      throw _privateConstructorUsedError;
}
