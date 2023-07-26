// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'caregiver_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CareGiverProfileEvent {
  String get userId => throw _privateConstructorUsedError;
  String get adminId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId)
        getCareGiverProfile,
    required TResult Function(
            String userId, String adminId, bool status, BuildContext context)
        careGiverTrainingVerify,
    required TResult Function(
            String userId, String adminId, bool status, BuildContext context)
        careGiverInterViewVerify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getCareGiverProfile,
    TResult? Function(
            String userId, String adminId, bool status, BuildContext context)?
        careGiverTrainingVerify,
    TResult? Function(
            String userId, String adminId, bool status, BuildContext context)?
        careGiverInterViewVerify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getCareGiverProfile,
    TResult Function(
            String userId, String adminId, bool status, BuildContext context)?
        careGiverTrainingVerify,
    TResult Function(
            String userId, String adminId, bool status, BuildContext context)?
        careGiverInterViewVerify,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverProfile value) getCareGiverProfile,
    required TResult Function(_CareGiverTrainingVerify value)
        careGiverTrainingVerify,
    required TResult Function(_CareGiverInterViewVerify value)
        careGiverInterViewVerify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult? Function(_CareGiverTrainingVerify value)? careGiverTrainingVerify,
    TResult? Function(_CareGiverInterViewVerify value)?
        careGiverInterViewVerify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult Function(_CareGiverTrainingVerify value)? careGiverTrainingVerify,
    TResult Function(_CareGiverInterViewVerify value)? careGiverInterViewVerify,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CareGiverProfileEventCopyWith<CareGiverProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CareGiverProfileEventCopyWith<$Res> {
  factory $CareGiverProfileEventCopyWith(CareGiverProfileEvent value,
          $Res Function(CareGiverProfileEvent) then) =
      _$CareGiverProfileEventCopyWithImpl<$Res, CareGiverProfileEvent>;
  @useResult
  $Res call({String userId, String adminId});
}

/// @nodoc
class _$CareGiverProfileEventCopyWithImpl<$Res,
        $Val extends CareGiverProfileEvent>
    implements $CareGiverProfileEventCopyWith<$Res> {
  _$CareGiverProfileEventCopyWithImpl(this._value, this._then);

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
abstract class _$$_GetCareGiverProfileCopyWith<$Res>
    implements $CareGiverProfileEventCopyWith<$Res> {
  factory _$$_GetCareGiverProfileCopyWith(_$_GetCareGiverProfile value,
          $Res Function(_$_GetCareGiverProfile) then) =
      __$$_GetCareGiverProfileCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String adminId});
}

