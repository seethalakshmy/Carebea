// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'admin_creation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdminCreationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)
        addAdmin,
    required TResult Function(String userId, String searchTerm) getRoles,
    required TResult Function(
            String userId,
            String adminId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)
        updateAdmin,
    required TResult Function(String userId, String adminId, String searchTerm)
        viewAdmin,
    required TResult Function(bool value) dropDownErrorDisplay,
    required TResult Function(Result value) setDropDownValue,
    required TResult Function(PlatformFile bytes) profilePicSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)?
        addAdmin,
    TResult? Function(String userId, String searchTerm)? getRoles,
    TResult? Function(
            String userId,
            String adminId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)?
        updateAdmin,
    TResult? Function(String userId, String adminId, String searchTerm)?
        viewAdmin,
    TResult? Function(bool value)? dropDownErrorDisplay,
    TResult? Function(Result value)? setDropDownValue,
    TResult? Function(PlatformFile bytes)? profilePicSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)?
        addAdmin,
    TResult Function(String userId, String searchTerm)? getRoles,
    TResult Function(
            String userId,
            String adminId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)?
        updateAdmin,
    TResult Function(String userId, String adminId, String searchTerm)?
        viewAdmin,
    TResult Function(bool value)? dropDownErrorDisplay,
    TResult Function(Result value)? setDropDownValue,
    TResult Function(PlatformFile bytes)? profilePicSelection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddAdmin value) addAdmin,
    required TResult Function(_GetRoles value) getRoles,
    required TResult Function(_UpdateAdmin value) updateAdmin,
    required TResult Function(_ViewAdmin value) viewAdmin,
    required TResult Function(_DropDownErrorDisplay value) dropDownErrorDisplay,
    required TResult Function(_SetDropDownValue value) setDropDownValue,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddAdmin value)? addAdmin,
    TResult? Function(_GetRoles value)? getRoles,
    TResult? Function(_UpdateAdmin value)? updateAdmin,
    TResult? Function(_ViewAdmin value)? viewAdmin,
    TResult? Function(_DropDownErrorDisplay value)? dropDownErrorDisplay,
    TResult? Function(_SetDropDownValue value)? setDropDownValue,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAdmin value)? addAdmin,
    TResult Function(_GetRoles value)? getRoles,
    TResult Function(_UpdateAdmin value)? updateAdmin,
    TResult Function(_ViewAdmin value)? viewAdmin,
    TResult Function(_DropDownErrorDisplay value)? dropDownErrorDisplay,
    TResult Function(_SetDropDownValue value)? setDropDownValue,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminCreationEventCopyWith<$Res> {
  factory $AdminCreationEventCopyWith(
          AdminCreationEvent value, $Res Function(AdminCreationEvent) then) =
      _$AdminCreationEventCopyWithImpl<$Res, AdminCreationEvent>;
}

/// @nodoc
class _$AdminCreationEventCopyWithImpl<$Res, $Val extends AdminCreationEvent>
    implements $AdminCreationEventCopyWith<$Res> {
  _$AdminCreationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AddAdminCopyWith<$Res> {
  factory _$$_AddAdminCopyWith(
          _$_AddAdmin value, $Res Function(_$_AddAdmin) then) =
      __$$_AddAdminCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String userId,
      String roleId,
      BuildContext context,
      String firstName,
      String lastName,
      String email,
      String mobile,
      String? profilePic});
}

/// @nodoc
class __$$_AddAdminCopyWithImpl<$Res>
    extends _$AdminCreationEventCopyWithImpl<$Res, _$_AddAdmin>
    implements _$$_AddAdminCopyWith<$Res> {
  __$$_AddAdminCopyWithImpl(
      _$_AddAdmin _value, $Res Function(_$_AddAdmin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? roleId = null,
    Object? context = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? mobile = null,
    Object? profilePic = freezed,
  }) {
    return _then(_$_AddAdmin(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      roleId: null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AddAdmin implements _AddAdmin {
  const _$_AddAdmin(
      {required this.userId,
      required this.roleId,
      required this.context,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.mobile,
      this.profilePic});

  @override
  final String userId;
  @override
  final String roleId;
  @override
  final BuildContext context;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String mobile;
  @override
  final String? profilePic;

  @override
  String toString() {
    return 'AdminCreationEvent.addAdmin(userId: $userId, roleId: $roleId, context: $context, firstName: $firstName, lastName: $lastName, email: $email, mobile: $mobile, profilePic: $profilePic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddAdmin &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, roleId, context,
      firstName, lastName, email, mobile, profilePic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddAdminCopyWith<_$_AddAdmin> get copyWith =>
      __$$_AddAdminCopyWithImpl<_$_AddAdmin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)
        addAdmin,
    required TResult Function(String userId, String searchTerm) getRoles,
    required TResult Function(
            String userId,
            String adminId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)
        updateAdmin,
    required TResult Function(String userId, String adminId, String searchTerm)
        viewAdmin,
    required TResult Function(bool value) dropDownErrorDisplay,
    required TResult Function(Result value) setDropDownValue,
    required TResult Function(PlatformFile bytes) profilePicSelection,
  }) {
    return addAdmin(userId, roleId, context, firstName, lastName, email, mobile,
        profilePic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)?
        addAdmin,
    TResult? Function(String userId, String searchTerm)? getRoles,
    TResult? Function(
            String userId,
            String adminId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)?
        updateAdmin,
    TResult? Function(String userId, String adminId, String searchTerm)?
        viewAdmin,
    TResult? Function(bool value)? dropDownErrorDisplay,
    TResult? Function(Result value)? setDropDownValue,
    TResult? Function(PlatformFile bytes)? profilePicSelection,
  }) {
    return addAdmin?.call(userId, roleId, context, firstName, lastName, email,
        mobile, profilePic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)?
        addAdmin,
    TResult Function(String userId, String searchTerm)? getRoles,
    TResult Function(
            String userId,
            String adminId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)?
        updateAdmin,
    TResult Function(String userId, String adminId, String searchTerm)?
        viewAdmin,
    TResult Function(bool value)? dropDownErrorDisplay,
    TResult Function(Result value)? setDropDownValue,
    TResult Function(PlatformFile bytes)? profilePicSelection,
    required TResult orElse(),
  }) {
    if (addAdmin != null) {
      return addAdmin(userId, roleId, context, firstName, lastName, email,
          mobile, profilePic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddAdmin value) addAdmin,
    required TResult Function(_GetRoles value) getRoles,
    required TResult Function(_UpdateAdmin value) updateAdmin,
    required TResult Function(_ViewAdmin value) viewAdmin,
    required TResult Function(_DropDownErrorDisplay value) dropDownErrorDisplay,
    required TResult Function(_SetDropDownValue value) setDropDownValue,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
  }) {
    return addAdmin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddAdmin value)? addAdmin,
    TResult? Function(_GetRoles value)? getRoles,
    TResult? Function(_UpdateAdmin value)? updateAdmin,
    TResult? Function(_ViewAdmin value)? viewAdmin,
    TResult? Function(_DropDownErrorDisplay value)? dropDownErrorDisplay,
    TResult? Function(_SetDropDownValue value)? setDropDownValue,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
  }) {
    return addAdmin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAdmin value)? addAdmin,
    TResult Function(_GetRoles value)? getRoles,
    TResult Function(_UpdateAdmin value)? updateAdmin,
    TResult Function(_ViewAdmin value)? viewAdmin,
    TResult Function(_DropDownErrorDisplay value)? dropDownErrorDisplay,
    TResult Function(_SetDropDownValue value)? setDropDownValue,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    required TResult orElse(),
  }) {
    if (addAdmin != null) {
      return addAdmin(this);
    }
    return orElse();
  }
}

