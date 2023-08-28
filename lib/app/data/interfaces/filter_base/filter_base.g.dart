// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_base.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilterBase _$FilterBaseFromJson(Map<String, dynamic> json) => FilterBase(
      page: json['page'] as int? ?? 0,
      pageSize: json['pageSize'] as int? ?? 10,
      order: json['order'] as String? ?? 'ASC',
      orderBy: json['orderBy'] as String? ?? 'id',
    );

Map<String, dynamic> _$FilterBaseToJson(FilterBase instance) =>
    <String, dynamic>{
      'page': instance.page,
      'pageSize': instance.pageSize,
      'order': instance.order,
      'orderBy': instance.orderBy,
    };
