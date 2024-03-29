// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_management_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VideoManagementEvent {
  String get userId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getSettings,
    required TResult Function(
            String userId, String settingsId, BuildContext context)
        deleteGeneralSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getSettings,
    TResult? Function(String userId, String settingsId, BuildContext context)?
        deleteGeneralSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getSettings,
    TResult Function(String userId, String settingsId, BuildContext context)?
        deleteGeneralSettings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSettings value) getSettings,
    required TResult Function(_DeleteGeneralSettings value)
        deleteGeneralSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSettings value)? getSettings,
    TResult? Function(_DeleteGeneralSettings value)? deleteGeneralSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSettings value)? getSettings,
    TResult Function(_DeleteGeneralSettings value)? deleteGeneralSettings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoManagementEventCopyWith<VideoManagementEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoManagementEventCopyWith<$Res> {
  factory $VideoManagementEventCopyWith(VideoManagementEvent value,
          $Res Function(VideoManagementEvent) then) =
      _$VideoManagementEventCopyWithImpl<$Res, VideoManagementEvent>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class _$VideoManagementEventCopyWithImpl<$Res,
        $Val extends VideoManagementEvent>
    implements $VideoManagementEventCopyWith<$Res> {
  _$VideoManagementEventCopyWithImpl(this._value, this._then);

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
abstract class _$$_GetSettingsCopyWith<$Res>
    implements $VideoManagementEventCopyWith<$Res> {
  factory _$$_GetSettingsCopyWith(
          _$_GetSettings value, $Res Function(_$_GetSettings) then) =
      __$$_GetSettingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$_GetSettingsCopyWithImpl<$Res>
    extends _$VideoManagementEventCopyWithImpl<$Res, _$_GetSettings>
    implements _$$_GetSettingsCopyWith<$Res> {
  __$$_GetSettingsCopyWithImpl(
      _$_GetSettings _value, $Res Function(_$_GetSettings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$_GetSettings(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetSettings implements _GetSettings {
  const _$_GetSettings({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'VideoManagementEvent.getSettings(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetSettings &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetSettingsCopyWith<_$_GetSettings> get copyWith =>
      __$$_GetSettingsCopyWithImpl<_$_GetSettings>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getSettings,
    required TResult Function(
            String userId, String settingsId, BuildContext context)
        deleteGeneralSettings,
  }) {
    return getSettings(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getSettings,
    TResult? Function(String userId, String settingsId, BuildContext context)?
        deleteGeneralSettings,
  }) {
    return getSettings?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getSettings,
    TResult Function(String userId, String settingsId, BuildContext context)?
        deleteGeneralSettings,
    required TResult orElse(),
  }) {
    if (getSettings != null) {
      return getSettings(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSettings value) getSettings,
    required TResult Function(_DeleteGeneralSettings value)
        deleteGeneralSettings,
  }) {
    return getSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSettings value)? getSettings,
    TResult? Function(_DeleteGeneralSettings value)? deleteGeneralSettings,
  }) {
    return getSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSettings value)? getSettings,
    TResult Function(_DeleteGeneralSettings value)? deleteGeneralSettings,
    required TResult orElse(),
  }) {
    if (getSettings != null) {
      return getSettings(this);
    }
    return orElse();
  }
}

abstract class _GetSettings implements VideoManagementEvent {
  const factory _GetSettings({required final String userId}) = _$_GetSettings;

  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$_GetSettingsCopyWith<_$_GetSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteGeneralSettingsCopyWith<$Res>
    implements $VideoManagementEventCopyWith<$Res> {
  factory _$$_DeleteGeneralSettingsCopyWith(_$_DeleteGeneralSettings value,
          $Res Function(_$_DeleteGeneralSettings) then) =
      __$$_DeleteGeneralSettingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String settingsId, BuildContext context});
}

/// @nodoc
class __$$_DeleteGeneralSettingsCopyWithImpl<$Res>
    extends _$VideoManagementEventCopyWithImpl<$Res, _$_DeleteGeneralSettings>
    implements _$$_DeleteGeneralSettingsCopyWith<$Res> {
  __$$_DeleteGeneralSettingsCopyWithImpl(_$_DeleteGeneralSettings _value,
      $Res Function(_$_DeleteGeneralSettings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? settingsId = null,
    Object? context = null,
  }) {
    return _then(_$_DeleteGeneralSettings(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      settingsId: null == settingsId
          ? _value.settingsId
          : settingsId // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_DeleteGeneralSettings implements _DeleteGeneralSettings {
  const _$_DeleteGeneralSettings(
      {required this.userId, required this.settingsId, required this.context});

  @override
  final String userId;
  @override
  final String settingsId;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'VideoManagementEvent.deleteGeneralSettings(userId: $userId, settingsId: $settingsId, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteGeneralSettings &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.settingsId, settingsId) ||
                other.settingsId == settingsId) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, settingsId, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteGeneralSettingsCopyWith<_$_DeleteGeneralSettings> get copyWith =>
      __$$_DeleteGeneralSettingsCopyWithImpl<_$_DeleteGeneralSettings>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getSettings,
    required TResult Function(
            String userId, String settingsId, BuildContext context)
        deleteGeneralSettings,
  }) {
    return deleteGeneralSettings(userId, settingsId, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getSettings,
    TResult? Function(String userId, String settingsId, BuildContext context)?
        deleteGeneralSettings,
  }) {
    return deleteGeneralSettings?.call(userId, settingsId, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getSettings,
    TResult Function(String userId, String settingsId, BuildContext context)?
        deleteGeneralSettings,
    required TResult orElse(),
  }) {
    if (deleteGeneralSettings != null) {
      return deleteGeneralSettings(userId, settingsId, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSettings value) getSettings,
    required TResult Function(_DeleteGeneralSettings value)
        deleteGeneralSettings,
  }) {
    return deleteGeneralSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSettings value)? getSettings,
    TResult? Function(_DeleteGeneralSettings value)? deleteGeneralSettings,
  }) {
    return deleteGeneralSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSettings value)? getSettings,
    TResult Function(_DeleteGeneralSettings value)? deleteGeneralSettings,
    required TResult orElse(),
  }) {
    if (deleteGeneralSettings != null) {
      return deleteGeneralSettings(this);
    }
    return orElse();
  }
}

