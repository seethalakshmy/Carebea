
import 'package:admin_580_tech/domain/caregiver_detail/model/data.dart';

class CareGiverDetailResponse {
  bool? status;
  String? message;
  CareGiverData? careGiverData;

  CareGiverDetailResponse({this.status, this.message, this.careGiverData});

  CareGiverDetailResponse copyWith({bool? status, String? message, CareGiverData? data}) =>
      CareGiverDetailResponse(
          careGiverData: data ?? careGiverData,
          status: status ?? this.status,
          message: message ?? this.message);

  CareGiverDetailResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    careGiverData = json['data'] != null ? CareGiverData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    data['data'] = careGiverData;
    return data;
  }
}
