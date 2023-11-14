part of 'role_creation_bloc.dart';

@freezed
class RoleCreationEvent with _$RoleCreationEvent {
  const factory RoleCreationEvent.addUpdateRole({
    required String userId,
    required String role,
    String? roleId,
    required List<Module> moduleId,
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
  const factory RoleCreationEvent.isCheckedView(Module module) = _IsCheckedView;
  const factory RoleCreationEvent.isCheckedEdit(Module module) = _IsCheckedEdit;
  const factory RoleCreationEvent.isEdit(bool isEdit) = _IsEdit;
  const factory RoleCreationEvent.isCheckedDelete(Module module) =
      _IsCheckedDelete;
  const factory RoleCreationEvent.isCheckedCreate(Module module) =
      _IsCheckedCreate;
}
