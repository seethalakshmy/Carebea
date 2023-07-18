// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'admins_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdminEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, int page, int limit,
            String? searchTerm, String? status, String? roleId)
        getAdmins,
    required TResult Function(String userId) getRoles,
    required TResult Function(
            String adminID, String userID, BuildContext context)
        adminDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, int page, int limit, String? searchTerm,
            String? status, String? roleId)?
        getAdmins,
    TResult? Function(String userId)? getRoles,
    TResult? Function(String adminID, String userID, BuildContext context)?
        adminDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, int page, int limit, String? searchTerm,
            String? status, String? roleId)?
        getAdmins,
    TResult Function(String userId)? getRoles,
    TResult Function(String adminID, String userID, BuildContext context)?
        adminDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAdmins value) getAdmins,
    required TResult Function(_GetRoles value) getRoles,
    required TResult Function(_AdminDelete value) adminDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAdmins value)? getAdmins,
    TResult? Function(_GetRoles value)? getRoles,
    TResult? Function(_AdminDelete value)? adminDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAdmins value)? getAdmins,
    TResult Function(_GetRoles value)? getRoles,
    TResult Function(_AdminDelete value)? adminDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminEventCopyWith<$Res> {
  factory $AdminEventCopyWith(
          AdminEvent value, $Res Function(AdminEvent) then) =
      _$AdminEventCopyWithImpl<$Res, AdminEvent>;
}

/// @nodoc
class _$AdminEventCopyWithImpl<$Res, $Val extends AdminEvent>
    implements $AdminEventCopyWith<$Res> {
  _$AdminEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetAdminsCopyWith<$Res> {
  factory _$$_GetAdminsCopyWith(
          _$_GetAdmins value, $Res Function(_$_GetAdmins) then) =
      __$$_GetAdminsCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String userId,
      int page,
      int limit,
      String? searchTerm,
      String? status,
      String? roleId});
}

/// @nodoc
class __$$_GetAdminsCopyWithImpl<$Res>
    extends _$AdminEventCopyWithImpl<$Res, _$_GetAdmins>
    implements _$$_GetAdminsCopyWith<$Res> {
  __$$_GetAdminsCopyWithImpl(
      _$_GetAdmins _value, $Res Function(_$_GetAdmins) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? page = null,
    Object? limit = null,
    Object? searchTerm = freezed,
    Object? status = freezed,
    Object? roleId = freezed,
  }) {
    return _then(_$_GetAdmins(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      searchTerm: freezed == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      roleId: freezed == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GetAdmins implements _GetAdmins {
  const _$_GetAdmins(
      {required this.userId,
      required this.page,
      required this.limit,
      this.searchTerm,
      this.status,
      this.roleId});

  @override
  final String userId;
  @override
  final int page;
  @override
  final int limit;
  @override
  final String? searchTerm;
  @override
  final String? status;
  @override
  final String? roleId;

  @override
  String toString() {
    return 'AdminEvent.getAdmins(userId: $userId, page: $page, limit: $limit, searchTerm: $searchTerm, status: $status, roleId: $roleId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAdmins &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.searchTerm, searchTerm) ||
                other.searchTerm == searchTerm) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.roleId, roleId) || other.roleId == roleId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, page, limit, searchTerm, status, roleId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetAdminsCopyWith<_$_GetAdmins> get copyWith =>
      __$$_GetAdminsCopyWithImpl<_$_GetAdmins>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, int page, int limit,
            String? searchTerm, String? status, String? roleId)
        getAdmins,
    required TResult Function(String userId) getRoles,
    required TResult Function(
            String adminID, String userID, BuildContext context)
        adminDelete,
  }) {
    return getAdmins(userId, page, limit, searchTerm, status, roleId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, int page, int limit, String? searchTerm,
            String? status, String? roleId)?
        getAdmins,
    TResult? Function(String userId)? getRoles,
    TResult? Function(String adminID, String userID, BuildContext context)?
        adminDelete,
  }) {
    return getAdmins?.call(userId, page, limit, searchTerm, status, roleId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, int page, int limit, String? searchTerm,
            String? status, String? roleId)?
        getAdmins,
    TResult Function(String userId)? getRoles,
    TResult Function(String adminID, String userID, BuildContext context)?
        adminDelete,
    required TResult orElse(),
  }) {
    if (getAdmins != null) {
      return getAdmins(userId, page, limit, searchTerm, status, roleId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAdmins value) getAdmins,
    required TResult Function(_GetRoles value) getRoles,
    required TResult Function(_AdminDelete value) adminDelete,
  }) {
    return getAdmins(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAdmins value)? getAdmins,
    TResult? Function(_GetRoles value)? getRoles,
    TResult? Function(_AdminDelete value)? adminDelete,
  }) {
    return getAdmins?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAdmins value)? getAdmins,
    TResult Function(_GetRoles value)? getRoles,
    TResult Function(_AdminDelete value)? adminDelete,
    required TResult orElse(),
  }) {
    if (getAdmins != null) {
      return getAdmins(this);
    }
    return orElse();
  }
}

