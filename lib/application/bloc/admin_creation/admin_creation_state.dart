part of 'admin_creation_bloc.dart';

@freezed
class AdminCreationState with _$AdminCreationState {
  const factory AdminCreationState({
    required bool isLoading,
    required bool isError,
    required String? error,
    required CommonResponseUse? addResponse,
    required CommonResponseUse? updateResponse,
    required AdminViewResponse? viewResponse,
    required GetRoleResponse? rolesResponse,
    @Default(false) bool isClientError,
    @Default(false) bool isDropDownError,
  }) = _AdminCreationState;

  factory AdminCreationState.initial() {
    return const AdminCreationState(
      isLoading: false,
      isError: false,
      viewResponse: null,
      addResponse: null,
      updateResponse: null,
      rolesResponse: null,
      error: null,
    );
  }
}
