import 'package:json_annotation/json_annotation.dart';

part 'model_repository.g.dart';

@JsonSerializable()
class Loginuser {
  final String username;
  final String password;

  const Loginuser({
    required this.username,
    required this.password,
  });

  factory Loginuser.fromJson(Map<String, dynamic> json) =>
      _$LoginuserFromJson(json);

  Map<String, dynamic> toJson() => _$LoginuserToJson(this);

  @override
  String toString() => 'Loginuser{username:$username, password:$password}';
}
