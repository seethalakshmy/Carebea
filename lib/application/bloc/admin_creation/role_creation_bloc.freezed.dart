// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'role_creation_bloc.dart';

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
    required TResult Function(String? roleId, BuildContext context,
            String firstName, String lastName, String email, String dob)
        addAdmin,
    required TResult Function(String userId) getRoles,
    required TResult Function(
            String userId,
            String? roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String dob)
        updateAdmin,
    required TResult Function(String userId) viewAdmin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? roleId, BuildContext context, String firstName,
            String lastName, String email, String dob)?
        addAdmin,
    TResult? Function(String userId)? getRoles,
    TResult? Function(String userId, String? roleId, BuildContext context,
            String firstName, String lastName, String email, String dob)?
        updateAdmin,
    TResult? Function(String userId)? viewAdmin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? roleId, BuildContext context, String firstName,
            String lastName, String email, String dob)?
        addAdmin,
    TResult Function(String userId)? getRoles,
    TResult Function(String userId, String? roleId, BuildContext context,
            String firstName, String lastName, String email, String dob)?
        updateAdmin,
    TResult Function(String userId)? viewAdmin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddAdmin value) addAdmin,
    required TResult Function(_GetRoles value) getRoles,
    required TResult Function(_UpdateAdmin value) updateAdmin,
    required TResult Function(_ViewAdmin value) viewAdmin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddAdmin value)? addAdmin,
    TResult? Function(_GetRoles value)? getRoles,
    TResult? Function(_UpdateAdmin value)? updateAdmin,
    TResult? Function(_ViewAdmin value)? viewAdmin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAdmin value)? addAdmin,
    TResult Function(_GetRoles value)? getRoles,
    TResult Function(_UpdateAdmin value)? updateAdmin,
    TResult Function(_ViewAdmin value)? viewAdmin,
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
      {String? roleId,
      BuildContext context,
      String firstName,
      String lastName,
      String email,
      String dob});
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
    Object? roleId = freezed,
    Object? context = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? dob = null,
  }) {
    return _then(_$_AddAdmin(
      roleId: freezed == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddAdmin implements _AddAdmin {
  const _$_AddAdmin(
      {required this.roleId,
      required this.context,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.dob});

  @override
  final String? roleId;
  @override
  final BuildContext context;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String dob;

  @override
  String toString() {
    return 'AdminCreationEvent.addAdmin(roleId: $roleId, context: $context, firstName: $firstName, lastName: $lastName, email: $email, dob: $dob)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddAdmin &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.dob, dob) || other.dob == dob));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, roleId, context, firstName, lastName, email, dob);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddAdminCopyWith<_$_AddAdmin> get copyWith =>
      __$$_AddAdminCopyWithImpl<_$_AddAdmin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? roleId, BuildContext context,
            String firstName, String lastName, String email, String dob)
        addAdmin,
    required TResult Function(String userId) getRoles,
    required TResult Function(
            String userId,
            String? roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String dob)
        updateAdmin,
    required TResult Function(String userId) viewAdmin,
  }) {
    return addAdmin(roleId, context, firstName, lastName, email, dob);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? roleId, BuildContext context, String firstName,
            String lastName, String email, String dob)?
        addAdmin,
    TResult? Function(String userId)? getRoles,
    TResult? Function(String userId, String? roleId, BuildContext context,
            String firstName, String lastName, String email, String dob)?
        updateAdmin,
    TResult? Function(String userId)? viewAdmin,
  }) {
    return addAdmin?.call(roleId, context, firstName, lastName, email, dob);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? roleId, BuildContext context, String firstName,
            String lastName, String email, String dob)?
        addAdmin,
    TResult Function(String userId)? getRoles,
    TResult Function(String userId, String? roleId, BuildContext context,
            String firstName, String lastName, String email, String dob)?
        updateAdmin,
    TResult Function(String userId)? viewAdmin,
    required TResult orElse(),
  }) {
    if (addAdmin != null) {
      return addAdmin(roleId, context, firstName, lastName, email, dob);
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
      {required final String? roleId,
      required final BuildContext context,
      required final String firstName,
      required final String lastName,
      required final String email,
      required final String dob}) = _$_AddAdmin;

  String? get roleId;
  BuildContext get context;
  String get firstName;
  String get lastName;
  String get email;
  String get dob;
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
  $Res call({String userId});
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
  }) {
    return _then(_$_GetRoles(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetRoles implements _GetRoles {
  const _$_GetRoles({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'AdminCreationEvent.getRoles(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetRoles &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetRolesCopyWith<_$_GetRoles> get copyWith =>
      __$$_GetRolesCopyWithImpl<_$_GetRoles>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? roleId, BuildContext context,
            String firstName, String lastName, String email, String dob)
        addAdmin,
    required TResult Function(String userId) getRoles,
    required TResult Function(
            String userId,
            String? roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String dob)
        updateAdmin,
    required TResult Function(String userId) viewAdmin,
  }) {
    return getRoles(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? roleId, BuildContext context, String firstName,
            String lastName, String email, String dob)?
        addAdmin,
    TResult? Function(String userId)? getRoles,
    TResult? Function(String userId, String? roleId, BuildContext context,
            String firstName, String lastName, String email, String dob)?
        updateAdmin,
    TResult? Function(String userId)? viewAdmin,
  }) {
    return getRoles?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? roleId, BuildContext context, String firstName,
            String lastName, String email, String dob)?
        addAdmin,
    TResult Function(String userId)? getRoles,
    TResult Function(String userId, String? roleId, BuildContext context,
            String firstName, String lastName, String email, String dob)?
        updateAdmin,
    TResult Function(String userId)? viewAdmin,
    required TResult orElse(),
  }) {
    if (getRoles != null) {
      return getRoles(userId);
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
    required TResult orElse(),
  }) {
    if (getRoles != null) {
      return getRoles(this);
    }
    return orElse();
  }
}