abstract class _GetAdmins implements AdminEvent {
  const factory _GetAdmins(
      {required final String userId,
      required final int page,
      required final int limit,
      final String? searchTerm,
      final String? status,
      final String? roleId}) = _$_GetAdmins;

  String get userId;
  int get page;
  int get limit;
  String? get searchTerm;
  String? get status;
  String? get roleId;
  @JsonKey(ignore: true)
  _$$_GetAdminsCopyWith<_$_GetAdmins> get copyWith =>
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
    extends _$AdminEventCopyWithImpl<$Res, _$_GetRoles>
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
    return 'AdminEvent.getRoles(userId: $userId)';
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
    required TResult Function(String userId, int page, int limit,
            String? searchTerm, String? status, String? roleId)
        getAdmins,
    required TResult Function(String userId) getRoles,
    required TResult Function(
            String adminID, String userID, BuildContext context)
        adminDelete,
  }) {
    return getRoles(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, int page, int limit, String? searchTerm,
            String? status, String? roleId)?
        getAdmins,
    TResult? Function(String userId)? getRoles,
    TResult? Function(String adminID, String userID, BuildContext context)?
        adminDelete,
  }) {
    return getRoles?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, int page, int limit, String? searchTerm,
            String? status, String? roleId)?
        getAdmins,
    TResult Function(String userId)? getRoles,
    TResult Function(String adminID, String userID, BuildContext context)?
        adminDelete,
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
    required TResult Function(_GetAdmins value) getAdmins,
    required TResult Function(_GetRoles value) getRoles,
    required TResult Function(_AdminDelete value) adminDelete,
  }) {
    return getRoles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAdmins value)? getAdmins,
    TResult? Function(_GetRoles value)? getRoles,
    TResult? Function(_AdminDelete value)? adminDelete,
  }) {
    return getRoles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAdmins value)? getAdmins,
    TResult Function(_GetRoles value)? getRoles,
    TResult Function(_AdminDelete value)? adminDelete,
    required TResult orElse(),
  }) {
    if (getRoles != null) {
      return getRoles(this);
    }
    return orElse();
  }
}

abstract class _GetRoles implements AdminEvent {
  const factory _GetRoles({required final String userId}) = _$_GetRoles;

