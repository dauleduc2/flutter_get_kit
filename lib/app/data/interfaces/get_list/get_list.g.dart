// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetListResponse<T> _$GetListResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    GetListResponse<T>(
      total: json['total'] as int,
      data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$GetListResponseToJson<T>(
  GetListResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'total': instance.total,
      'data': instance.data.map(toJsonT).toList(),
    };
