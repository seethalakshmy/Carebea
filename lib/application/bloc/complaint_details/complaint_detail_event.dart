part of 'complaint_detail_bloc.dart';

@freezed
class ComplaintDetailEvent with _$ComplaintDetailEvent {
  const factory ComplaintDetailEvent.getComplaintDetails(
      {required String complaintId}) = _GetComplaintDetails;

  const factory ComplaintDetailEvent.updateComplaint({
    required String complaintId,
    required int status,
    required String comment,
  }) = _UpdateComplaint;

  const factory ComplaintDetailEvent.getService(
      {required String serviceId, required BuildContext context}) = _GetService;
  const factory ComplaintDetailEvent.getTransactionDetails({
    required String transactionId,
  }) = _GetTransactionDetails;
}
