part of 'admins_bloc.dart';

@freezed
class AdminsState with _$AdminsState {
  const factory AdminsState({
    required bool isLoading,
    required bool isError,
    required CommonResponseUse? deleteResponse,
    required AdminGetResponse? getAdminsResponse,
    required GetRoleResponse? getRolesResponse,
    required String? error,
    @Default(false) bool isClientError,
  }) = _AdminsState;

  factory AdminsState.initial() {
    return const AdminsState(
      isLoading: true,
      isError: false,
      deleteResponse: null,
      error: null,
      getRolesResponse: null,
      getAdminsResponse: null,
    );
  }
}
