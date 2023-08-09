class AssignCareGiverParams {
  final String? userId;
  final String? profileId;
  final String? serviceId;
  final String? oldServiceId;
  final String? caregiverID;
  final num? distance;
  final bool? isReschedule;
  final bool? isRebook;

  AssignCareGiverParams({
    this.userId,
    this.profileId,
    this.serviceId,
    this.oldServiceId,
    this.caregiverID,
    this.distance,
    this.isReschedule,
    this.isRebook,
  });

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_id'] = userId;
    map['profile_id'] = profileId;
    map['service_id'] = serviceId;
    map['old_service_id'] = oldServiceId;
    map['caregiver_id'] = caregiverID;
    map['distance'] = distance;
    map['is_reschedule_service'] = isReschedule;
    map['is_rebook_service'] = isRebook;

    return map;
  }
}