abstract class _GetRoles implements AdminCreationEvent {
  const factory _GetRoles({required final String userId}) = _$_GetRoles;

  String get userId;
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
      String? roleId,
      BuildContext context,
      String firstName,
      String lastName,
      String email,
      String dob});
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
    Object? roleId = freezed,
    Object? context = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? dob = null,
  }) {
    return _then(_$_UpdateAdmin(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      roleId: freezed == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateAdmin implements _UpdateAdmin {
  const _$_UpdateAdmin(
      {required this.userId,
      required this.roleId,
      required this.context,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.dob});

  @override
  final String userId;
  @override
  final String? roleId;
  @override
  final BuildContext context;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String dob;

  @override
  String toString() {
    return 'AdminCreationEvent.updateAdmin(userId: $userId, roleId: $roleId, context: $context, firstName: $firstName, lastName: $lastName, email: $email, dob: $dob)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateAdmin &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.dob, dob) || other.dob == dob));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, userId, roleId, context, firstName, lastName, email, dob);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateAdminCopyWith<_$_UpdateAdmin> get copyWith =>
      __$$_UpdateAdminCopyWithImpl<_$_UpdateAdmin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? roleId, BuildContext context,
            String firstName, String lastName, String email, String dob)
        addAdmin,
    required TResult Function(String userId) getRoles,
    required TResult Function(
            String userId,
            String? roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String dob)
        updateAdmin,
    required TResult Function(String userId) viewAdmin,
  }) {
    return updateAdmin(
        userId, roleId, context, firstName, lastName, email, dob);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? roleId, BuildContext context, String firstName,
            String lastName, String email, String dob)?
        addAdmin,
    TResult? Function(String userId)? getRoles,
    TResult? Function(String userId, String? roleId, BuildContext context,
            String firstName, String lastName, String email, String dob)?
        updateAdmin,
    TResult? Function(String userId)? viewAdmin,
  }) {
    return updateAdmin?.call(
        userId, roleId, context, firstName, lastName, email, dob);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? roleId, BuildContext context, String firstName,
            String lastName, String email, String dob)?
        addAdmin,
    TResult Function(String userId)? getRoles,
    TResult Function(String userId, String? roleId, BuildContext context,
            String firstName, String lastName, String email, String dob)?
        updateAdmin,
    TResult Function(String userId)? viewAdmin,
    required TResult orElse(),
  }) {
    if (updateAdmin != null) {
      return updateAdmin(
          userId, roleId, context, firstName, lastName, email, dob);
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
      required final String? roleId,
      required final BuildContext context,
      required final String firstName,
      required final String lastName,
      required final String email,
      required final String dob}) = _$_UpdateAdmin;

  String get userId;
  String? get roleId;
  BuildContext get context;
  String get firstName;
  String get lastName;
  String get email;
  String get dob;
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
  $Res call({String userId});
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
  }) {
    return _then(_$_ViewAdmin(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ViewAdmin implements _ViewAdmin {
  const _$_ViewAdmin({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'AdminCreationEvent.viewAdmin(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ViewAdmin &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ViewAdminCopyWith<_$_ViewAdmin> get copyWith =>
      __$$_ViewAdminCopyWithImpl<_$_ViewAdmin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? roleId, BuildContext context,
            String firstName, String lastName, String email, String dob)
        addAdmin,
    required TResult Function(String userId) getRoles,
    required TResult Function(
            String userId,
            String? roleId,
            BuildContext context,
            String firstName,
            String lastName,
            String email,
            String dob)
        updateAdmin,
    required TResult Function(String userId) viewAdmin,
  }) {
    return viewAdmin(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? roleId, BuildContext context, String firstName,
            String lastName, String email, String dob)?
        addAdmin,
    TResult? Function(String userId)? getRoles,
    TResult? Function(String userId, String? roleId, BuildContext context,
            String firstName, String lastName, String email, String dob)?
        updateAdmin,
    TResult? Function(String userId)? viewAdmin,
  }) {
    return viewAdmin?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? roleId, BuildContext context, String firstName,
            String lastName, String email, String dob)?
        addAdmin,
    TResult Function(String userId)? getRoles,
    TResult Function(String userId, String? roleId, BuildContext context,
            String firstName, String lastName, String email, String dob)?
        updateAdmin,
    TResult Function(String userId)? viewAdmin,
    required TResult orElse(),
  }) {
    if (viewAdmin != null) {
      return viewAdmin(userId);
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
    required TResult orElse(),
  }) {
    if (viewAdmin != null) {
      return viewAdmin(this);
    }
    return orElse();
  }
}

