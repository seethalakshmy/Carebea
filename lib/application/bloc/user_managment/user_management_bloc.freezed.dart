// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_management_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserManagementEvent {
  String get userId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String page, String limit,
            String searchTerm, bool? filterId)
        getUsers,
    required TResult Function(
            String userId, String adminId, bool status, BuildContext context)
        changeClientStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String page, String limit,
            String searchTerm, bool? filterId)?
        getUsers,
    TResult? Function(
            String userId, String adminId, bool status, BuildContext context)?
        changeClientStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String page, String limit,
            String searchTerm, bool? filterId)?
        getUsers,
    TResult Function(
            String userId, String adminId, bool status, BuildContext context)?
        changeClientStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_ChangeClientStatus value) changeClientStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_ChangeClientStatus value)? changeClientStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_ChangeClientStatus value)? changeClientStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserManagementEventCopyWith<UserManagementEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserManagementEventCopyWith<$Res> {
  factory $UserManagementEventCopyWith(
          UserManagementEvent value, $Res Function(UserManagementEvent) then) =
      _$UserManagementEventCopyWithImpl<$Res, UserManagementEvent>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class _$UserManagementEventCopyWithImpl<$Res, $Val extends UserManagementEvent>
    implements $UserManagementEventCopyWith<$Res> {
  _$UserManagementEventCopyWithImpl(this._value, this._then);

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
abstract class _$$_GetUsersCopyWith<$Res>
    implements $UserManagementEventCopyWith<$Res> {
  factory _$$_GetUsersCopyWith(
          _$_GetUsers value, $Res Function(_$_GetUsers) then) =
      __$$_GetUsersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String page,
      String limit,
      String searchTerm,
      bool? filterId});
}

/// @nodoc
class __$$_GetUsersCopyWithImpl<$Res>
    extends _$UserManagementEventCopyWithImpl<$Res, _$_GetUsers>
    implements _$$_GetUsersCopyWith<$Res> {
  __$$_GetUsersCopyWithImpl(
      _$_GetUsers _value, $Res Function(_$_GetUsers) _then)
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
    return _then(_$_GetUsers(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as String,
      searchTerm: null == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String,
      filterId: freezed == filterId
          ? _value.filterId
          : filterId // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_GetUsers implements _GetUsers {
  const _$_GetUsers(
      {required this.userId,
      required this.page,
      required this.limit,
      required this.searchTerm,
      this.filterId});

  @override
  final String userId;
  @override
  final String page;
  @override
  final String limit;
  @override
  final String searchTerm;
  @override
  final bool? filterId;

  @override
  String toString() {
    return 'UserManagementEvent.getUsers(userId: $userId, page: $page, limit: $limit, searchTerm: $searchTerm, filterId: $filterId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetUsers &&
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
  _$$_GetUsersCopyWith<_$_GetUsers> get copyWith =>
      __$$_GetUsersCopyWithImpl<_$_GetUsers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String page, String limit,
            String searchTerm, bool? filterId)
        getUsers,
    required TResult Function(
            String userId, String adminId, bool status, BuildContext context)
        changeClientStatus,
  }) {
    return getUsers(userId, page, limit, searchTerm, filterId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String page, String limit,
            String searchTerm, bool? filterId)?
        getUsers,
    TResult? Function(
            String userId, String adminId, bool status, BuildContext context)?
        changeClientStatus,
  }) {
    return getUsers?.call(userId, page, limit, searchTerm, filterId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String page, String limit,
            String searchTerm, bool? filterId)?
        getUsers,
    TResult Function(
            String userId, String adminId, bool status, BuildContext context)?
        changeClientStatus,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers(userId, page, limit, searchTerm, filterId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_ChangeClientStatus value) changeClientStatus,
  }) {
    return getUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_ChangeClientStatus value)? changeClientStatus,
  }) {
    return getUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_ChangeClientStatus value)? changeClientStatus,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers(this);
    }
    return orElse();
  }
}

abstract class _GetUsers implements UserManagementEvent {
  const factory _GetUsers(
      {required final String userId,
      required final String page,
      required final String limit,
      required final String searchTerm,
      final bool? filterId}) = _$_GetUsers;

  @override
  String get userId;
  String get page;
  String get limit;
  String get searchTerm;
  bool? get filterId;
  @override
  @JsonKey(ignore: true)
  _$$_GetUsersCopyWith<_$_GetUsers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeClientStatusCopyWith<$Res>
    implements $UserManagementEventCopyWith<$Res> {
  factory _$$_ChangeClientStatusCopyWith(_$_ChangeClientStatus value,
          $Res Function(_$_ChangeClientStatus) then) =
      __$$_ChangeClientStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String adminId, bool status, BuildContext context});
}

