import 'Data.dart';

class CareGiverResponse {
  bool? status;
  String? message;
  Data? data;

  CareGiverResponse({this.status, this.message, this.data});

  CareGiverResponse copyWith({bool? status, String? message, Data? data}) =>
      CareGiverResponse(
          data: data ?? this.data,
          status: status ?? this.status,
          message: message ?? this.message);

  CareGiverResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    data['data'] = data;
    return data;
  }
}