/// @nodoc
class __$$_GetCareGiverProfileCopyWithImpl<$Res>
    extends _$CareGiverProfileEventCopyWithImpl<$Res, _$_GetCareGiverProfile>
    implements _$$_GetCareGiverProfileCopyWith<$Res> {
  __$$_GetCareGiverProfileCopyWithImpl(_$_GetCareGiverProfile _value,
      $Res Function(_$_GetCareGiverProfile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? adminId = null,
  }) {
    return _then(_$_GetCareGiverProfile(
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

class _$_GetCareGiverProfile implements _GetCareGiverProfile {
  const _$_GetCareGiverProfile({required this.userId, required this.adminId});

  @override
  final String userId;
  @override
  final String adminId;

  @override
  String toString() {
    return 'CareGiverProfileEvent.getCareGiverProfile(userId: $userId, adminId: $adminId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCareGiverProfile &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.adminId, adminId) || other.adminId == adminId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, adminId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCareGiverProfileCopyWith<_$_GetCareGiverProfile> get copyWith =>
      __$$_GetCareGiverProfileCopyWithImpl<_$_GetCareGiverProfile>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId)
        getCareGiverProfile,
    required TResult Function(
            String userId, String adminId, bool status, BuildContext context)
        careGiverTrainingVerify,
    required TResult Function(
            String userId, String adminId, bool status, BuildContext context)
        careGiverInterViewVerify,
  }) {
    return getCareGiverProfile(userId, adminId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getCareGiverProfile,
    TResult? Function(
            String userId, String adminId, bool status, BuildContext context)?
        careGiverTrainingVerify,
    TResult? Function(
            String userId, String adminId, bool status, BuildContext context)?
        careGiverInterViewVerify,
  }) {
    return getCareGiverProfile?.call(userId, adminId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getCareGiverProfile,
    TResult Function(
            String userId, String adminId, bool status, BuildContext context)?
        careGiverTrainingVerify,
    TResult Function(
            String userId, String adminId, bool status, BuildContext context)?
        careGiverInterViewVerify,
    required TResult orElse(),
  }) {
    if (getCareGiverProfile != null) {
      return getCareGiverProfile(userId, adminId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverProfile value) getCareGiverProfile,
    required TResult Function(_CareGiverTrainingVerify value)
        careGiverTrainingVerify,
    required TResult Function(_CareGiverInterViewVerify value)
        careGiverInterViewVerify,
  }) {
    return getCareGiverProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult? Function(_CareGiverTrainingVerify value)? careGiverTrainingVerify,
    TResult? Function(_CareGiverInterViewVerify value)?
        careGiverInterViewVerify,
  }) {
    return getCareGiverProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult Function(_CareGiverTrainingVerify value)? careGiverTrainingVerify,
    TResult Function(_CareGiverInterViewVerify value)? careGiverInterViewVerify,
    required TResult orElse(),
  }) {
    if (getCareGiverProfile != null) {
      return getCareGiverProfile(this);
    }
    return orElse();
  }
}

abstract class _GetCareGiverProfile implements CareGiverProfileEvent {
  const factory _GetCareGiverProfile(
      {required final String userId,
      required final String adminId}) = _$_GetCareGiverProfile;

  @override
  String get userId;
  @override
  String get adminId;
  @override
  @JsonKey(ignore: true)
  _$$_GetCareGiverProfileCopyWith<_$_GetCareGiverProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CareGiverTrainingVerifyCopyWith<$Res>
    implements $CareGiverProfileEventCopyWith<$Res> {
  factory _$$_CareGiverTrainingVerifyCopyWith(_$_CareGiverTrainingVerify value,
          $Res Function(_$_CareGiverTrainingVerify) then) =
      __$$_CareGiverTrainingVerifyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String adminId, bool status, BuildContext context});
}

