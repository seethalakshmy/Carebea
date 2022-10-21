import 'package:json_annotation/json_annotation.dart';

part 'reports_data.g.dart';

@JsonSerializable()
class ReportsData {
  ReportsData({
    this.jsonrpc,
    this.id,
    this.result,
  });

  String? jsonrpc;
  dynamic id;
  Result? result;

  factory ReportsData.fromJson(Map<String, dynamic> json) => _$ReportsDataFromJson(json);

  Map<String, dynamic> toJson() => _$ReportsDataToJson(this);
}

@JsonSerializable()
class Result {
  Result({
    this.status,
    this.message,
    this.salesTeam,
    this.sales,
    this.collectedAmount,
    this.outstanding,
    this.invoicedTarget,
  });

  bool? status;
  String? message;
  String? salesTeam;
  double? sales;
  @JsonKey(name: "collected_amount")
  int? collectedAmount;
  double? outstanding;
  @JsonKey(name: "invoiced_target")
  double? invoicedTarget;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