abstract class _DeleteGeneralSettings implements VideoManagementEvent {
  const factory _DeleteGeneralSettings(
      {required final String userId,
      required final String settingsId,
      required final BuildContext context}) = _$_DeleteGeneralSettings;

  @override
  String get userId;
  String get settingsId;
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteGeneralSettingsCopyWith<_$_DeleteGeneralSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VideoManagementState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  VideoManagementResponse? get response => throw _privateConstructorUsedError;
  CommonResponse? get deleteResponse => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoManagementStateCopyWith<VideoManagementState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoManagementStateCopyWith<$Res> {
  factory $VideoManagementStateCopyWith(VideoManagementState value,
          $Res Function(VideoManagementState) then) =
      _$VideoManagementStateCopyWithImpl<$Res, VideoManagementState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      VideoManagementResponse? response,
      CommonResponse? deleteResponse,
      String? error});
}

/// @nodoc
class _$VideoManagementStateCopyWithImpl<$Res,
        $Val extends VideoManagementState>
    implements $VideoManagementStateCopyWith<$Res> {
  _$VideoManagementStateCopyWithImpl(this._value, this._then);

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
    Object? deleteResponse = freezed,
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
              as VideoManagementResponse?,
      deleteResponse: freezed == deleteResponse
          ? _value.deleteResponse
          : deleteResponse // ignore: cast_nullable_to_non_nullable
              as CommonResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VideoManagementStateCopyWith<$Res>
    implements $VideoManagementStateCopyWith<$Res> {
  factory _$$_VideoManagementStateCopyWith(_$_VideoManagementState value,
          $Res Function(_$_VideoManagementState) then) =
      __$$_VideoManagementStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      VideoManagementResponse? response,
      CommonResponse? deleteResponse,
      String? error});
}

/// @nodoc
class __$$_VideoManagementStateCopyWithImpl<$Res>
    extends _$VideoManagementStateCopyWithImpl<$Res, _$_VideoManagementState>
    implements _$$_VideoManagementStateCopyWith<$Res> {
  __$$_VideoManagementStateCopyWithImpl(_$_VideoManagementState _value,
      $Res Function(_$_VideoManagementState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? response = freezed,
    Object? deleteResponse = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_VideoManagementState(
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
              as VideoManagementResponse?,
      deleteResponse: freezed == deleteResponse
          ? _value.deleteResponse
          : deleteResponse // ignore: cast_nullable_to_non_nullable
              as CommonResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_VideoManagementState implements _VideoManagementState {
  const _$_VideoManagementState(
      {required this.isLoading,
      required this.isError,
      required this.response,
      required this.deleteResponse,
      required this.error});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final VideoManagementResponse? response;
  @override
  final CommonResponse? deleteResponse;
  @override
  final String? error;

  @override
  String toString() {
    return 'VideoManagementState(isLoading: $isLoading, isError: $isError, response: $response, deleteResponse: $deleteResponse, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoManagementState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.deleteResponse, deleteResponse) ||
                other.deleteResponse == deleteResponse) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, isError, response, deleteResponse, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VideoManagementStateCopyWith<_$_VideoManagementState> get copyWith =>
      __$$_VideoManagementStateCopyWithImpl<_$_VideoManagementState>(
          this, _$identity);
}

abstract class _VideoManagementState implements VideoManagementState {
  const factory _VideoManagementState(
      {required final bool isLoading,
      required final bool isError,
      required final VideoManagementResponse? response,
      required final CommonResponse? deleteResponse,
      required final String? error}) = _$_VideoManagementState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  VideoManagementResponse? get response;
  @override
  CommonResponse? get deleteResponse;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_VideoManagementStateCopyWith<_$_VideoManagementState> get copyWith =>
      throw _privateConstructorUsedError;
}
