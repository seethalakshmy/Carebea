import 'package:admin_580_tech/domain/service_request_management/model/service_request_response.dart';

class RescheduleParams {
  final String? userId;
  final String? profileId;
  final String? serviceId;
  final String? date;
  final String? startTime;
  final String? endTime;
  final int? genderPreference;
  final String? addressId;
  SelectedServices? selectedServices;

  RescheduleParams({
    this.userId,
    this.profileId,
    this.serviceId,
    this.date,
    this.startTime,
    this.endTime,
    this.genderPreference,
    this.addressId,
    this.selectedServices,
  });

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_id'] = userId;
    map['profile_id'] = profileId;
    map['service_id'] = serviceId;
    map['date'] = date;
    map['start_time'] = startTime;
    map['end_time'] = endTime;
    map['gender_preference'] = genderPreference;
    if (selectedServices != null) {
      map['selected_services'] = selectedServices!.toJson();
    }
    map['address_id'] = addressId;
    return map;
  }
}
