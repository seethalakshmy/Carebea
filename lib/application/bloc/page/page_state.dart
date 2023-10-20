part of 'page_bloc.dart';

@freezed
class PageState with _$PageState {
  const factory PageState({
    required bool isLoading,
    required bool isError,
    required CommonResponse? response,
  }) = _PageState;

  factory PageState.initial() {
    return const PageState(
      isLoading: true,
      isError: false,
      response: null,
    );
  }
}
