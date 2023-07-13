part of 'roles_bloc.dart';

@freezed
class RolesState with _$RolesState {
  const factory RolesState({
    required bool isLoading,
    required bool isError,
    required CommonResponse? deleteResponse,
    required GetRoleResponse? getRolesResponse,
    required String? error,
    @Default(false) bool isClientError,
  }) = _RolesState;

  factory RolesState.initial() {
    return const RolesState(
      isLoading: true,
      isError: false,
      deleteResponse: null,
      error: null,
      getRolesResponse: null,
    );
  }
}
