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
      required Option<Either<ApiErrorHandler, GetServiceResponseModel>>
          getServiceOption,
      required Option<Either<ApiErrorHandler, TransactionDetailsResponse>>
          trDetailsOption,
      required String? error}) = _ComplaintState;

  factory ComplaintDetailState.initial() {
    return const ComplaintDetailState(
        isLoading: true,
        isError: false,
        complaintDetailsOption: None(),
        updateComplaintOption: None(),
        getServiceOption: None(),
        trDetailsOption: None(),
        error: null);
  }
}
