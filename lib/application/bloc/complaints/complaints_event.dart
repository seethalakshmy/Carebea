part of 'complaints_bloc.dart';

@freezed
class ComplaintsEvent with _$ComplaintsEvent {
  const factory ComplaintsEvent.getComplaints(
      {required String userId,
      required String page,
      required String limit,
      required String searchTerm,
      required int status,
      required String startDate,
      required String endDate}) = _GetComplaints;
}
