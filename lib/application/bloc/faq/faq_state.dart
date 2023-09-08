part of 'faq_bloc.dart';

@freezed
class FaqState with _$FaqState {
  const factory FaqState({
    required bool isLoading,
    required bool isError,
    required String? error,
    @Default(false) bool isClientError,
  }) = _FaqState;

  factory FaqState.initial() {
    return const FaqState(
      isLoading: true,
      isError: false,
      error: null,
    );
  }
}
