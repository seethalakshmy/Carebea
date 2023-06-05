part of 'user_management_bloc.dart';

@freezed
class UserManagementEvent with _$UserManagementEvent {
  const factory UserManagementEvent.getUsers({required String userId, required int page, required int limit}) = _GetUsers;
}
