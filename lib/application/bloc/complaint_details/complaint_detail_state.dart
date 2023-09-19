part of 'complaint_detail_bloc.dart';

@freezed
class ComplaintDetailState with _$ComplaintDetailState {
  const factory ComplaintDetailState(
      {required bool isLoading,
      required bool isError,
      required Option<Either<ApiErrorHandler, ComplaintDetailsResponseModel>>
          complaintDetailsOption,
      required Option<Either<ApiErrorHandler, CommonResponse>>
          updateComplaintOption,
      required String? error}) = _ComplaintState;

  factory ComplaintDetailState.initial() {
    return const ComplaintDetailState(
        isLoading: true,
        isError: false,
        complaintDetailsOption: None(),
        updateComplaintOption: None(),
        error: null);
  }
}
