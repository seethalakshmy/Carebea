part of 'user_management_bloc.dart';

@freezed
class UserManagementState with _$UserManagementState {
  const factory UserManagementState(
      {required bool isLoading,
        required bool isError,
        required UserResponse? response,
        required String? error}) = _UsersState;

  factory UserManagementState.initial() {
    return const UserManagementState(
        isLoading: true, isError: false, response: null, error: null);
  }
}
