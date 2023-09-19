part of 'sub_profile_details_bloc.dart';

@freezed
class SubProfileDetailEvent with _$SubProfileDetailEvent {
  const factory SubProfileDetailEvent.getSubProfileDetail(
      {required String userId, required String adminId}) = _GetSubProfileDetail;
}
