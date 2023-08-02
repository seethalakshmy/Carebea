part of 'admin_creation_bloc.dart';

@freezed
class AdminCreationState with _$AdminCreationState {
  const factory AdminCreationState({
    required PlatformFile? pickedProfilePic,
    required bool isLoading,
    required bool isError,
    required String? error,
    required CommonResponseUse? addResponse,
    required CommonResponseUse? updateResponse,
    required AdminViewResponse? viewResponse,
    required GetRoleResponse? rolesResponse,
    required Role? selectedRole,
    @Default(false) bool isClientError,
    @Default(false) bool isDropDownError,
    @Default(false) bool isLoadingButton,
  }) = _AdminCreationState;

  factory AdminCreationState.initial() {
    return AdminCreationState(
      isLoading: true,
      isError: false,
      viewResponse: null,
      addResponse: null,
      updateResponse: null,
      rolesResponse: null,
      selectedRole: null,
      error: null,
      pickedProfilePic:
          PlatformFile(size: 0, name: "", path: "", bytes: Uint8List(0)),
    );
  }
}