/// @nodoc
class __$$_CareGiverTrainingVerifyCopyWithImpl<$Res>
    extends _$CareGiverProfileEventCopyWithImpl<$Res,
        _$_CareGiverTrainingVerify>
    implements _$$_CareGiverTrainingVerifyCopyWith<$Res> {
  __$$_CareGiverTrainingVerifyCopyWithImpl(_$_CareGiverTrainingVerify _value,
      $Res Function(_$_CareGiverTrainingVerify) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? adminId = null,
    Object? status = null,
    Object? context = null,
  }) {
    return _then(_$_CareGiverTrainingVerify(
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

class _$_CareGiverTrainingVerify implements _CareGiverTrainingVerify {
  const _$_CareGiverTrainingVerify(
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
    return 'CareGiverProfileEvent.careGiverTrainingVerify(userId: $userId, adminId: $adminId, status: $status, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CareGiverTrainingVerify &&
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
  _$$_CareGiverTrainingVerifyCopyWith<_$_CareGiverTrainingVerify>
      get copyWith =>
          __$$_CareGiverTrainingVerifyCopyWithImpl<_$_CareGiverTrainingVerify>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId)
        getCareGiverProfile,
    required TResult Function(
            String userId, String adminId, bool status, BuildContext context)
        careGiverTrainingVerify,
    required TResult Function(
            String userId, String adminId, bool status, BuildContext context)
        careGiverInterViewVerify,
  }) {
    return careGiverTrainingVerify(userId, adminId, status, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getCareGiverProfile,
    TResult? Function(
            String userId, String adminId, bool status, BuildContext context)?
        careGiverTrainingVerify,
    TResult? Function(
            String userId, String adminId, bool status, BuildContext context)?
        careGiverInterViewVerify,
  }) {
    return careGiverTrainingVerify?.call(userId, adminId, status, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getCareGiverProfile,
    TResult Function(
            String userId, String adminId, bool status, BuildContext context)?
        careGiverTrainingVerify,
    TResult Function(
            String userId, String adminId, bool status, BuildContext context)?
        careGiverInterViewVerify,
    required TResult orElse(),
  }) {
    if (careGiverTrainingVerify != null) {
      return careGiverTrainingVerify(userId, adminId, status, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverProfile value) getCareGiverProfile,
    required TResult Function(_CareGiverTrainingVerify value)
        careGiverTrainingVerify,
    required TResult Function(_CareGiverInterViewVerify value)
        careGiverInterViewVerify,
  }) {
    return careGiverTrainingVerify(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult? Function(_CareGiverTrainingVerify value)? careGiverTrainingVerify,
    TResult? Function(_CareGiverInterViewVerify value)?
        careGiverInterViewVerify,
  }) {
    return careGiverTrainingVerify?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult Function(_CareGiverTrainingVerify value)? careGiverTrainingVerify,
    TResult Function(_CareGiverInterViewVerify value)? careGiverInterViewVerify,
    required TResult orElse(),
  }) {
    if (careGiverTrainingVerify != null) {
      return careGiverTrainingVerify(this);
    }
    return orElse();
  }
}

abstract class _CareGiverTrainingVerify implements CareGiverProfileEvent {
  const factory _CareGiverTrainingVerify(
      {required final String userId,
      required final String adminId,
      required final bool status,
      required final BuildContext context}) = _$_CareGiverTrainingVerify;

  @override
  String get userId;
  @override
  String get adminId;
  bool get status;
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$_CareGiverTrainingVerifyCopyWith<_$_CareGiverTrainingVerify>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CareGiverInterViewVerifyCopyWith<$Res>
    implements $CareGiverProfileEventCopyWith<$Res> {
  factory _$$_CareGiverInterViewVerifyCopyWith(
          _$_CareGiverInterViewVerify value,
          $Res Function(_$_CareGiverInterViewVerify) then) =
      __$$_CareGiverInterViewVerifyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String adminId, bool status, BuildContext context});
}

