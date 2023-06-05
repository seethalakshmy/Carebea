
import 'package:admin_580_tech/domain/caregiver_detail/model/services.dart';
import 'package:admin_580_tech/domain/caregivers/model/pagination.dart';


class CareGiverData {
  List<Services>? services;

  CareGiverData({this.services,});

  CareGiverData copyWith({List<Services>? services, Pagination? pagination}) => CareGiverData(
      services: services ?? this.services,
      );

  CareGiverData.fromJson(Map<String, dynamic> json) {
    if (json['finalResult'] != null) {
      services = <Services>[];
      json['finalResult'].forEach((v) {
        services!.add(Services.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (services != null) {
      data['finalResult'] = services!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
