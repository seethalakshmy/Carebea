import 'package:admin_580_tech/domain/caregivers/model/pagination.dart';
import 'package:admin_580_tech/domain/support_tickets/model/support_ticket.dart';
import 'package:admin_580_tech/domain/support_tickets/model/support_ticket.dart';
import 'package:admin_580_tech/domain/support_tickets/model/support_ticket.dart';
import 'package:admin_580_tech/domain/support_tickets/model/support_ticket.dart';

class SupportTicketsData {
  List<SupportTickets>? supportTickets;
  Pagination? pagination;

  SupportTicketsData({this.supportTickets, this.pagination});

  SupportTicketsData copyWith(
          {List<SupportTickets>? supportTickets, Pagination? pagination}) =>
      SupportTicketsData(
          supportTickets: supportTickets ?? this.supportTickets,
          pagination: pagination ?? this.pagination);

  SupportTicketsData.fromJson(Map<String, dynamic> json) {
    if (json['finalResult'] != null) {
      supportTickets = <SupportTickets>[];
      json['finalResult'].forEach((v) {
        supportTickets!.add(SupportTickets.fromJson(v));
      });
    }
    pagination = json['pagination'] != null
        ? Pagination.fromJson(json['pagination'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (supportTickets != null) {
      data['finalResult'] = supportTickets!.map((v) => v.toJson()).toList();
    }
    if (pagination != null) {
      data['pagination'] = pagination!.toJson();
    }
    return data;
  }
}