abstract class _AddAdmin implements AdminCreationEvent {
  const factory _AddAdmin(
      {required final String userId,
      required final String roleId,
      required final BuildContext context,
      required final String firstName,
      required final String lastName,
      required final String email,
      required final String mobile,
      final String? profilePic}) = _$_AddAdmin;

  String get userId;
  String get roleId;
  BuildContext get context;
  String get firstName;
  String get lastName;
  String get email;
  String get mobile;
  String? get profilePic;
  @JsonKey(ignore: true)
  _$$_AddAdminCopyWith<_$_AddAdmin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetRolesCopyWith<$Res> {
  factory _$$_GetRolesCopyWith(
          _$_GetRoles value, $Res Function(_$_GetRoles) then) =
      __$$_GetRolesCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String searchTerm});
}

/// @nodoc
class __$$_GetRolesCopyWithImpl<$Res>
    extends _$AdminCreationEventCopyWithImpl<$Res, _$_GetRoles>
    implements _$$_GetRolesCopyWith<$Res> {
  __$$_GetRolesCopyWithImpl(
      _$_GetRoles _value, $Res Function(_$_GetRoles) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? searchTerm = null,
  }) {
    return _then(_$_GetRoles(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      searchTerm: null == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetRoles implements _GetRoles {
  const _$_GetRoles({required this.userId, required this.searchTerm});

  @override
  final String userId;
  @override
  final String searchTerm;

  @override
  String toString() {
    return 'AdminCreationEvent.getRoles(userId: $userId, searchTerm: $searchTerm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetRoles &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.searchTerm, searchTerm) ||
                other.searchTerm == searchTerm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, searchTerm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetRolesCopyWith<_$_GetRoles> get copyWith =>
      __$$_GetRolesCopyWithImpl<_$_GetRoles>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)
        addAdmin,
    required TResult Function(String userId, String searchTerm) getRoles,
    required TResult Function(
            String userId,
            String adminId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)
        updateAdmin,
    required TResult Function(String userId, String adminId, String searchTerm)
        viewAdmin,
    required TResult Function(bool value) dropDownErrorDisplay,
    required TResult Function(Result value) setDropDownValue,
    required TResult Function(PlatformFile bytes) profilePicSelection,
  }) {
    return getRoles(userId, searchTerm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)?
        addAdmin,
    TResult? Function(String userId, String searchTerm)? getRoles,
    TResult? Function(
            String userId,
            String adminId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)?
        updateAdmin,
    TResult? Function(String userId, String adminId, String searchTerm)?
        viewAdmin,
    TResult? Function(bool value)? dropDownErrorDisplay,
    TResult? Function(Result value)? setDropDownValue,
    TResult? Function(PlatformFile bytes)? profilePicSelection,
  }) {
    return getRoles?.call(userId, searchTerm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)?
        addAdmin,
    TResult Function(String userId, String searchTerm)? getRoles,
    TResult Function(
            String userId,
            String adminId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)?
        updateAdmin,
    TResult Function(String userId, String adminId, String searchTerm)?
        viewAdmin,
    TResult Function(bool value)? dropDownErrorDisplay,
    TResult Function(Result value)? setDropDownValue,
    TResult Function(PlatformFile bytes)? profilePicSelection,
    required TResult orElse(),
  }) {
    if (getRoles != null) {
      return getRoles(userId, searchTerm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddAdmin value) addAdmin,
    required TResult Function(_GetRoles value) getRoles,
    required TResult Function(_UpdateAdmin value) updateAdmin,
    required TResult Function(_ViewAdmin value) viewAdmin,
    required TResult Function(_DropDownErrorDisplay value) dropDownErrorDisplay,
    required TResult Function(_SetDropDownValue value) setDropDownValue,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
  }) {
    return getRoles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddAdmin value)? addAdmin,
    TResult? Function(_GetRoles value)? getRoles,
    TResult? Function(_UpdateAdmin value)? updateAdmin,
    TResult? Function(_ViewAdmin value)? viewAdmin,
    TResult? Function(_DropDownErrorDisplay value)? dropDownErrorDisplay,
    TResult? Function(_SetDropDownValue value)? setDropDownValue,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
  }) {
    return getRoles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAdmin value)? addAdmin,
    TResult Function(_GetRoles value)? getRoles,
    TResult Function(_UpdateAdmin value)? updateAdmin,
    TResult Function(_ViewAdmin value)? viewAdmin,
    TResult Function(_DropDownErrorDisplay value)? dropDownErrorDisplay,
    TResult Function(_SetDropDownValue value)? setDropDownValue,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    required TResult orElse(),
  }) {
    if (getRoles != null) {
      return getRoles(this);
    }
    return orElse();
  }
}

