part of 'user_management_bloc.dart';

@freezed
class UserManagementState with _$UserManagementState {
  const factory UserManagementState(
      {required bool isLoading,
      required bool isError,
      required UserListResponse? response,
      required CommonResponse? changeStatusResponse,
      required String? error}) = _UsersState;

  factory UserManagementState.initial() {
    return const UserManagementState(
        isLoading: true,
        isError: false,
        response: null,
        error: null,
        changeStatusResponse: null);
  }
}
