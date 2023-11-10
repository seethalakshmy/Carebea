part of 'page_bloc.dart';

@freezed
class PageState with _$PageState {
  factory PageState.initial(
      {required bool isLoading,
      required bool isError,
      required int isForClient,
      required CommonResponse? response,
      required GetPagesResponse? getPagesResponse,
      required int radioValue}) = _Initial;

  factory PageState.loading() = _Loading;
}
