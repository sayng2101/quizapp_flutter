import 'package:json_annotation/json_annotation.dart';

import 'user_data.dart';
part 'user.g.dart';

@JsonSerializable()
class User {
  int code;
  Data data;

  User(this.code, this.data);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