  String get userId;
  @JsonKey(ignore: true)
  _$$_GetRolesCopyWith<_$_GetRoles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AdminDeleteCopyWith<$Res> {
  factory _$$_AdminDeleteCopyWith(
          _$_AdminDelete value, $Res Function(_$_AdminDelete) then) =
      __$$_AdminDeleteCopyWithImpl<$Res>;
  @useResult
  $Res call({String adminID, String userID, BuildContext context});
}

/// @nodoc
class __$$_AdminDeleteCopyWithImpl<$Res>
    extends _$AdminEventCopyWithImpl<$Res, _$_AdminDelete>
    implements _$$_AdminDeleteCopyWith<$Res> {
  __$$_AdminDeleteCopyWithImpl(
      _$_AdminDelete _value, $Res Function(_$_AdminDelete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminID = null,
    Object? userID = null,
    Object? context = null,
  }) {
    return _then(_$_AdminDelete(
      adminID: null == adminID
          ? _value.adminID
          : adminID // ignore: cast_nullable_to_non_nullable
              as String,
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_AdminDelete implements _AdminDelete {
  const _$_AdminDelete(
      {required this.adminID, required this.userID, required this.context});

  @override
  final String adminID;
  @override
  final String userID;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AdminEvent.adminDelete(adminID: $adminID, userID: $userID, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminDelete &&
            (identical(other.adminID, adminID) || other.adminID == adminID) &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, adminID, userID, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdminDeleteCopyWith<_$_AdminDelete> get copyWith =>
      __$$_AdminDeleteCopyWithImpl<_$_AdminDelete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, int page, int limit,
            String? searchTerm, String? status, String? roleId)
        getAdmins,
    required TResult Function(String userId) getRoles,
    required TResult Function(
            String adminID, String userID, BuildContext context)
        adminDelete,
  }) {
    return adminDelete(adminID, userID, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, int page, int limit, String? searchTerm,
            String? status, String? roleId)?
        getAdmins,
    TResult? Function(String userId)? getRoles,
    TResult? Function(String adminID, String userID, BuildContext context)?
        adminDelete,
  }) {
    return adminDelete?.call(adminID, userID, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, int page, int limit, String? searchTerm,
            String? status, String? roleId)?
        getAdmins,
    TResult Function(String userId)? getRoles,
    TResult Function(String adminID, String userID, BuildContext context)?
        adminDelete,
    required TResult orElse(),
  }) {
    if (adminDelete != null) {
      return adminDelete(adminID, userID, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAdmins value) getAdmins,
    required TResult Function(_GetRoles value) getRoles,
    required TResult Function(_AdminDelete value) adminDelete,
  }) {
    return adminDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAdmins value)? getAdmins,
    TResult? Function(_GetRoles value)? getRoles,
    TResult? Function(_AdminDelete value)? adminDelete,
  }) {
    return adminDelete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAdmins value)? getAdmins,
    TResult Function(_GetRoles value)? getRoles,
    TResult Function(_AdminDelete value)? adminDelete,
    required TResult orElse(),
  }) {
    if (adminDelete != null) {
      return adminDelete(this);
    }
    return orElse();
  }
}

abstract class _AdminDelete implements AdminEvent {
  const factory _AdminDelete(
      {required final String adminID,
      required final String userID,
      required final BuildContext context}) = _$_AdminDelete;

  String get adminID;
  String get userID;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_AdminDeleteCopyWith<_$_AdminDelete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdminsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  CommonResponseUse? get deleteResponse => throw _privateConstructorUsedError;
  AdminGetResponse? get getAdminsResponse => throw _privateConstructorUsedError;
  GetRoleResponse? get getRolesResponse => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get isClientError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdminsStateCopyWith<AdminsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminsStateCopyWith<$Res> {
  factory $AdminsStateCopyWith(
          AdminsState value, $Res Function(AdminsState) then) =
      _$AdminsStateCopyWithImpl<$Res, AdminsState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      CommonResponseUse? deleteResponse,
      AdminGetResponse? getAdminsResponse,
      GetRoleResponse? getRolesResponse,
      String? error,
      bool isClientError});
}

/// @nodoc
class _$AdminsStateCopyWithImpl<$Res, $Val extends AdminsState>
    implements $AdminsStateCopyWith<$Res> {
  _$AdminsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? deleteResponse = freezed,
    Object? getAdminsResponse = freezed,
    Object? getRolesResponse = freezed,
    Object? error = freezed,
    Object? isClientError = null,
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
      deleteResponse: freezed == deleteResponse
          ? _value.deleteResponse
          : deleteResponse // ignore: cast_nullable_to_non_nullable
              as CommonResponseUse?,
      getAdminsResponse: freezed == getAdminsResponse
          ? _value.getAdminsResponse
          : getAdminsResponse // ignore: cast_nullable_to_non_nullable
              as AdminGetResponse?,
      getRolesResponse: freezed == getRolesResponse
          ? _value.getRolesResponse
          : getRolesResponse // ignore: cast_nullable_to_non_nullable
              as GetRoleResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isClientError: null == isClientError
          ? _value.isClientError
          : isClientError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdminsStateCopyWith<$Res>
    implements $AdminsStateCopyWith<$Res> {
  factory _$$_AdminsStateCopyWith(
          _$_AdminsState value, $Res Function(_$_AdminsState) then) =
      __$$_AdminsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      CommonResponseUse? deleteResponse,
      AdminGetResponse? getAdminsResponse,
      GetRoleResponse? getRolesResponse,
      String? error,
      bool isClientError});
}

