part of 'user_management_bloc.dart';

@freezed
class UserManagementEvent with _$UserManagementEvent {
  const factory UserManagementEvent.getUsers(
      {required String userId,
      required String page,
      required String limit,
      required String searchTerm,
      required int filterId}) = _GetUsers;
}
