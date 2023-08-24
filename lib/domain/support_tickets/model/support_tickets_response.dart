import 'package:admin_580_tech/domain/support_tickets/model/support_tickets_data.dart';
import 'package:admin_580_tech/domain/user_management/model/user_data.dart';

class SupportTicketsResponse {
  bool? status;
  String? message;
  SupportTicketsData? data;

  SupportTicketsResponse({this.status, this.message, this.data});

  SupportTicketsResponse copyWith(
          {bool? status, String? message, SupportTicketsData? data}) =>
      SupportTicketsResponse(
          data: data ?? this.data,
          status: status ?? this.status,
          message: message ?? this.message);

  SupportTicketsResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data =
        json['data'] != null ? SupportTicketsData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    data['data'] = data;
    return data;
  }
}
