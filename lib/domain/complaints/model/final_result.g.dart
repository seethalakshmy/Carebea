// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'final_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FinalResult _$$_FinalResultFromJson(Map<String, dynamic> json) =>
    _$_FinalResult(
      id: json['id'] as String?,
      complaintId: json['complaint_id'] as String?,
      userId: json['user_id'] as String?,
      clientName: json['client_name'] == null
          ? null
          : Name.fromJson(json['client_name'] as Map<String, dynamic>),
      caregiverName: json['caregiver_name'] == null
          ? null
          : Name.fromJson(json['caregiver_name'] as Map<String, dynamic>),
      category: json['category'] as String?,
      createdDate: json['created_date'] as String?,
      repliedOn: json['replied_on'] as String?,
      title: json['title'] as String?,
      role: json['role'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$_FinalResultToJson(_$_FinalResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('complaint_id', instance.complaintId);
  writeNotNull('user_id', instance.userId);
  writeNotNull('client_name', instance.clientName?.toJson());
  writeNotNull('caregiver_name', instance.caregiverName?.toJson());
  writeNotNull('category', instance.category);
  writeNotNull('created_date', instance.createdDate);
  writeNotNull('replied_on', instance.repliedOn);
  writeNotNull('title', instance.title);
  writeNotNull('role', instance.role);
  writeNotNull('status', instance.status);
  return val;
}
