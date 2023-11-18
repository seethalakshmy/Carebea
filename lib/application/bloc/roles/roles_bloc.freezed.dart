// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'roles_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RolesEvent {
  String get userId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, int page, int limit,
            String searchTerm, int? filterId)
        getRoles,
    required TResult Function(
            String roleId, String userId, BuildContext context)
        roleDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, int page, int limit, String searchTerm,
            int? filterId)?
        getRoles,
    TResult? Function(String roleId, String userId, BuildContext context)?
        roleDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, int page, int limit, String searchTerm,
            int? filterId)?
        getRoles,
    TResult Function(String roleId, String userId, BuildContext context)?
        roleDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRoles value) getRoles,
    required TResult Function(_RoleDelete value) roleDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRoles value)? getRoles,
    TResult? Function(_RoleDelete value)? roleDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRoles value)? getRoles,
    TResult Function(_RoleDelete value)? roleDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RolesEventCopyWith<RolesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RolesEventCopyWith<$Res> {
  factory $RolesEventCopyWith(
          RolesEvent value, $Res Function(RolesEvent) then) =
      _$RolesEventCopyWithImpl<$Res, RolesEvent>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class _$RolesEventCopyWithImpl<$Res, $Val extends RolesEvent>
    implements $RolesEventCopyWith<$Res> {
  _$RolesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetRolesCopyWith<$Res> implements $RolesEventCopyWith<$Res> {
  factory _$$_GetRolesCopyWith(
          _$_GetRoles value, $Res Function(_$_GetRoles) then) =
      __$$_GetRolesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId, int page, int limit, String searchTerm, int? filterId});
}

/// @nodoc
class __$$_GetRolesCopyWithImpl<$Res>
    extends _$RolesEventCopyWithImpl<$Res, _$_GetRoles>
    implements _$$_GetRolesCopyWith<$Res> {
  __$$_GetRolesCopyWithImpl(
      _$_GetRoles _value, $Res Function(_$_GetRoles) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? page = null,
    Object? limit = null,
    Object? searchTerm = null,
    Object? filterId = freezed,
  }) {
    return _then(_$_GetRoles(
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
      searchTerm: null == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String,
      filterId: freezed == filterId
          ? _value.filterId
          : filterId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_GetRoles implements _GetRoles {
  const _$_GetRoles(
      {required this.userId,
      required this.page,
      required this.limit,
      required this.searchTerm,
      this.filterId});

  @override
  final String userId;
  @override
  final int page;
  @override
  final int limit;
  @override
  final String searchTerm;
  @override
  final int? filterId;

  @override
  String toString() {
    return 'RolesEvent.getRoles(userId: $userId, page: $page, limit: $limit, searchTerm: $searchTerm, filterId: $filterId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetRoles &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.searchTerm, searchTerm) ||
                other.searchTerm == searchTerm) &&
            (identical(other.filterId, filterId) ||
                other.filterId == filterId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, page, limit, searchTerm, filterId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetRolesCopyWith<_$_GetRoles> get copyWith =>
      __$$_GetRolesCopyWithImpl<_$_GetRoles>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, int page, int limit,
            String searchTerm, int? filterId)
        getRoles,
    required TResult Function(
            String roleId, String userId, BuildContext context)
        roleDelete,
  }) {
    return getRoles(userId, page, limit, searchTerm, filterId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, int page, int limit, String searchTerm,
            int? filterId)?
        getRoles,
    TResult? Function(String roleId, String userId, BuildContext context)?
        roleDelete,
  }) {
    return getRoles?.call(userId, page, limit, searchTerm, filterId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, int page, int limit, String searchTerm,
            int? filterId)?
        getRoles,
    TResult Function(String roleId, String userId, BuildContext context)?
        roleDelete,
    required TResult orElse(),
  }) {
    if (getRoles != null) {
      return getRoles(userId, page, limit, searchTerm, filterId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRoles value) getRoles,
    required TResult Function(_RoleDelete value) roleDelete,
  }) {
    return getRoles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRoles value)? getRoles,
    TResult? Function(_RoleDelete value)? roleDelete,
  }) {
    return getRoles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRoles value)? getRoles,
    TResult Function(_RoleDelete value)? roleDelete,
    required TResult orElse(),
  }) {
    if (getRoles != null) {
      return getRoles(this);
    }
    return orElse();
  }
}

abstract class _GetRoles implements RolesEvent {
  const factory _GetRoles(
      {required final String userId,
      required final int page,
      required final int limit,
      required final String searchTerm,
      final int? filterId}) = _$_GetRoles;

  @override
  String get userId;
  int get page;
  int get limit;
  String get searchTerm;
  int? get filterId;
  @override
  @JsonKey(ignore: true)
  _$$_GetRolesCopyWith<_$_GetRoles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RoleDeleteCopyWith<$Res>
    implements $RolesEventCopyWith<$Res> {
  factory _$$_RoleDeleteCopyWith(
          _$_RoleDelete value, $Res Function(_$_RoleDelete) then) =
      __$$_RoleDeleteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String roleId, String userId, BuildContext context});
}