abstract class _GetRoles implements AdminCreationEvent {
  const factory _GetRoles(
      {required final String userId,
      required final String searchTerm}) = _$_GetRoles;

  String get userId;
  String get searchTerm;
  @JsonKey(ignore: true)
  _$$_GetRolesCopyWith<_$_GetRoles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateAdminCopyWith<$Res> {
  factory _$$_UpdateAdminCopyWith(
          _$_UpdateAdmin value, $Res Function(_$_UpdateAdmin) then) =
      __$$_UpdateAdminCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String userId,
      String adminId,
      String roleId,
      BuildContext context,
      String firstName,
      String lastName,
      String email,
      String mobile,
      String? profilePic});
}

/// @nodoc
class __$$_UpdateAdminCopyWithImpl<$Res>
    extends _$AdminCreationEventCopyWithImpl<$Res, _$_UpdateAdmin>
    implements _$$_UpdateAdminCopyWith<$Res> {
  __$$_UpdateAdminCopyWithImpl(
      _$_UpdateAdmin _value, $Res Function(_$_UpdateAdmin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? adminId = null,
    Object? roleId = null,
    Object? context = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? mobile = null,
    Object? profilePic = freezed,
  }) {
    return _then(_$_UpdateAdmin(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      adminId: null == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as String,
      roleId: null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UpdateAdmin implements _UpdateAdmin {
  const _$_UpdateAdmin(
      {required this.userId,
      required this.adminId,
      required this.roleId,
      required this.context,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.mobile,
      this.profilePic});

  @override
  final String userId;
  @override
  final String adminId;
  @override
  final String roleId;
  @override
  final BuildContext context;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String mobile;
  @override
  final String? profilePic;

  @override
  String toString() {
    return 'AdminCreationEvent.updateAdmin(userId: $userId, adminId: $adminId, roleId: $roleId, context: $context, firstName: $firstName, lastName: $lastName, email: $email, mobile: $mobile, profilePic: $profilePic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateAdmin &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.adminId, adminId) || other.adminId == adminId) &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, adminId, roleId, context,
      firstName, lastName, email, mobile, profilePic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateAdminCopyWith<_$_UpdateAdmin> get copyWith =>
      __$$_UpdateAdminCopyWithImpl<_$_UpdateAdmin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)
        addAdmin,
    required TResult Function(String userId, String searchTerm) getRoles,
    required TResult Function(
            String userId,
            String adminId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)
        updateAdmin,
    required TResult Function(String userId, String adminId, String searchTerm)
        viewAdmin,
    required TResult Function(bool value) dropDownErrorDisplay,
    required TResult Function(Result value) setDropDownValue,
    required TResult Function(PlatformFile bytes) profilePicSelection,
  }) {
    return updateAdmin(userId, adminId, roleId, context, firstName, lastName,
        email, mobile, profilePic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)?
        addAdmin,
    TResult? Function(String userId, String searchTerm)? getRoles,
    TResult? Function(
            String userId,
            String adminId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)?
        updateAdmin,
    TResult? Function(String userId, String adminId, String searchTerm)?
        viewAdmin,
    TResult? Function(bool value)? dropDownErrorDisplay,
    TResult? Function(Result value)? setDropDownValue,
    TResult? Function(PlatformFile bytes)? profilePicSelection,
  }) {
    return updateAdmin?.call(userId, adminId, roleId, context, firstName,
        lastName, email, mobile, profilePic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)?
        addAdmin,
    TResult Function(String userId, String searchTerm)? getRoles,
    TResult Function(
            String userId,
            String adminId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)?
        updateAdmin,
    TResult Function(String userId, String adminId, String searchTerm)?
        viewAdmin,
    TResult Function(bool value)? dropDownErrorDisplay,
    TResult Function(Result value)? setDropDownValue,
    TResult Function(PlatformFile bytes)? profilePicSelection,
    required TResult orElse(),
  }) {
    if (updateAdmin != null) {
      return updateAdmin(userId, adminId, roleId, context, firstName, lastName,
          email, mobile, profilePic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddAdmin value) addAdmin,
    required TResult Function(_GetRoles value) getRoles,
    required TResult Function(_UpdateAdmin value) updateAdmin,
    required TResult Function(_ViewAdmin value) viewAdmin,
    required TResult Function(_DropDownErrorDisplay value) dropDownErrorDisplay,
    required TResult Function(_SetDropDownValue value) setDropDownValue,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
  }) {
    return updateAdmin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddAdmin value)? addAdmin,
    TResult? Function(_GetRoles value)? getRoles,
    TResult? Function(_UpdateAdmin value)? updateAdmin,
    TResult? Function(_ViewAdmin value)? viewAdmin,
    TResult? Function(_DropDownErrorDisplay value)? dropDownErrorDisplay,
    TResult? Function(_SetDropDownValue value)? setDropDownValue,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
  }) {
    return updateAdmin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAdmin value)? addAdmin,
    TResult Function(_GetRoles value)? getRoles,
    TResult Function(_UpdateAdmin value)? updateAdmin,
    TResult Function(_ViewAdmin value)? viewAdmin,
    TResult Function(_DropDownErrorDisplay value)? dropDownErrorDisplay,
    TResult Function(_SetDropDownValue value)? setDropDownValue,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    required TResult orElse(),
  }) {
    if (updateAdmin != null) {
      return updateAdmin(this);
    }
    return orElse();
  }
}

