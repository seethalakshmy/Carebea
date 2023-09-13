part of 'admin_creation_bloc.dart';

@freezed
class AdminCreationEvent with _$AdminCreationEvent {
  const factory AdminCreationEvent.addAdmin(
      {required String userId,
      required String roleId,
      required BuildContext context,
      required String firstName,
      required String lastName,
      required String email,
      required String mobile,
      String? profilePic}) = _AddAdmin;

  const factory AdminCreationEvent.getRoles(
      {required String userId, required String searchTerm}) = _GetRoles;

  const factory AdminCreationEvent.updateAdmin(
      {required String userId,
      required String adminId,
      required String roleId,
      required BuildContext context,
      required String firstName,
      required String lastName,
      required String email,
      required String mobile,
      String? profilePic}) = _UpdateAdmin;

  const factory AdminCreationEvent.viewAdmin(
      {required String userId,
      required String adminId,
      required String searchTerm}) = _ViewAdmin;
  const factory AdminCreationEvent.dropDownErrorDisplay({
    required bool value,
  }) = _DropDownErrorDisplay;
  const factory AdminCreationEvent.setDropDownValue({
    required Role value,
  }) = _SetDropDownValue;
  const factory AdminCreationEvent.profilePicSelection(PlatformFile bytes) =
      _ProfilePicSelected;
}
