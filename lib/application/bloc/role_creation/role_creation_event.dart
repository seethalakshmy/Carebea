part of 'role_creation_bloc.dart';

@freezed
class RoleCreationEvent with _$RoleCreationEvent {
  const factory RoleCreationEvent.addUpdateRole({
    required String userId,
    required String role,
    String? roleId,
    required List<String> moduleId,
    required int isView,
    required int isDelete,
    required int isEdit,
    required BuildContext context,
  }) = _AddUpdateRole;
  const factory RoleCreationEvent.getModules({
    required String userId,
  }) = _GetModules;
  const factory RoleCreationEvent.viewRole({
    required String userId,
    required String roleId,
  }) = _ViewRole;

  const factory RoleCreationEvent.isSelected({
    required Module module,
  }) = _IsSelected;
  const factory RoleCreationEvent.isCheckedView(bool value) = _IsCheckedView;
  const factory RoleCreationEvent.isCheckedEdit(bool value) = _IsCheckedEdit;
  const factory RoleCreationEvent.isCheckedDelete(bool value) =
      _IsCheckedDelete;
}
