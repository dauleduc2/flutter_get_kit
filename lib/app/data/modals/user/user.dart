import 'package:fss_mobile/app/data/modals/base/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User extends BaseModal {
  final int id;
  final String name;
  final String? deviceId;
  const User({
    required this.id,
    required this.name,
    this.deviceId,
    createdAt,
    updatedAt,
  }) : super(
          id: id,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
