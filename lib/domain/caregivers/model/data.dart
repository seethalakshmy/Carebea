
import 'package:admin_580_tech/domain/caregivers/model/pagination.dart';

import 'care_givers.dart';

class Data {
  List<Caregivers>? caregivers;
  Pagination? pagination;

  Data({this.caregivers, this.pagination});

  Data copyWith({List<Caregivers>? caregivers, Pagination? pagination}) => Data(
      caregivers: caregivers ?? this.caregivers,
      pagination: pagination ?? this.pagination);

  Data.fromJson(Map<String, dynamic> json) {
    if (json['finalResult'] != null) {
      caregivers = <Caregivers>[];
      json['finalResult'].forEach((v) {
        caregivers!.add(Caregivers.fromJson(v));
      });
    }
    pagination = json['pagination'] != null
        ? Pagination.fromJson(json['pagination'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (caregivers != null) {
      data['finalResult'] = caregivers!.map((v) => v.toJson()).toList();
    }
    if (pagination != null) {
      data['pagination'] = pagination!.toJson();
    }
    return data;
  }
}
