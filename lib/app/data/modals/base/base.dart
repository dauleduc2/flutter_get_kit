import 'package:json_annotation/json_annotation.dart';

part 'base.g.dart';

@JsonSerializable()
class BaseModal {
  final int id;
  final String createdAt;
  final String updatedAt;

  const BaseModal({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
  });

  factory BaseModal.fromJson(Map<String, dynamic> json) =>
      _$BaseModalFromJson(json);
  Map<String, dynamic> toJson() => _$BaseModalToJson(this);
}