/// @nodoc
class __$$_AdminsStateCopyWithImpl<$Res>
    extends _$AdminsStateCopyWithImpl<$Res, _$_AdminsState>
    implements _$$_AdminsStateCopyWith<$Res> {
  __$$_AdminsStateCopyWithImpl(
      _$_AdminsState _value, $Res Function(_$_AdminsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? deleteResponse = freezed,
    Object? getAdminsResponse = freezed,
    Object? getRolesResponse = freezed,
    Object? error = freezed,
    Object? isClientError = null,
  }) {
    return _then(_$_AdminsState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      deleteResponse: freezed == deleteResponse
          ? _value.deleteResponse
          : deleteResponse // ignore: cast_nullable_to_non_nullable
              as CommonResponseUse?,
      getAdminsResponse: freezed == getAdminsResponse
          ? _value.getAdminsResponse
          : getAdminsResponse // ignore: cast_nullable_to_non_nullable
              as AdminGetResponse?,
      getRolesResponse: freezed == getRolesResponse
          ? _value.getRolesResponse
          : getRolesResponse // ignore: cast_nullable_to_non_nullable
              as GetRoleResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isClientError: null == isClientError
          ? _value.isClientError
          : isClientError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AdminsState implements _AdminsState {
  const _$_AdminsState(
      {required this.isLoading,
      required this.isError,
      required this.deleteResponse,
      required this.getAdminsResponse,
      required this.getRolesResponse,
      required this.error,
      this.isClientError = false});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final CommonResponseUse? deleteResponse;
  @override
  final AdminGetResponse? getAdminsResponse;
  @override
  final GetRoleResponse? getRolesResponse;
  @override
  final String? error;
  @override
  @JsonKey()
  final bool isClientError;

  @override
  String toString() {
    return 'AdminsState(isLoading: $isLoading, isError: $isError, deleteResponse: $deleteResponse, getAdminsResponse: $getAdminsResponse, getRolesResponse: $getRolesResponse, error: $error, isClientError: $isClientError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.deleteResponse, deleteResponse) ||
                other.deleteResponse == deleteResponse) &&
            (identical(other.getAdminsResponse, getAdminsResponse) ||
                other.getAdminsResponse == getAdminsResponse) &&
            (identical(other.getRolesResponse, getRolesResponse) ||
                other.getRolesResponse == getRolesResponse) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isClientError, isClientError) ||
                other.isClientError == isClientError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isError,
      deleteResponse,
      getAdminsResponse,
      getRolesResponse,
      error,
      isClientError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdminsStateCopyWith<_$_AdminsState> get copyWith =>
      __$$_AdminsStateCopyWithImpl<_$_AdminsState>(this, _$identity);
}

abstract class _AdminsState implements AdminsState {
  const factory _AdminsState(
      {required final bool isLoading,
      required final bool isError,
      required final CommonResponseUse? deleteResponse,
      required final AdminGetResponse? getAdminsResponse,
      required final GetRoleResponse? getRolesResponse,
      required final String? error,
      final bool isClientError}) = _$_AdminsState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  CommonResponseUse? get deleteResponse;
  @override
  AdminGetResponse? get getAdminsResponse;
  @override
  GetRoleResponse? get getRolesResponse;
  @override
  String? get error;
  @override
  bool get isClientError;
  @override
  @JsonKey(ignore: true)
  _$$_AdminsStateCopyWith<_$_AdminsState> get copyWith =>
      throw _privateConstructorUsedError;
}