/// @nodoc
class __$$_CareGiverInterViewVerifyCopyWithImpl<$Res>
    extends _$CareGiverProfileEventCopyWithImpl<$Res,
        _$_CareGiverInterViewVerify>
    implements _$$_CareGiverInterViewVerifyCopyWith<$Res> {
  __$$_CareGiverInterViewVerifyCopyWithImpl(_$_CareGiverInterViewVerify _value,
      $Res Function(_$_CareGiverInterViewVerify) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? adminId = null,
    Object? status = null,
    Object? context = null,
  }) {
    return _then(_$_CareGiverInterViewVerify(
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

class _$_CareGiverInterViewVerify implements _CareGiverInterViewVerify {
  const _$_CareGiverInterViewVerify(
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
    return 'CareGiverProfileEvent.careGiverInterViewVerify(userId: $userId, adminId: $adminId, status: $status, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CareGiverInterViewVerify &&
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
  _$$_CareGiverInterViewVerifyCopyWith<_$_CareGiverInterViewVerify>
      get copyWith => __$$_CareGiverInterViewVerifyCopyWithImpl<
          _$_CareGiverInterViewVerify>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String adminId)
        getCareGiverProfile,
    required TResult Function(
            String userId, String adminId, bool status, BuildContext context)
        careGiverTrainingVerify,
    required TResult Function(
            String userId, String adminId, bool status, BuildContext context)
        careGiverInterViewVerify,
  }) {
    return careGiverInterViewVerify(userId, adminId, status, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String adminId)? getCareGiverProfile,
    TResult? Function(
            String userId, String adminId, bool status, BuildContext context)?
        careGiverTrainingVerify,
    TResult? Function(
            String userId, String adminId, bool status, BuildContext context)?
        careGiverInterViewVerify,
  }) {
    return careGiverInterViewVerify?.call(userId, adminId, status, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String adminId)? getCareGiverProfile,
    TResult Function(
            String userId, String adminId, bool status, BuildContext context)?
        careGiverTrainingVerify,
    TResult Function(
            String userId, String adminId, bool status, BuildContext context)?
        careGiverInterViewVerify,
    required TResult orElse(),
  }) {
    if (careGiverInterViewVerify != null) {
      return careGiverInterViewVerify(userId, adminId, status, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCareGiverProfile value) getCareGiverProfile,
    required TResult Function(_CareGiverTrainingVerify value)
        careGiverTrainingVerify,
    required TResult Function(_CareGiverInterViewVerify value)
        careGiverInterViewVerify,
  }) {
    return careGiverInterViewVerify(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult? Function(_CareGiverTrainingVerify value)? careGiverTrainingVerify,
    TResult? Function(_CareGiverInterViewVerify value)?
        careGiverInterViewVerify,
  }) {
    return careGiverInterViewVerify?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCareGiverProfile value)? getCareGiverProfile,
    TResult Function(_CareGiverTrainingVerify value)? careGiverTrainingVerify,
    TResult Function(_CareGiverInterViewVerify value)? careGiverInterViewVerify,
    required TResult orElse(),
  }) {
    if (careGiverInterViewVerify != null) {
      return careGiverInterViewVerify(this);
    }
    return orElse();
  }
}

abstract class _CareGiverInterViewVerify implements CareGiverProfileEvent {
  const factory _CareGiverInterViewVerify(
      {required final String userId,
      required final String adminId,
      required final bool status,
      required final BuildContext context}) = _$_CareGiverInterViewVerify;

  @override
  String get userId;
  @override
  String get adminId;
  bool get status;
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$_CareGiverInterViewVerifyCopyWith<_$_CareGiverInterViewVerify>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CareGiverProfileState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  CaregiverProfileResponse? get response => throw _privateConstructorUsedError;
  VerifyResponse? get trainingVerifyResponse =>
      throw _privateConstructorUsedError;
  VerifyResponse? get interViewVerifyResponse =>
      throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get isClientError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CareGiverProfileStateCopyWith<CareGiverProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CareGiverProfileStateCopyWith<$Res> {
  factory $CareGiverProfileStateCopyWith(CareGiverProfileState value,
          $Res Function(CareGiverProfileState) then) =
      _$CareGiverProfileStateCopyWithImpl<$Res, CareGiverProfileState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      CaregiverProfileResponse? response,
      VerifyResponse? trainingVerifyResponse,
      VerifyResponse? interViewVerifyResponse,
      String? error,
      bool isClientError});
}

/// @nodoc
class _$CareGiverProfileStateCopyWithImpl<$Res,
        $Val extends CareGiverProfileState>
    implements $CareGiverProfileStateCopyWith<$Res> {
  _$CareGiverProfileStateCopyWithImpl(this._value, this._then);

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
    Object? trainingVerifyResponse = freezed,
    Object? interViewVerifyResponse = freezed,
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
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as CaregiverProfileResponse?,
      trainingVerifyResponse: freezed == trainingVerifyResponse
          ? _value.trainingVerifyResponse
          : trainingVerifyResponse // ignore: cast_nullable_to_non_nullable
              as VerifyResponse?,
      interViewVerifyResponse: freezed == interViewVerifyResponse
          ? _value.interViewVerifyResponse
          : interViewVerifyResponse // ignore: cast_nullable_to_non_nullable
              as VerifyResponse?,
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
abstract class _$$_CareGiverProfileStateCopyWith<$Res>
    implements $CareGiverProfileStateCopyWith<$Res> {
  factory _$$_CareGiverProfileStateCopyWith(_$_CareGiverProfileState value,
          $Res Function(_$_CareGiverProfileState) then) =
      __$$_CareGiverProfileStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      CaregiverProfileResponse? response,
      VerifyResponse? trainingVerifyResponse,
      VerifyResponse? interViewVerifyResponse,
      String? error,
      bool isClientError});
}

