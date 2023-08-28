import 'package:json_annotation/json_annotation.dart';

part 'filter_base.g.dart';

// Note: base class for all filters
@JsonSerializable()
class FilterBase {
  int? page;
  int? pageSize;
  String? order;
  String? orderBy;

  FilterBase({
    this.page = 0,
    this.pageSize = 10,
    this.order = 'ASC',
    this.orderBy = 'id',
  });

  factory FilterBase.fromJson(Map<String, dynamic> json) =>
      _$FilterBaseFromJson(json);
  Map<String, dynamic> toJson() => _$FilterBaseToJson(this);
}
