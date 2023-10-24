part of 'page_bloc.dart';

@freezed
class PageState with _$PageState {
  const factory PageState({
    required bool isLoading,
    required bool isError,
    required int isForClient,
    required CommonResponse? response,
    required GetPagesResponse? getPagesResponse,
  }) = _PageState;

  factory PageState.initial() {
    return const PageState(
      isLoading: false,
      isError: false,
      response: null,
      getPagesResponse: null,
      isForClient: 0,
    );
  }
}
