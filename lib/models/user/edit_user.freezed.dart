// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditUser {
  int get id => throw _privateConstructorUsedError;
  String get hoten => throw _privateConstructorUsedError;
  String get ngaysinh => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditUserCopyWith<EditUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditUserCopyWith<$Res> {
  factory $EditUserCopyWith(EditUser value, $Res Function(EditUser) then) =
      _$EditUserCopyWithImpl<$Res, EditUser>;
  @useResult
  $Res call({int id, String hoten, String ngaysinh});
}

/// @nodoc
class _$EditUserCopyWithImpl<$Res, $Val extends EditUser>
    implements $EditUserCopyWith<$Res> {
  _$EditUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hoten = null,
    Object? ngaysinh = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      hoten: null == hoten
          ? _value.hoten
          : hoten // ignore: cast_nullable_to_non_nullable
              as String,
      ngaysinh: null == ngaysinh
          ? _value.ngaysinh
          : ngaysinh // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EditUserCopyWith<$Res> implements $EditUserCopyWith<$Res> {
  factory _$$_EditUserCopyWith(
          _$_EditUser value, $Res Function(_$_EditUser) then) =
      __$$_EditUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String hoten, String ngaysinh});
}

/// @nodoc
class __$$_EditUserCopyWithImpl<$Res>
    extends _$EditUserCopyWithImpl<$Res, _$_EditUser>
    implements _$$_EditUserCopyWith<$Res> {
  __$$_EditUserCopyWithImpl(
      _$_EditUser _value, $Res Function(_$_EditUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hoten = null,
    Object? ngaysinh = null,
  }) {
    return _then(_$_EditUser(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      hoten: null == hoten
          ? _value.hoten
          : hoten // ignore: cast_nullable_to_non_nullable
              as String,
      ngaysinh: null == ngaysinh
          ? _value.ngaysinh
          : ngaysinh // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EditUser implements _EditUser {
  _$_EditUser({required this.id, required this.hoten, required this.ngaysinh});

  @override
  final int id;
  @override
  final String hoten;
  @override
  final String ngaysinh;

  @override
  String toString() {
    return 'EditUser(id: $id, hoten: $hoten, ngaysinh: $ngaysinh)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hoten, hoten) || other.hoten == hoten) &&
            (identical(other.ngaysinh, ngaysinh) ||
                other.ngaysinh == ngaysinh));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, hoten, ngaysinh);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditUserCopyWith<_$_EditUser> get copyWith =>
      __$$_EditUserCopyWithImpl<_$_EditUser>(this, _$identity);
}

abstract class _EditUser implements EditUser {
  factory _EditUser(
      {required final int id,
      required final String hoten,
      required final String ngaysinh}) = _$_EditUser;

  @override
  int get id;
  @override
  String get hoten;
  @override
  String get ngaysinh;
  @override
  @JsonKey(ignore: true)
  _$$_EditUserCopyWith<_$_EditUser> get copyWith =>
      throw _privateConstructorUsedError;
}
