part of 'faq_creation_bloc.dart';

@freezed
class FaqCreationState with _$FaqCreationState {
  const factory FaqCreationState({
    required bool isLoading,
    required bool isError,
    required String? error,
    // required CommonResponseUse? addResponse,
    // required CommonResponseUse? updateResponse,
    // required AdminViewResponse? viewResponse,
    // required GetRoleResponse? rolesResponse,
    @Default(false) bool isClientError,
    @Default(false) bool isDropDownError,
    @Default(false) bool isLoadingButton,
  }) = _FaqCreationState;

  factory FaqCreationState.initial() {
    return const FaqCreationState(
      isLoading: true,
      isError: false,
      // viewResponse: null,
      // addResponse: null,
      // updateResponse: null,
      // rolesResponse: null,
      // selectedRole: null,
      error: null,
    );
  }
}
