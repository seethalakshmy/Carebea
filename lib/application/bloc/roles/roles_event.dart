part of 'roles_bloc.dart';

@freezed
class RolesEvent with _$RolesEvent {
  const factory RolesEvent.getRoles(
      {required String userId,
      required int page,
      required int limit,
      String? searchTerm,
      int? filterId}) = _GetRoles;

  const factory RolesEvent.roleDelete(
      {required String roleId,
      required String userId,
      required BuildContext context}) = _RoleDelete;
}