/// @nodoc
class __$$_ChangeClientStatusCopyWithImpl<$Res>
    extends _$UserManagementEventCopyWithImpl<$Res, _$_ChangeClientStatus>
    implements _$$_ChangeClientStatusCopyWith<$Res> {
  __$$_ChangeClientStatusCopyWithImpl(
      _$_ChangeClientStatus _value, $Res Function(_$_ChangeClientStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? adminId = null,
    Object? status = null,
    Object? context = null,
  }) {
    return _then(_$_ChangeClientStatus(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      adminId: null == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_ChangeClientStatus implements _ChangeClientStatus {
  const _$_ChangeClientStatus(
      {required this.userId,
      required this.adminId,
      required this.status,
      required this.context});

  @override
  final String userId;
  @override
  final String adminId;
  @override
  final bool status;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'UserManagementEvent.changeClientStatus(userId: $userId, adminId: $adminId, status: $status, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeClientStatus &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.adminId, adminId) || other.adminId == adminId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, adminId, status, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeClientStatusCopyWith<_$_ChangeClientStatus> get copyWith =>
      __$$_ChangeClientStatusCopyWithImpl<_$_ChangeClientStatus>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String page, String limit,
            String searchTerm, bool? filterId)
        getUsers,
    required TResult Function(
            String userId, String adminId, bool status, BuildContext context)
        changeClientStatus,
  }) {
    return changeClientStatus(userId, adminId, status, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String page, String limit,
            String searchTerm, bool? filterId)?
        getUsers,
    TResult? Function(
            String userId, String adminId, bool status, BuildContext context)?
        changeClientStatus,
  }) {
    return changeClientStatus?.call(userId, adminId, status, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String page, String limit,
            String searchTerm, bool? filterId)?
        getUsers,
    TResult Function(
            String userId, String adminId, bool status, BuildContext context)?
        changeClientStatus,
    required TResult orElse(),
  }) {
    if (changeClientStatus != null) {
      return changeClientStatus(userId, adminId, status, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_ChangeClientStatus value) changeClientStatus,
  }) {
    return changeClientStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_ChangeClientStatus value)? changeClientStatus,
  }) {
    return changeClientStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_ChangeClientStatus value)? changeClientStatus,
    required TResult orElse(),
  }) {
    if (changeClientStatus != null) {
      return changeClientStatus(this);
    }
    return orElse();
  }
}

abstract class _ChangeClientStatus implements UserManagementEvent {
  const factory _ChangeClientStatus(
      {required final String userId,
      required final String adminId,
      required final bool status,
      required final BuildContext context}) = _$_ChangeClientStatus;

  @override
  String get userId;
  String get adminId;
  bool get status;
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$_ChangeClientStatusCopyWith<_$_ChangeClientStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserManagementState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  UserListResponse? get response => throw _privateConstructorUsedError;
  CommonResponse? get changeStatusResponse =>
      throw _privateConstructorUsedError;
  List<dynamic> get mUserList => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserManagementStateCopyWith<UserManagementState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserManagementStateCopyWith<$Res> {
  factory $UserManagementStateCopyWith(
          UserManagementState value, $Res Function(UserManagementState) then) =
      _$UserManagementStateCopyWithImpl<$Res, UserManagementState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      UserListResponse? response,
      CommonResponse? changeStatusResponse,
      List<dynamic> mUserList,
      String? error});
}

/// @nodoc
class _$UserManagementStateCopyWithImpl<$Res, $Val extends UserManagementState>
    implements $UserManagementStateCopyWith<$Res> {
  _$UserManagementStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? response = freezed,
    Object? changeStatusResponse = freezed,
    Object? mUserList = null,
    Object? error = freezed,
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
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as UserListResponse?,
      changeStatusResponse: freezed == changeStatusResponse
          ? _value.changeStatusResponse
          : changeStatusResponse // ignore: cast_nullable_to_non_nullable
              as CommonResponse?,
      mUserList: null == mUserList
          ? _value.mUserList
          : mUserList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UsersStateCopyWith<$Res>
    implements $UserManagementStateCopyWith<$Res> {
  factory _$$_UsersStateCopyWith(
          _$_UsersState value, $Res Function(_$_UsersState) then) =
      __$$_UsersStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      UserListResponse? response,
      CommonResponse? changeStatusResponse,
      List<dynamic> mUserList,
      String? error});
}

/// @nodoc
class __$$_UsersStateCopyWithImpl<$Res>
    extends _$UserManagementStateCopyWithImpl<$Res, _$_UsersState>
    implements _$$_UsersStateCopyWith<$Res> {
  __$$_UsersStateCopyWithImpl(
      _$_UsersState _value, $Res Function(_$_UsersState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? response = freezed,
    Object? changeStatusResponse = freezed,
    Object? mUserList = null,
    Object? error = freezed,
  }) {
    return _then(_$_UsersState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as UserListResponse?,
      changeStatusResponse: freezed == changeStatusResponse
          ? _value.changeStatusResponse
          : changeStatusResponse // ignore: cast_nullable_to_non_nullable
              as CommonResponse?,
      mUserList: null == mUserList
          ? _value._mUserList
          : mUserList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UsersState implements _UsersState {
  const _$_UsersState(
      {required this.isLoading,
      required this.isError,
      required this.response,
      required this.changeStatusResponse,
      required final List<dynamic> mUserList,
      required this.error})
      : _mUserList = mUserList;

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final UserListResponse? response;
  @override
  final CommonResponse? changeStatusResponse;
  final List<dynamic> _mUserList;
  @override
  List<dynamic> get mUserList {
    if (_mUserList is EqualUnmodifiableListView) return _mUserList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mUserList);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'UserManagementState(isLoading: $isLoading, isError: $isError, response: $response, changeStatusResponse: $changeStatusResponse, mUserList: $mUserList, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsersState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.changeStatusResponse, changeStatusResponse) ||
                other.changeStatusResponse == changeStatusResponse) &&
            const DeepCollectionEquality()
                .equals(other._mUserList, _mUserList) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isError,
      response,
      changeStatusResponse,
      const DeepCollectionEquality().hash(_mUserList),
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsersStateCopyWith<_$_UsersState> get copyWith =>
      __$$_UsersStateCopyWithImpl<_$_UsersState>(this, _$identity);
}

abstract class _UsersState implements UserManagementState {
  const factory _UsersState(
      {required final bool isLoading,
      required final bool isError,
      required final UserListResponse? response,
      required final CommonResponse? changeStatusResponse,
      required final List<dynamic> mUserList,
      required final String? error}) = _$_UsersState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  UserListResponse? get response;
  @override
  CommonResponse? get changeStatusResponse;
  @override
  List<dynamic> get mUserList;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_UsersStateCopyWith<_$_UsersState> get copyWith =>
      throw _privateConstructorUsedError;
}
