
import 'package:json_annotation/json_annotation.dart';
part 'user_data.g.dart';
@JsonSerializable()

class Data {
  Data({
    required this.id,
    required this.account,
    required this.hoten,
    required this.createAt,
    required this.updateAt,
  });

  int id;
  String account;
  String hoten;
  String createAt;
  String updateAt;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}
