// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_management_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserManagementDetailEvent {
  String get userId => throw _privateConstructorUsedError;
  String get adminId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId) getUserDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getUserDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getUserDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserDetail value) getUserDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserDetail value)? getUserDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserDetail value)? getUserDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserManagementDetailEventCopyWith<UserManagementDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserManagementDetailEventCopyWith<$Res> {
  factory $UserManagementDetailEventCopyWith(UserManagementDetailEvent value,
          $Res Function(UserManagementDetailEvent) then) =
      _$UserManagementDetailEventCopyWithImpl<$Res, UserManagementDetailEvent>;
  @useResult
  $Res call({String userId, String adminId});
}

/// @nodoc
class _$UserManagementDetailEventCopyWithImpl<$Res,
        $Val extends UserManagementDetailEvent>
    implements $UserManagementDetailEventCopyWith<$Res> {
  _$UserManagementDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? adminId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      adminId: null == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetUserDetailCopyWith<$Res>
    implements $UserManagementDetailEventCopyWith<$Res> {
  factory _$$_GetUserDetailCopyWith(
          _$_GetUserDetail value, $Res Function(_$_GetUserDetail) then) =
      __$$_GetUserDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String adminId});
}

/// @nodoc
class __$$_GetUserDetailCopyWithImpl<$Res>
    extends _$UserManagementDetailEventCopyWithImpl<$Res, _$_GetUserDetail>
    implements _$$_GetUserDetailCopyWith<$Res> {
  __$$_GetUserDetailCopyWithImpl(
      _$_GetUserDetail _value, $Res Function(_$_GetUserDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? adminId = null,
  }) {
    return _then(_$_GetUserDetail(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      adminId: null == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetUserDetail implements _GetUserDetail {
  const _$_GetUserDetail({required this.userId, required this.adminId});

  @override
  final String userId;
  @override
  final String adminId;

  @override
  String toString() {
    return 'UserManagementDetailEvent.getUserDetail(userId: $userId, adminId: $adminId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetUserDetail &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.adminId, adminId) || other.adminId == adminId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, adminId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetUserDetailCopyWith<_$_GetUserDetail> get copyWith =>
      __$$_GetUserDetailCopyWithImpl<_$_GetUserDetail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId) getUserDetail,
  }) {
    return getUserDetail(userId, adminId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getUserDetail,
  }) {
    return getUserDetail?.call(userId, adminId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getUserDetail,
    required TResult orElse(),
  }) {
    if (getUserDetail != null) {
      return getUserDetail(userId, adminId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserDetail value) getUserDetail,
  }) {
    return getUserDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserDetail value)? getUserDetail,
  }) {
    return getUserDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserDetail value)? getUserDetail,
    required TResult orElse(),
  }) {
    if (getUserDetail != null) {
      return getUserDetail(this);
    }
    return orElse();
  }
}

abstract class _GetUserDetail implements UserManagementDetailEvent {
  const factory _GetUserDetail(
      {required final String userId,
      required final String adminId}) = _$_GetUserDetail;

  @override
  String get userId;
  @override
  String get adminId;
  @override
  @JsonKey(ignore: true)
  _$$_GetUserDetailCopyWith<_$_GetUserDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserManagementDetailState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  UserDetailResponse? get response => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserManagementDetailStateCopyWith<UserManagementDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserManagementDetailStateCopyWith<$Res> {
  factory $UserManagementDetailStateCopyWith(UserManagementDetailState value,
          $Res Function(UserManagementDetailState) then) =
      _$UserManagementDetailStateCopyWithImpl<$Res, UserManagementDetailState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      UserDetailResponse? response,
      String? error});
}

/// @nodoc
class _$UserManagementDetailStateCopyWithImpl<$Res,
        $Val extends UserManagementDetailState>
    implements $UserManagementDetailStateCopyWith<$Res> {
  _$UserManagementDetailStateCopyWithImpl(this._value, this._then);

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
              as UserDetailResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserManagementDetailStateCopyWith<$Res>
    implements $UserManagementDetailStateCopyWith<$Res> {
  factory _$$_UserManagementDetailStateCopyWith(
          _$_UserManagementDetailState value,
          $Res Function(_$_UserManagementDetailState) then) =
      __$$_UserManagementDetailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      UserDetailResponse? response,
      String? error});
}

/// @nodoc
class __$$_UserManagementDetailStateCopyWithImpl<$Res>
    extends _$UserManagementDetailStateCopyWithImpl<$Res,
        _$_UserManagementDetailState>
    implements _$$_UserManagementDetailStateCopyWith<$Res> {
  __$$_UserManagementDetailStateCopyWithImpl(
      _$_UserManagementDetailState _value,
      $Res Function(_$_UserManagementDetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? response = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_UserManagementDetailState(
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
              as UserDetailResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UserManagementDetailState implements _UserManagementDetailState {
  const _$_UserManagementDetailState(
      {required this.isLoading,
      required this.isError,
      required this.response,
      required this.error});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final UserDetailResponse? response;
  @override
  final String? error;

  @override
  String toString() {
    return 'UserManagementDetailState(isLoading: $isLoading, isError: $isError, response: $response, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserManagementDetailState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, isError, response, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserManagementDetailStateCopyWith<_$_UserManagementDetailState>
      get copyWith => __$$_UserManagementDetailStateCopyWithImpl<
          _$_UserManagementDetailState>(this, _$identity);
}

abstract class _UserManagementDetailState implements UserManagementDetailState {
  const factory _UserManagementDetailState(
      {required final bool isLoading,
      required final bool isError,
      required final UserDetailResponse? response,
      required final String? error}) = _$_UserManagementDetailState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  UserDetailResponse? get response;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_UserManagementDetailStateCopyWith<_$_UserManagementDetailState>
      get copyWith => throw _privateConstructorUsedError;
}
