part of 'faq_creation_bloc.dart';

@freezed
class FaqCreationState with _$FaqCreationState {
  const factory FaqCreationState({
    required bool isLoading,
    required bool isLoadingButton,
    required bool isError,
    required String? error,
    required int isForClient,
    required int radioValue,
    required Option<Either<ApiErrorHandler, FaqDetailsResponseModel>>
        faqDetailOption,
    @Default(false) bool isClientError,
    @Default(false) bool isDropDownError,
  }) = _FaqCreationState;

  factory FaqCreationState.initial() {
    return const FaqCreationState(
      isLoading: false,
      isError: false,
      isForClient: 0,
      faqDetailOption: None(),
      error: null,
      isLoadingButton: false,
      radioValue: 0,
    );
  }
}
