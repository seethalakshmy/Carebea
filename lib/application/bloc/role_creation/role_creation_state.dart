part of 'role_creation_bloc.dart';

@freezed
class RoleCreationState with _$RoleCreationState {
  const factory RoleCreationState({
    required bool isLoading,
    required bool isError,
    required bool isEdit,
    required CommonResponseUse? response,
    required ModuleResponse? moduleResponse,
    required ViewRoleResponse? viewRoleResponse,
    required String? error,
    @Default(false) bool isClientError,
    @Default(false) bool isLoadingButton,
  }) = _RoleCreationState;

  factory RoleCreationState.initial() {
    return const RoleCreationState(
      isLoading: true,
      isError: false,
      isEdit: false,
      response: null,
      error: null,
      moduleResponse: null,
      viewRoleResponse: null,
    );
  }
}