abstract class _UpdateAdmin implements AdminCreationEvent {
  const factory _UpdateAdmin(
      {required final String userId,
      required final String adminId,
      required final String roleId,
      required final BuildContext context,
      required final String firstName,
      required final String lastName,
      required final String email,
      required final String mobile,
      final String? profilePic}) = _$_UpdateAdmin;

  String get userId;
  String get adminId;
  String get roleId;
  BuildContext get context;
  String get firstName;
  String get lastName;
  String get email;
  String get mobile;
  String? get profilePic;
  @JsonKey(ignore: true)
  _$$_UpdateAdminCopyWith<_$_UpdateAdmin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ViewAdminCopyWith<$Res> {
  factory _$$_ViewAdminCopyWith(
          _$_ViewAdmin value, $Res Function(_$_ViewAdmin) then) =
      __$$_ViewAdminCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String adminId, String searchTerm});
}

/// @nodoc
class __$$_ViewAdminCopyWithImpl<$Res>
    extends _$AdminCreationEventCopyWithImpl<$Res, _$_ViewAdmin>
    implements _$$_ViewAdminCopyWith<$Res> {
  __$$_ViewAdminCopyWithImpl(
      _$_ViewAdmin _value, $Res Function(_$_ViewAdmin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? adminId = null,
    Object? searchTerm = null,
  }) {
    return _then(_$_ViewAdmin(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      adminId: null == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as String,
      searchTerm: null == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ViewAdmin implements _ViewAdmin {
  const _$_ViewAdmin(
      {required this.userId, required this.adminId, required this.searchTerm});

  @override
  final String userId;
  @override
  final String adminId;
  @override
  final String searchTerm;

  @override
  String toString() {
    return 'AdminCreationEvent.viewAdmin(userId: $userId, adminId: $adminId, searchTerm: $searchTerm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ViewAdmin &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.adminId, adminId) || other.adminId == adminId) &&
            (identical(other.searchTerm, searchTerm) ||
                other.searchTerm == searchTerm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, adminId, searchTerm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ViewAdminCopyWith<_$_ViewAdmin> get copyWith =>
      __$$_ViewAdminCopyWithImpl<_$_ViewAdmin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)
        addAdmin,
    required TResult Function(String userId, String searchTerm) getRoles,
    required TResult Function(
            String userId,
            String adminId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)
        updateAdmin,
    required TResult Function(String userId, String adminId, String searchTerm)
        viewAdmin,
    required TResult Function(bool value) dropDownErrorDisplay,
    required TResult Function(Result value) setDropDownValue,
    required TResult Function(PlatformFile bytes) profilePicSelection,
  }) {
    return viewAdmin(userId, adminId, searchTerm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)?
        addAdmin,
    TResult? Function(String userId, String searchTerm)? getRoles,
    TResult? Function(
            String userId,
            String adminId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)?
        updateAdmin,
    TResult? Function(String userId, String adminId, String searchTerm)?
        viewAdmin,
    TResult? Function(bool value)? dropDownErrorDisplay,
    TResult? Function(Result value)? setDropDownValue,
    TResult? Function(PlatformFile bytes)? profilePicSelection,
  }) {
    return viewAdmin?.call(userId, adminId, searchTerm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)?
        addAdmin,
    TResult Function(String userId, String searchTerm)? getRoles,
    TResult Function(
            String userId,
            String adminId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)?
        updateAdmin,
    TResult Function(String userId, String adminId, String searchTerm)?
        viewAdmin,
    TResult Function(bool value)? dropDownErrorDisplay,
    TResult Function(Result value)? setDropDownValue,
    TResult Function(PlatformFile bytes)? profilePicSelection,
    required TResult orElse(),
  }) {
    if (viewAdmin != null) {
      return viewAdmin(userId, adminId, searchTerm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddAdmin value) addAdmin,
    required TResult Function(_GetRoles value) getRoles,
    required TResult Function(_UpdateAdmin value) updateAdmin,
    required TResult Function(_ViewAdmin value) viewAdmin,
    required TResult Function(_DropDownErrorDisplay value) dropDownErrorDisplay,
    required TResult Function(_SetDropDownValue value) setDropDownValue,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
  }) {
    return viewAdmin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddAdmin value)? addAdmin,
    TResult? Function(_GetRoles value)? getRoles,
    TResult? Function(_UpdateAdmin value)? updateAdmin,
    TResult? Function(_ViewAdmin value)? viewAdmin,
    TResult? Function(_DropDownErrorDisplay value)? dropDownErrorDisplay,
    TResult? Function(_SetDropDownValue value)? setDropDownValue,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
  }) {
    return viewAdmin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAdmin value)? addAdmin,
    TResult Function(_GetRoles value)? getRoles,
    TResult Function(_UpdateAdmin value)? updateAdmin,
    TResult Function(_ViewAdmin value)? viewAdmin,
    TResult Function(_DropDownErrorDisplay value)? dropDownErrorDisplay,
    TResult Function(_SetDropDownValue value)? setDropDownValue,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    required TResult orElse(),
  }) {
    if (viewAdmin != null) {
      return viewAdmin(this);
    }
    return orElse();
  }
}

abstract class _ViewAdmin implements AdminCreationEvent {
  const factory _ViewAdmin(
      {required final String userId,
      required final String adminId,
      required final String searchTerm}) = _$_ViewAdmin;

