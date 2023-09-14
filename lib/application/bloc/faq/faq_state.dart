part of 'faq_bloc.dart';

@freezed
class FaqState with _$FaqState {
  const factory FaqState({
    required bool isLoading,
    required bool isError,
    required String? error,
    required Option<Either<ApiErrorHandler, FaqListResponseModel>>
        faqListOption,
    @Default(false) bool isClientError,
  }) = _FaqState;

  factory FaqState.initial() {
    return const FaqState(
      isLoading: false,
      isError: false,
      error: null,
      faqListOption: None(),
    );
  }
}