abstract class _ViewAdmin implements AdminCreationEvent {
  const factory _ViewAdmin({required final String userId}) = _$_ViewAdmin;

  String get userId;
  @JsonKey(ignore: true)
  _$$_ViewAdminCopyWith<_$_ViewAdmin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdminCreationState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  CommonResponse? get response => throw _privateConstructorUsedError;

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
      {bool isLoading, bool isError, String? error, CommonResponse? response});
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
    Object? isLoading = null,
    Object? isError = null,
    Object? error = freezed,
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
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
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as CommonResponse?,
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
      {bool isLoading, bool isError, String? error, CommonResponse? response});
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
    Object? isLoading = null,
    Object? isError = null,
    Object? error = freezed,
    Object? response = freezed,
  }) {
    return _then(_$_AdminCreationState(
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
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as CommonResponse?,
    ));
  }
}

/// @nodoc

class _$_AdminCreationState implements _AdminCreationState {
  const _$_AdminCreationState(
      {required this.isLoading,
      required this.isError,
      required this.error,
      required this.response});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final String? error;
  @override
  final CommonResponse? response;

  @override
  String toString() {
    return 'AdminCreationState(isLoading: $isLoading, isError: $isError, error: $error, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminCreationState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, isError, error, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdminCreationStateCopyWith<_$_AdminCreationState> get copyWith =>
      __$$_AdminCreationStateCopyWithImpl<_$_AdminCreationState>(
          this, _$identity);
}

abstract class _AdminCreationState implements AdminCreationState {
  const factory _AdminCreationState(
      {required final bool isLoading,
      required final bool isError,
      required final String? error,
      required final CommonResponse? response}) = _$_AdminCreationState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  String? get error;
  @override
  CommonResponse? get response;
  @override
  @JsonKey(ignore: true)
  _$$_AdminCreationStateCopyWith<_$_AdminCreationState> get copyWith =>
      throw _privateConstructorUsedError;
}
