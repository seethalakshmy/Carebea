part of 'user_management_detail_bloc.dart';

@freezed
class UserManagementDetailEvent with _$UserManagementDetailEvent {
  const factory UserManagementDetailEvent.getUserDetail(
      {required String userId, required String adminId}) = _GetUserDetail;

  const factory UserManagementDetailEvent.getClientService(
      {required String userId, required String adminId}) = _GetClientService;
}
