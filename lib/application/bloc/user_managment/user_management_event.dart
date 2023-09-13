part of 'user_management_bloc.dart';

@freezed
class UserManagementEvent with _$UserManagementEvent {
  const factory UserManagementEvent.getUsers(
      {required String userId,
      required String page,
      required String limit,
      required String searchTerm,
      bool? filterId}) = _GetUsers;

  const factory UserManagementEvent.changeClientStatus(
      {required String userId,
      required String adminId,
      required bool status,
      required BuildContext context}) = _ChangeClientStatus;
}
