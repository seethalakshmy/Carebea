part of 'admins_bloc.dart';

@freezed
class AdminEvent with _$AdminEvent {
  const factory AdminEvent.getAdmins({
    required String userId,
    required int page,
    required int limit,
    String? searchTerm,
    String? status,
    String? roleId,
  }) = _GetAdmins;
  const factory AdminEvent.getRoles({
    required String userId,
  }) = _GetRoles;

  const factory AdminEvent.adminDelete(
      {required String adminID,
      required String userID,
      required BuildContext context}) = _AdminDelete;
}
