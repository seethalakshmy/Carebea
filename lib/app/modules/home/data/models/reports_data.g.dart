// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reports_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReportsData _$ReportsDataFromJson(Map<String, dynamic> json) => ReportsData(
      jsonrpc: json['jsonrpc'] as String?,
      id: json['id'],
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReportsDataToJson(ReportsData instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.result,
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      salesTeam: json['sales_team'] as String?,
      sales: (json['sales'] as num?)?.toDouble(),
      collectedAmount: json['collected_amount'] as int?,
      outstanding: (json['outstanding'] as num?)?.toDouble(),
      invoicedTarget: (json['invoiced_target'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'salesTeam': instance.salesTeam,
      'sales': instance.sales,
      'collectedAmount': instance.collectedAmount,
      'outstanding': instance.outstanding,
      'invoicedTarget': instance.invoicedTarget,
    };