  String get userId;
  String get adminId;
  String get searchTerm;
  @JsonKey(ignore: true)
  _$$_ViewAdminCopyWith<_$_ViewAdmin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DropDownErrorDisplayCopyWith<$Res> {
  factory _$$_DropDownErrorDisplayCopyWith(_$_DropDownErrorDisplay value,
          $Res Function(_$_DropDownErrorDisplay) then) =
      __$$_DropDownErrorDisplayCopyWithImpl<$Res>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$_DropDownErrorDisplayCopyWithImpl<$Res>
    extends _$AdminCreationEventCopyWithImpl<$Res, _$_DropDownErrorDisplay>
    implements _$$_DropDownErrorDisplayCopyWith<$Res> {
  __$$_DropDownErrorDisplayCopyWithImpl(_$_DropDownErrorDisplay _value,
      $Res Function(_$_DropDownErrorDisplay) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_DropDownErrorDisplay(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DropDownErrorDisplay implements _DropDownErrorDisplay {
  const _$_DropDownErrorDisplay({required this.value});

  @override
  final bool value;

  @override
  String toString() {
    return 'AdminCreationEvent.dropDownErrorDisplay(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DropDownErrorDisplay &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DropDownErrorDisplayCopyWith<_$_DropDownErrorDisplay> get copyWith =>
      __$$_DropDownErrorDisplayCopyWithImpl<_$_DropDownErrorDisplay>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)
        addAdmin,
    required TResult Function(String userId, String searchTerm) getRoles,
    required TResult Function(
            String userId,
            String adminId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)
        updateAdmin,
    required TResult Function(String userId, String adminId, String searchTerm)
        viewAdmin,
    required TResult Function(bool value) dropDownErrorDisplay,
    required TResult Function(Result value) setDropDownValue,
    required TResult Function(PlatformFile bytes) profilePicSelection,
  }) {
    return dropDownErrorDisplay(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)?
        addAdmin,
    TResult? Function(String userId, String searchTerm)? getRoles,
    TResult? Function(
            String userId,
            String adminId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)?
        updateAdmin,
    TResult? Function(String userId, String adminId, String searchTerm)?
        viewAdmin,
    TResult? Function(bool value)? dropDownErrorDisplay,
    TResult? Function(Result value)? setDropDownValue,
    TResult? Function(PlatformFile bytes)? profilePicSelection,
  }) {
    return dropDownErrorDisplay?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)?
        addAdmin,
    TResult Function(String userId, String searchTerm)? getRoles,
    TResult Function(
            String userId,
            String adminId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)?
        updateAdmin,
    TResult Function(String userId, String adminId, String searchTerm)?
        viewAdmin,
    TResult Function(bool value)? dropDownErrorDisplay,
    TResult Function(Result value)? setDropDownValue,
    TResult Function(PlatformFile bytes)? profilePicSelection,
    required TResult orElse(),
  }) {
    if (dropDownErrorDisplay != null) {
      return dropDownErrorDisplay(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddAdmin value) addAdmin,
    required TResult Function(_GetRoles value) getRoles,
    required TResult Function(_UpdateAdmin value) updateAdmin,
    required TResult Function(_ViewAdmin value) viewAdmin,
    required TResult Function(_DropDownErrorDisplay value) dropDownErrorDisplay,
    required TResult Function(_SetDropDownValue value) setDropDownValue,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
  }) {
    return dropDownErrorDisplay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddAdmin value)? addAdmin,
    TResult? Function(_GetRoles value)? getRoles,
    TResult? Function(_UpdateAdmin value)? updateAdmin,
    TResult? Function(_ViewAdmin value)? viewAdmin,
    TResult? Function(_DropDownErrorDisplay value)? dropDownErrorDisplay,
    TResult? Function(_SetDropDownValue value)? setDropDownValue,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
  }) {
    return dropDownErrorDisplay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAdmin value)? addAdmin,
    TResult Function(_GetRoles value)? getRoles,
    TResult Function(_UpdateAdmin value)? updateAdmin,
    TResult Function(_ViewAdmin value)? viewAdmin,
    TResult Function(_DropDownErrorDisplay value)? dropDownErrorDisplay,
    TResult Function(_SetDropDownValue value)? setDropDownValue,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    required TResult orElse(),
  }) {
    if (dropDownErrorDisplay != null) {
      return dropDownErrorDisplay(this);
    }
    return orElse();
  }
}

abstract class _DropDownErrorDisplay implements AdminCreationEvent {
  const factory _DropDownErrorDisplay({required final bool value}) =
      _$_DropDownErrorDisplay;

  bool get value;
  @JsonKey(ignore: true)
  _$$_DropDownErrorDisplayCopyWith<_$_DropDownErrorDisplay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetDropDownValueCopyWith<$Res> {
  factory _$$_SetDropDownValueCopyWith(
          _$_SetDropDownValue value, $Res Function(_$_SetDropDownValue) then) =
      __$$_SetDropDownValueCopyWithImpl<$Res>;
  @useResult
  $Res call({Result value});
}

/// @nodoc
class __$$_SetDropDownValueCopyWithImpl<$Res>
    extends _$AdminCreationEventCopyWithImpl<$Res, _$_SetDropDownValue>
    implements _$$_SetDropDownValueCopyWith<$Res> {
  __$$_SetDropDownValueCopyWithImpl(
      _$_SetDropDownValue _value, $Res Function(_$_SetDropDownValue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_SetDropDownValue(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Result,
    ));
  }
}

/// @nodoc

class _$_SetDropDownValue implements _SetDropDownValue {
  const _$_SetDropDownValue({required this.value});

  @override
  final Result value;

