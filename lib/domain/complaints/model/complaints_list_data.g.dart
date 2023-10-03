// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complaints_list_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ComplaintsListData _$$_ComplaintsListDataFromJson(
        Map<String, dynamic> json) =>
    _$_ComplaintsListData(
      finalResult: (json['finalResult'] as List<dynamic>?)
          ?.map((e) => FinalResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      serviceRelatedIssue: json['serviceRelatedIssue'] as num?,
      transactionRelatedIssue: json['transactionRelatedIssue'] as num?,
      generalIssue: json['generalIssue'] as num?,
      totalCaIssue: json['totalCaIssue'] as num?,
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ComplaintsListDataToJson(
    _$_ComplaintsListData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'finalResult', instance.finalResult?.map((e) => e.toJson()).toList());
  writeNotNull('serviceRelatedIssue', instance.serviceRelatedIssue);
  writeNotNull('transactionRelatedIssue', instance.transactionRelatedIssue);
  writeNotNull('generalIssue', instance.generalIssue);
  writeNotNull('totalCaIssue', instance.totalCaIssue);
  writeNotNull('pagination', instance.pagination?.toJson());
  return val;
}
