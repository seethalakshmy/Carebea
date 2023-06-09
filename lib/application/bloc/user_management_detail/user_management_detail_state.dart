part of 'user_management_detail_bloc.dart';

@freezed
class UserManagementDetailState with _$UserManagementDetailState {
  const factory UserManagementDetailState(
      {required bool isLoading,
        required bool isError,
        required UserDetailResponse? response,
        required String? error}) = _UserManagementDetailState;

  factory UserManagementDetailState.initial() {
    return const UserManagementDetailState(
        isLoading: true, isError: false, response: null, error: null);
  }
}