  @override
  String toString() {
    return 'AdminCreationEvent.setDropDownValue(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetDropDownValue &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetDropDownValueCopyWith<_$_SetDropDownValue> get copyWith =>
      __$$_SetDropDownValueCopyWithImpl<_$_SetDropDownValue>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)
        addAdmin,
    required TResult Function(String userId, String searchTerm) getRoles,
    required TResult Function(
            String userId,
            String adminId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)
        updateAdmin,
    required TResult Function(String userId, String adminId, String searchTerm)
        viewAdmin,
    required TResult Function(bool value) dropDownErrorDisplay,
    required TResult Function(Result value) setDropDownValue,
    required TResult Function(PlatformFile bytes) profilePicSelection,
  }) {
    return setDropDownValue(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)?
        addAdmin,
    TResult? Function(String userId, String searchTerm)? getRoles,
    TResult? Function(
            String userId,
            String adminId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)?
        updateAdmin,
    TResult? Function(String userId, String adminId, String searchTerm)?
        viewAdmin,
    TResult? Function(bool value)? dropDownErrorDisplay,
    TResult? Function(Result value)? setDropDownValue,
    TResult? Function(PlatformFile bytes)? profilePicSelection,
  }) {
    return setDropDownValue?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)?
        addAdmin,
    TResult Function(String userId, String searchTerm)? getRoles,
    TResult Function(
            String userId,
            String adminId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)?
        updateAdmin,
    TResult Function(String userId, String adminId, String searchTerm)?
        viewAdmin,
    TResult Function(bool value)? dropDownErrorDisplay,
    TResult Function(Result value)? setDropDownValue,
    TResult Function(PlatformFile bytes)? profilePicSelection,
    required TResult orElse(),
  }) {
    if (setDropDownValue != null) {
      return setDropDownValue(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddAdmin value) addAdmin,
    required TResult Function(_GetRoles value) getRoles,
    required TResult Function(_UpdateAdmin value) updateAdmin,
    required TResult Function(_ViewAdmin value) viewAdmin,
    required TResult Function(_DropDownErrorDisplay value) dropDownErrorDisplay,
    required TResult Function(_SetDropDownValue value) setDropDownValue,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
  }) {
    return setDropDownValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddAdmin value)? addAdmin,
    TResult? Function(_GetRoles value)? getRoles,
    TResult? Function(_UpdateAdmin value)? updateAdmin,
    TResult? Function(_ViewAdmin value)? viewAdmin,
    TResult? Function(_DropDownErrorDisplay value)? dropDownErrorDisplay,
    TResult? Function(_SetDropDownValue value)? setDropDownValue,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
  }) {
    return setDropDownValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAdmin value)? addAdmin,
    TResult Function(_GetRoles value)? getRoles,
    TResult Function(_UpdateAdmin value)? updateAdmin,
    TResult Function(_ViewAdmin value)? viewAdmin,
    TResult Function(_DropDownErrorDisplay value)? dropDownErrorDisplay,
    TResult Function(_SetDropDownValue value)? setDropDownValue,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    required TResult orElse(),
  }) {
    if (setDropDownValue != null) {
      return setDropDownValue(this);
    }
    return orElse();
  }
}

abstract class _SetDropDownValue implements AdminCreationEvent {
  const factory _SetDropDownValue({required final Result value}) =
      _$_SetDropDownValue;

  Result get value;
  @JsonKey(ignore: true)
  _$$_SetDropDownValueCopyWith<_$_SetDropDownValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProfilePicSelectedCopyWith<$Res> {
  factory _$$_ProfilePicSelectedCopyWith(_$_ProfilePicSelected value,
          $Res Function(_$_ProfilePicSelected) then) =
      __$$_ProfilePicSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({PlatformFile bytes});
}

/// @nodoc
class __$$_ProfilePicSelectedCopyWithImpl<$Res>
    extends _$AdminCreationEventCopyWithImpl<$Res, _$_ProfilePicSelected>
    implements _$$_ProfilePicSelectedCopyWith<$Res> {
  __$$_ProfilePicSelectedCopyWithImpl(
      _$_ProfilePicSelected _value, $Res Function(_$_ProfilePicSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bytes = null,
  }) {
    return _then(_$_ProfilePicSelected(
      null == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as PlatformFile,
    ));
  }
}

/// @nodoc

class _$_ProfilePicSelected implements _ProfilePicSelected {
  const _$_ProfilePicSelected(this.bytes);

  @override
  final PlatformFile bytes;

  @override
  String toString() {
    return 'AdminCreationEvent.profilePicSelection(bytes: $bytes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfilePicSelected &&
            (identical(other.bytes, bytes) || other.bytes == bytes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bytes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfilePicSelectedCopyWith<_$_ProfilePicSelected> get copyWith =>
      __$$_ProfilePicSelectedCopyWithImpl<_$_ProfilePicSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)
        addAdmin,
    required TResult Function(String userId, String searchTerm) getRoles,
    required TResult Function(
            String userId,
            String adminId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)
        updateAdmin,
    required TResult Function(String userId, String adminId, String searchTerm)
        viewAdmin,
    required TResult Function(bool value) dropDownErrorDisplay,
    required TResult Function(Result value) setDropDownValue,
    required TResult Function(PlatformFile bytes) profilePicSelection,
  }) {
    return profilePicSelection(bytes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)?
        addAdmin,
    TResult? Function(String userId, String searchTerm)? getRoles,
    TResult? Function(
            String userId,
            String adminId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)?
        updateAdmin,
    TResult? Function(String userId, String adminId, String searchTerm)?
        viewAdmin,
    TResult? Function(bool value)? dropDownErrorDisplay,
    TResult? Function(Result value)? setDropDownValue,
    TResult? Function(PlatformFile bytes)? profilePicSelection,
  }) {
    return profilePicSelection?.call(bytes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)?
        addAdmin,
    TResult Function(String userId, String searchTerm)? getRoles,
    TResult Function(
            String userId,
            String adminId,
            String roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String mobile,
            String? profilePic)?
        updateAdmin,
    TResult Function(String userId, String adminId, String searchTerm)?
        viewAdmin,
    TResult Function(bool value)? dropDownErrorDisplay,
    TResult Function(Result value)? setDropDownValue,
    TResult Function(PlatformFile bytes)? profilePicSelection,
    required TResult orElse(),
  }) {
    if (profilePicSelection != null) {
      return profilePicSelection(bytes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddAdmin value) addAdmin,
    required TResult Function(_GetRoles value) getRoles,
    required TResult Function(_UpdateAdmin value) updateAdmin,
    required TResult Function(_ViewAdmin value) viewAdmin,
    required TResult Function(_DropDownErrorDisplay value) dropDownErrorDisplay,
    required TResult Function(_SetDropDownValue value) setDropDownValue,
    required TResult Function(_ProfilePicSelected value) profilePicSelection,
  }) {
    return profilePicSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddAdmin value)? addAdmin,
    TResult? Function(_GetRoles value)? getRoles,
    TResult? Function(_UpdateAdmin value)? updateAdmin,
    TResult? Function(_ViewAdmin value)? viewAdmin,
    TResult? Function(_DropDownErrorDisplay value)? dropDownErrorDisplay,
    TResult? Function(_SetDropDownValue value)? setDropDownValue,
    TResult? Function(_ProfilePicSelected value)? profilePicSelection,
  }) {
    return profilePicSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAdmin value)? addAdmin,
    TResult Function(_GetRoles value)? getRoles,
    TResult Function(_UpdateAdmin value)? updateAdmin,
    TResult Function(_ViewAdmin value)? viewAdmin,
    TResult Function(_DropDownErrorDisplay value)? dropDownErrorDisplay,
    TResult Function(_SetDropDownValue value)? setDropDownValue,
    TResult Function(_ProfilePicSelected value)? profilePicSelection,
    required TResult orElse(),
  }) {
    if (profilePicSelection != null) {
      return profilePicSelection(this);
    }
    return orElse();
  }
}

