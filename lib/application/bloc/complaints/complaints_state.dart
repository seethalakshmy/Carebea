part of 'complaints_bloc.dart';

@freezed
class ComplaintsState with _$ComplaintsState {
  const factory ComplaintsState(
      {required bool isLoading,
      required bool isError,
      required DateTime selectedDate,
      required Option<Either<ApiErrorHandler, ComplaintsListResponseModel>>
          complaintListOption,
      required String? error}) = _ComplaintsState;

  factory ComplaintsState.initial() {
    return ComplaintsState(
        isLoading: true,
        isError: false,
        selectedDate: DateTime.now(),
        complaintListOption: None(),
        error: null);
  }
}
