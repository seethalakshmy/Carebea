part of 'complaint_detail_bloc.dart';

@freezed
class ComplaintDetailEvent with _$ComplaintDetailEvent {
  const factory ComplaintDetailEvent.getComplaintDetails(
      {required String complaintId}) = _GetComplaintDetails;
}