/// @nodoc
class __$$_RoleDeleteCopyWithImpl<$Res>
    extends _$RolesEventCopyWithImpl<$Res, _$_RoleDelete>
    implements _$$_RoleDeleteCopyWith<$Res> {
  __$$_RoleDeleteCopyWithImpl(
      _$_RoleDelete _value, $Res Function(_$_RoleDelete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roleId = null,
    Object? userId = null,
    Object? context = null,
  }) {
    return _then(_$_RoleDelete(
      roleId: null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_RoleDelete implements _RoleDelete {
  const _$_RoleDelete(
      {required this.roleId, required this.userId, required this.context});

  @override
  final String roleId;
  @override
  final String userId;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'RolesEvent.roleDelete(roleId: $roleId, userId: $userId, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoleDelete &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roleId, userId, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoleDeleteCopyWith<_$_RoleDelete> get copyWith =>
      __$$_RoleDeleteCopyWithImpl<_$_RoleDelete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, int page, int limit,
            String searchTerm, int? filterId)
        getRoles,
    required TResult Function(
            String roleId, String userId, BuildContext context)
        roleDelete,
  }) {
    return roleDelete(roleId, userId, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, int page, int limit, String searchTerm,
            int? filterId)?
        getRoles,
    TResult? Function(String roleId, String userId, BuildContext context)?
        roleDelete,
  }) {
    return roleDelete?.call(roleId, userId, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, int page, int limit, String searchTerm,
            int? filterId)?
        getRoles,
    TResult Function(String roleId, String userId, BuildContext context)?
        roleDelete,
    required TResult orElse(),
  }) {
    if (roleDelete != null) {
      return roleDelete(roleId, userId, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRoles value) getRoles,
    required TResult Function(_RoleDelete value) roleDelete,
  }) {
    return roleDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRoles value)? getRoles,
    TResult? Function(_RoleDelete value)? roleDelete,
  }) {
    return roleDelete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRoles value)? getRoles,
    TResult Function(_RoleDelete value)? roleDelete,
    required TResult orElse(),
  }) {
    if (roleDelete != null) {
      return roleDelete(this);
    }
    return orElse();
  }
}

abstract class _RoleDelete implements RolesEvent {
  const factory _RoleDelete(
      {required final String roleId,
      required final String userId,
      required final BuildContext context}) = _$_RoleDelete;

  String get roleId;
  @override
  String get userId;
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$_RoleDeleteCopyWith<_$_RoleDelete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RolesState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  CommonResponseUse? get deleteResponse => throw _privateConstructorUsedError;
  GetRoleResponse? get getRolesResponse => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get isClientError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RolesStateCopyWith<RolesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RolesStateCopyWith<$Res> {
  factory $RolesStateCopyWith(
          RolesState value, $Res Function(RolesState) then) =
      _$RolesStateCopyWithImpl<$Res, RolesState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      CommonResponseUse? deleteResponse,
      GetRoleResponse? getRolesResponse,
      String? error,
      bool isClientError});
}

/// @nodoc
class _$RolesStateCopyWithImpl<$Res, $Val extends RolesState>
    implements $RolesStateCopyWith<$Res> {
  _$RolesStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_RolesStateCopyWith<$Res>
    implements $RolesStateCopyWith<$Res> {
  factory _$$_RolesStateCopyWith(
          _$_RolesState value, $Res Function(_$_RolesState) then) =
      __$$_RolesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      CommonResponseUse? deleteResponse,
      GetRoleResponse? getRolesResponse,
      String? error,
      bool isClientError});
}

/// @nodoc
class __$$_RolesStateCopyWithImpl<$Res>
    extends _$RolesStateCopyWithImpl<$Res, _$_RolesState>
    implements _$$_RolesStateCopyWith<$Res> {
  __$$_RolesStateCopyWithImpl(
      _$_RolesState _value, $Res Function(_$_RolesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? deleteResponse = freezed,
    Object? getRolesResponse = freezed,
    Object? error = freezed,
    Object? isClientError = null,
  }) {
    return _then(_$_RolesState(
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

class _$_RolesState implements _RolesState {
  const _$_RolesState(
      {required this.isLoading,
      required this.isError,
      required this.deleteResponse,
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
  final GetRoleResponse? getRolesResponse;
  @override
  final String? error;
  @override
  @JsonKey()
  final bool isClientError;

  @override
  String toString() {
    return 'RolesState(isLoading: $isLoading, isError: $isError, deleteResponse: $deleteResponse, getRolesResponse: $getRolesResponse, error: $error, isClientError: $isClientError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RolesState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.deleteResponse, deleteResponse) ||
                other.deleteResponse == deleteResponse) &&
            (identical(other.getRolesResponse, getRolesResponse) ||
                other.getRolesResponse == getRolesResponse) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isClientError, isClientError) ||
                other.isClientError == isClientError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError,
      deleteResponse, getRolesResponse, error, isClientError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RolesStateCopyWith<_$_RolesState> get copyWith =>
      __$$_RolesStateCopyWithImpl<_$_RolesState>(this, _$identity);
}

abstract class _RolesState implements RolesState {
  const factory _RolesState(
      {required final bool isLoading,
      required final bool isError,
      required final CommonResponseUse? deleteResponse,
      required final GetRoleResponse? getRolesResponse,
      required final String? error,
      final bool isClientError}) = _$_RolesState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  CommonResponseUse? get deleteResponse;
  @override
  GetRoleResponse? get getRolesResponse;
  @override
  String? get error;
  @override
  bool get isClientError;
  @override
  @JsonKey(ignore: true)
  _$$_RolesStateCopyWith<_$_RolesState> get copyWith =>
      throw _privateConstructorUsedError;
}