abstract class _ProfilePicSelected implements AdminCreationEvent {
  const factory _ProfilePicSelected(final PlatformFile bytes) =
      _$_ProfilePicSelected;

  PlatformFile get bytes;
  @JsonKey(ignore: true)
  _$$_ProfilePicSelectedCopyWith<_$_ProfilePicSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdminCreationState {
  PlatformFile? get pickedProfilePic => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  CommonResponseUse? get addResponse => throw _privateConstructorUsedError;
  CommonResponseUse? get updateResponse => throw _privateConstructorUsedError;
  AdminViewResponse? get viewResponse => throw _privateConstructorUsedError;
  GetRoleResponse? get rolesResponse => throw _privateConstructorUsedError;
  Result? get selectedRole => throw _privateConstructorUsedError;
  bool get isClientError => throw _privateConstructorUsedError;
  bool get isDropDownError => throw _privateConstructorUsedError;
  bool get isLoadingButton => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdminCreationStateCopyWith<AdminCreationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminCreationStateCopyWith<$Res> {
  factory $AdminCreationStateCopyWith(
          AdminCreationState value, $Res Function(AdminCreationState) then) =
      _$AdminCreationStateCopyWithImpl<$Res, AdminCreationState>;
  @useResult
  $Res call(
      {PlatformFile? pickedProfilePic,
      bool isLoading,
      bool isError,
      String? error,
      CommonResponseUse? addResponse,
      CommonResponseUse? updateResponse,
      AdminViewResponse? viewResponse,
      GetRoleResponse? rolesResponse,
      Result? selectedRole,
      bool isClientError,
      bool isDropDownError,
      bool isLoadingButton});
}

/// @nodoc
class _$AdminCreationStateCopyWithImpl<$Res, $Val extends AdminCreationState>
    implements $AdminCreationStateCopyWith<$Res> {
  _$AdminCreationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickedProfilePic = freezed,
    Object? isLoading = null,
    Object? isError = null,
    Object? error = freezed,
    Object? addResponse = freezed,
    Object? updateResponse = freezed,
    Object? viewResponse = freezed,
    Object? rolesResponse = freezed,
    Object? selectedRole = freezed,
    Object? isClientError = null,
    Object? isDropDownError = null,
    Object? isLoadingButton = null,
  }) {
    return _then(_value.copyWith(
      pickedProfilePic: freezed == pickedProfilePic
          ? _value.pickedProfilePic
          : pickedProfilePic // ignore: cast_nullable_to_non_nullable
              as PlatformFile?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      addResponse: freezed == addResponse
          ? _value.addResponse
          : addResponse // ignore: cast_nullable_to_non_nullable
              as CommonResponseUse?,
      updateResponse: freezed == updateResponse
          ? _value.updateResponse
          : updateResponse // ignore: cast_nullable_to_non_nullable
              as CommonResponseUse?,
      viewResponse: freezed == viewResponse
          ? _value.viewResponse
          : viewResponse // ignore: cast_nullable_to_non_nullable
              as AdminViewResponse?,
      rolesResponse: freezed == rolesResponse
          ? _value.rolesResponse
          : rolesResponse // ignore: cast_nullable_to_non_nullable
              as GetRoleResponse?,
      selectedRole: freezed == selectedRole
          ? _value.selectedRole
          : selectedRole // ignore: cast_nullable_to_non_nullable
              as Result?,
      isClientError: null == isClientError
          ? _value.isClientError
          : isClientError // ignore: cast_nullable_to_non_nullable
              as bool,
      isDropDownError: null == isDropDownError
          ? _value.isDropDownError
          : isDropDownError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingButton: null == isLoadingButton
          ? _value.isLoadingButton
          : isLoadingButton // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdminCreationStateCopyWith<$Res>
    implements $AdminCreationStateCopyWith<$Res> {
  factory _$$_AdminCreationStateCopyWith(_$_AdminCreationState value,
          $Res Function(_$_AdminCreationState) then) =
      __$$_AdminCreationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PlatformFile? pickedProfilePic,
      bool isLoading,
      bool isError,
      String? error,
      CommonResponseUse? addResponse,
      CommonResponseUse? updateResponse,
      AdminViewResponse? viewResponse,
      GetRoleResponse? rolesResponse,
      Result? selectedRole,
      bool isClientError,
      bool isDropDownError,
      bool isLoadingButton});
}

/// @nodoc
class __$$_AdminCreationStateCopyWithImpl<$Res>
    extends _$AdminCreationStateCopyWithImpl<$Res, _$_AdminCreationState>
    implements _$$_AdminCreationStateCopyWith<$Res> {
  __$$_AdminCreationStateCopyWithImpl(
      _$_AdminCreationState _value, $Res Function(_$_AdminCreationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickedProfilePic = freezed,
    Object? isLoading = null,
    Object? isError = null,
    Object? error = freezed,
    Object? addResponse = freezed,
    Object? updateResponse = freezed,
    Object? viewResponse = freezed,
    Object? rolesResponse = freezed,
    Object? selectedRole = freezed,
    Object? isClientError = null,
    Object? isDropDownError = null,
    Object? isLoadingButton = null,
  }) {
    return _then(_$_AdminCreationState(
      pickedProfilePic: freezed == pickedProfilePic
          ? _value.pickedProfilePic
          : pickedProfilePic // ignore: cast_nullable_to_non_nullable
              as PlatformFile?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      addResponse: freezed == addResponse
          ? _value.addResponse
          : addResponse // ignore: cast_nullable_to_non_nullable
              as CommonResponseUse?,
      updateResponse: freezed == updateResponse
          ? _value.updateResponse
          : updateResponse // ignore: cast_nullable_to_non_nullable
              as CommonResponseUse?,
      viewResponse: freezed == viewResponse
          ? _value.viewResponse
          : viewResponse // ignore: cast_nullable_to_non_nullable
              as AdminViewResponse?,
      rolesResponse: freezed == rolesResponse
          ? _value.rolesResponse
          : rolesResponse // ignore: cast_nullable_to_non_nullable
              as GetRoleResponse?,
      selectedRole: freezed == selectedRole
          ? _value.selectedRole
          : selectedRole // ignore: cast_nullable_to_non_nullable
              as Result?,
      isClientError: null == isClientError
          ? _value.isClientError
          : isClientError // ignore: cast_nullable_to_non_nullable
              as bool,
      isDropDownError: null == isDropDownError
          ? _value.isDropDownError
          : isDropDownError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingButton: null == isLoadingButton
          ? _value.isLoadingButton
          : isLoadingButton // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AdminCreationState implements _AdminCreationState {
  const _$_AdminCreationState(
      {required this.pickedProfilePic,
      required this.isLoading,
      required this.isError,
      required this.error,
      required this.addResponse,
      required this.updateResponse,
      required this.viewResponse,
      required this.rolesResponse,
      required this.selectedRole,
      this.isClientError = false,
      this.isDropDownError = false,
      this.isLoadingButton = false});

  @override
  final PlatformFile? pickedProfilePic;
  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final String? error;
  @override
  final CommonResponseUse? addResponse;
  @override
  final CommonResponseUse? updateResponse;
  @override
  final AdminViewResponse? viewResponse;
  @override
  final GetRoleResponse? rolesResponse;
  @override
  final Result? selectedRole;
  @override
  @JsonKey()
  final bool isClientError;
  @override
  @JsonKey()
  final bool isDropDownError;
  @override
  @JsonKey()
  final bool isLoadingButton;

  @override
  String toString() {
    return 'AdminCreationState(pickedProfilePic: $pickedProfilePic, isLoading: $isLoading, isError: $isError, error: $error, addResponse: $addResponse, updateResponse: $updateResponse, viewResponse: $viewResponse, rolesResponse: $rolesResponse, selectedRole: $selectedRole, isClientError: $isClientError, isDropDownError: $isDropDownError, isLoadingButton: $isLoadingButton)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminCreationState &&
            (identical(other.pickedProfilePic, pickedProfilePic) ||
                other.pickedProfilePic == pickedProfilePic) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.addResponse, addResponse) ||
                other.addResponse == addResponse) &&
            (identical(other.updateResponse, updateResponse) ||
                other.updateResponse == updateResponse) &&
            (identical(other.viewResponse, viewResponse) ||
                other.viewResponse == viewResponse) &&
            (identical(other.rolesResponse, rolesResponse) ||
                other.rolesResponse == rolesResponse) &&
            (identical(other.selectedRole, selectedRole) ||
                other.selectedRole == selectedRole) &&
            (identical(other.isClientError, isClientError) ||
                other.isClientError == isClientError) &&
            (identical(other.isDropDownError, isDropDownError) ||
                other.isDropDownError == isDropDownError) &&
            (identical(other.isLoadingButton, isLoadingButton) ||
                other.isLoadingButton == isLoadingButton));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      pickedProfilePic,
      isLoading,
      isError,
      error,
      addResponse,
      updateResponse,
      viewResponse,
      rolesResponse,
      selectedRole,
      isClientError,
      isDropDownError,
      isLoadingButton);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdminCreationStateCopyWith<_$_AdminCreationState> get copyWith =>
      __$$_AdminCreationStateCopyWithImpl<_$_AdminCreationState>(
          this, _$identity);
}

abstract class _AdminCreationState implements AdminCreationState {
  const factory _AdminCreationState(
      {required final PlatformFile? pickedProfilePic,
      required final bool isLoading,
      required final bool isError,
      required final String? error,
      required final CommonResponseUse? addResponse,
      required final CommonResponseUse? updateResponse,
      required final AdminViewResponse? viewResponse,
      required final GetRoleResponse? rolesResponse,
      required final Result? selectedRole,
      final bool isClientError,
      final bool isDropDownError,
      final bool isLoadingButton}) = _$_AdminCreationState;

  @override
  PlatformFile? get pickedProfilePic;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  String? get error;
  @override
  CommonResponseUse? get addResponse;
  @override
  CommonResponseUse? get updateResponse;
  @override
  AdminViewResponse? get viewResponse;
  @override
  GetRoleResponse? get rolesResponse;
  @override
  Result? get selectedRole;
  @override
  bool get isClientError;
  @override
  bool get isDropDownError;
  @override
  bool get isLoadingButton;
  @override
  @JsonKey(ignore: true)
  _$$_AdminCreationStateCopyWith<_$_AdminCreationState> get copyWith =>
      throw _privateConstructorUsedError;
}
