part of 'user_management_detail_bloc.dart';

@freezed
class UserManagementDetailEvent with _$UserManagementDetailEvent {
  const factory UserManagementDetailEvent.getUserDetail(
      {required String userId, required String adminId}) = _GetUserDetail;

  const factory UserManagementDetailEvent.getClientService(
      {required String userId, required String adminId}) = _GetClientService;

  const factory UserManagementDetailEvent.getSubClients({
    required String userId,
    required String page,
    required String limit,
    required String searchTerm,
  }) = _GetSubClients;

  const factory UserManagementDetailEvent.getPendingServices({
    required String userId,
    required String profileId,
    required String page,
    required String limit,
  }) = _GetPendingServices;
}