/// @nodoc
class __$$_CareGiverProfileStateCopyWithImpl<$Res>
    extends _$CareGiverProfileStateCopyWithImpl<$Res, _$_CareGiverProfileState>
    implements _$$_CareGiverProfileStateCopyWith<$Res> {
  __$$_CareGiverProfileStateCopyWithImpl(_$_CareGiverProfileState _value,
      $Res Function(_$_CareGiverProfileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? response = freezed,
    Object? trainingVerifyResponse = freezed,
    Object? interViewVerifyResponse = freezed,
    Object? error = freezed,
    Object? isClientError = null,
  }) {
    return _then(_$_CareGiverProfileState(
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
              as CaregiverProfileResponse?,
      trainingVerifyResponse: freezed == trainingVerifyResponse
          ? _value.trainingVerifyResponse
          : trainingVerifyResponse // ignore: cast_nullable_to_non_nullable
              as VerifyResponse?,
      interViewVerifyResponse: freezed == interViewVerifyResponse
          ? _value.interViewVerifyResponse
          : interViewVerifyResponse // ignore: cast_nullable_to_non_nullable
              as VerifyResponse?,
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

class _$_CareGiverProfileState implements _CareGiverProfileState {
  const _$_CareGiverProfileState(
      {required this.isLoading,
      required this.isError,
      required this.response,
      required this.trainingVerifyResponse,
      required this.interViewVerifyResponse,
      required this.error,
      this.isClientError = false});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final CaregiverProfileResponse? response;
  @override
  final VerifyResponse? trainingVerifyResponse;
  @override
  final VerifyResponse? interViewVerifyResponse;
  @override
  final String? error;
  @override
  @JsonKey()
  final bool isClientError;

  @override
  String toString() {
    return 'CareGiverProfileState(isLoading: $isLoading, isError: $isError, response: $response, trainingVerifyResponse: $trainingVerifyResponse, interViewVerifyResponse: $interViewVerifyResponse, error: $error, isClientError: $isClientError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CareGiverProfileState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.trainingVerifyResponse, trainingVerifyResponse) ||
                other.trainingVerifyResponse == trainingVerifyResponse) &&
            (identical(
                    other.interViewVerifyResponse, interViewVerifyResponse) ||
                other.interViewVerifyResponse == interViewVerifyResponse) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isClientError, isClientError) ||
                other.isClientError == isClientError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError, response,
      trainingVerifyResponse, interViewVerifyResponse, error, isClientError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CareGiverProfileStateCopyWith<_$_CareGiverProfileState> get copyWith =>
      __$$_CareGiverProfileStateCopyWithImpl<_$_CareGiverProfileState>(
          this, _$identity);
}

abstract class _CareGiverProfileState implements CareGiverProfileState {
  const factory _CareGiverProfileState(
      {required final bool isLoading,
      required final bool isError,
      required final CaregiverProfileResponse? response,
      required final VerifyResponse? trainingVerifyResponse,
      required final VerifyResponse? interViewVerifyResponse,
      required final String? error,
      final bool isClientError}) = _$_CareGiverProfileState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  CaregiverProfileResponse? get response;
  @override
  VerifyResponse? get trainingVerifyResponse;
  @override
  VerifyResponse? get interViewVerifyResponse;
  @override
  String? get error;
  @override
  bool get isClientError;
  @override
  @JsonKey(ignore: true)
  _$$_CareGiverProfileStateCopyWith<_$_CareGiverProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
