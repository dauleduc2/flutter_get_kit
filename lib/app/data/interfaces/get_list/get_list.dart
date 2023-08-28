import 'package:json_annotation/json_annotation.dart';

part 'get_list.g.dart';

// Note: use for response of get list api (which need count total)
@JsonSerializable(genericArgumentFactories: true)
class GetListResponse<T> {
  final int total;
  final List<T> data;

  const GetListResponse({required this.total, required this.data});

  factory GetListResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$GetListResponseFromJson<T>(json, fromJsonT);
  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$GetListResponseToJson<T>(this, toJsonT);
}
