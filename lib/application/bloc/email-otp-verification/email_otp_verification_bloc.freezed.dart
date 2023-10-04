// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'email_otp_verification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmailOtpVerificationEvent {
  BuildContext get context => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, String userId, int type, String otp)
        verifyOtp,
    required TResult Function(
            BuildContext context, String userId, int type, String otp)
        verifyMobileOtp,
    required TResult Function(
            BuildContext context, String userId, String mobileNumber)
        generateOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context, String userId, int type, String otp)?
        verifyOtp,
    TResult? Function(
            BuildContext context, String userId, int type, String otp)?
        verifyMobileOtp,
    TResult? Function(BuildContext context, String userId, String mobileNumber)?
        generateOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String userId, int type, String otp)?
        verifyOtp,
    TResult Function(BuildContext context, String userId, int type, String otp)?
        verifyMobileOtp,
    TResult Function(BuildContext context, String userId, String mobileNumber)?
        generateOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_VerifyMobileOtp value) verifyMobileOtp,
    required TResult Function(_GenerateOtp value) generateOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_VerifyMobileOtp value)? verifyMobileOtp,
    TResult? Function(_GenerateOtp value)? generateOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_VerifyMobileOtp value)? verifyMobileOtp,
    TResult Function(_GenerateOtp value)? generateOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailOtpVerificationEventCopyWith<EmailOtpVerificationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailOtpVerificationEventCopyWith<$Res> {
  factory $EmailOtpVerificationEventCopyWith(EmailOtpVerificationEvent value,
          $Res Function(EmailOtpVerificationEvent) then) =
      _$EmailOtpVerificationEventCopyWithImpl<$Res, EmailOtpVerificationEvent>;
  @useResult
  $Res call({BuildContext context, String userId});
}

/// @nodoc
class _$EmailOtpVerificationEventCopyWithImpl<$Res,
        $Val extends EmailOtpVerificationEvent>
    implements $EmailOtpVerificationEventCopyWith<$Res> {
  _$EmailOtpVerificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VerifyOtpCopyWith<$Res>
    implements $EmailOtpVerificationEventCopyWith<$Res> {
  factory _$$_VerifyOtpCopyWith(
          _$_VerifyOtp value, $Res Function(_$_VerifyOtp) then) =
      __$$_VerifyOtpCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context, String userId, int type, String otp});
}

/// @nodoc
class __$$_VerifyOtpCopyWithImpl<$Res>
    extends _$EmailOtpVerificationEventCopyWithImpl<$Res, _$_VerifyOtp>
    implements _$$_VerifyOtpCopyWith<$Res> {
  __$$_VerifyOtpCopyWithImpl(
      _$_VerifyOtp _value, $Res Function(_$_VerifyOtp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? userId = null,
    Object? type = null,
    Object? otp = null,
  }) {
    return _then(_$_VerifyOtp(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VerifyOtp implements _VerifyOtp {
  const _$_VerifyOtp(
      {required this.context,
      required this.userId,
      required this.type,
      required this.otp});

  @override
  final BuildContext context;
  @override
  final String userId;
  @override
  final int type;
  @override
  final String otp;

  @override
  String toString() {
    return 'EmailOtpVerificationEvent.verifyOtp(context: $context, userId: $userId, type: $type, otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyOtp &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, userId, type, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifyOtpCopyWith<_$_VerifyOtp> get copyWith =>
      __$$_VerifyOtpCopyWithImpl<_$_VerifyOtp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, String userId, int type, String otp)
        verifyOtp,
    required TResult Function(
            BuildContext context, String userId, int type, String otp)
        verifyMobileOtp,
    required TResult Function(
            BuildContext context, String userId, String mobileNumber)
        generateOtp,
  }) {
    return verifyOtp(context, userId, type, otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context, String userId, int type, String otp)?
        verifyOtp,
    TResult? Function(
            BuildContext context, String userId, int type, String otp)?
        verifyMobileOtp,
    TResult? Function(BuildContext context, String userId, String mobileNumber)?
        generateOtp,
  }) {
    return verifyOtp?.call(context, userId, type, otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String userId, int type, String otp)?
        verifyOtp,
    TResult Function(BuildContext context, String userId, int type, String otp)?
        verifyMobileOtp,
    TResult Function(BuildContext context, String userId, String mobileNumber)?
        generateOtp,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(context, userId, type, otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_VerifyMobileOtp value) verifyMobileOtp,
    required TResult Function(_GenerateOtp value) generateOtp,
  }) {
    return verifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_VerifyMobileOtp value)? verifyMobileOtp,
    TResult? Function(_GenerateOtp value)? generateOtp,
  }) {
    return verifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_VerifyMobileOtp value)? verifyMobileOtp,
    TResult Function(_GenerateOtp value)? generateOtp,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(this);
    }
    return orElse();
  }
}

abstract class _VerifyOtp implements EmailOtpVerificationEvent {
  const factory _VerifyOtp(
      {required final BuildContext context,
      required final String userId,
      required final int type,
      required final String otp}) = _$_VerifyOtp;

  @override
  BuildContext get context;
  @override
  String get userId;
  int get type;
  String get otp;
  @override
  @JsonKey(ignore: true)
  _$$_VerifyOtpCopyWith<_$_VerifyOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VerifyMobileOtpCopyWith<$Res>
    implements $EmailOtpVerificationEventCopyWith<$Res> {
  factory _$$_VerifyMobileOtpCopyWith(
          _$_VerifyMobileOtp value, $Res Function(_$_VerifyMobileOtp) then) =
      __$$_VerifyMobileOtpCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context, String userId, int type, String otp});
}

/// @nodoc
class __$$_VerifyMobileOtpCopyWithImpl<$Res>
    extends _$EmailOtpVerificationEventCopyWithImpl<$Res, _$_VerifyMobileOtp>
    implements _$$_VerifyMobileOtpCopyWith<$Res> {
  __$$_VerifyMobileOtpCopyWithImpl(
      _$_VerifyMobileOtp _value, $Res Function(_$_VerifyMobileOtp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? userId = null,
    Object? type = null,
    Object? otp = null,
  }) {
    return _then(_$_VerifyMobileOtp(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VerifyMobileOtp implements _VerifyMobileOtp {
  const _$_VerifyMobileOtp(
      {required this.context,
      required this.userId,
      required this.type,
      required this.otp});

  @override
  final BuildContext context;
  @override
  final String userId;
  @override
  final int type;
  @override
  final String otp;

  @override
  String toString() {
    return 'EmailOtpVerificationEvent.verifyMobileOtp(context: $context, userId: $userId, type: $type, otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyMobileOtp &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, userId, type, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifyMobileOtpCopyWith<_$_VerifyMobileOtp> get copyWith =>
      __$$_VerifyMobileOtpCopyWithImpl<_$_VerifyMobileOtp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, String userId, int type, String otp)
        verifyOtp,
    required TResult Function(
            BuildContext context, String userId, int type, String otp)
        verifyMobileOtp,
    required TResult Function(
            BuildContext context, String userId, String mobileNumber)
        generateOtp,
  }) {
    return verifyMobileOtp(context, userId, type, otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context, String userId, int type, String otp)?
        verifyOtp,
    TResult? Function(
            BuildContext context, String userId, int type, String otp)?
        verifyMobileOtp,
    TResult? Function(BuildContext context, String userId, String mobileNumber)?
        generateOtp,
  }) {
    return verifyMobileOtp?.call(context, userId, type, otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String userId, int type, String otp)?
        verifyOtp,
    TResult Function(BuildContext context, String userId, int type, String otp)?
        verifyMobileOtp,
    TResult Function(BuildContext context, String userId, String mobileNumber)?
        generateOtp,
    required TResult orElse(),
  }) {
    if (verifyMobileOtp != null) {
      return verifyMobileOtp(context, userId, type, otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_VerifyMobileOtp value) verifyMobileOtp,
    required TResult Function(_GenerateOtp value) generateOtp,
  }) {
    return verifyMobileOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_VerifyMobileOtp value)? verifyMobileOtp,
    TResult? Function(_GenerateOtp value)? generateOtp,
  }) {
    return verifyMobileOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_VerifyMobileOtp value)? verifyMobileOtp,
    TResult Function(_GenerateOtp value)? generateOtp,
    required TResult orElse(),
  }) {
    if (verifyMobileOtp != null) {
      return verifyMobileOtp(this);
    }
    return orElse();
  }
}

abstract class _VerifyMobileOtp implements EmailOtpVerificationEvent {
  const factory _VerifyMobileOtp(
      {required final BuildContext context,
      required final String userId,
      required final int type,
      required final String otp}) = _$_VerifyMobileOtp;

  @override
  BuildContext get context;
  @override
  String get userId;
  int get type;
  String get otp;
  @override
  @JsonKey(ignore: true)
  _$$_VerifyMobileOtpCopyWith<_$_VerifyMobileOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GenerateOtpCopyWith<$Res>
    implements $EmailOtpVerificationEventCopyWith<$Res> {
  factory _$$_GenerateOtpCopyWith(
          _$_GenerateOtp value, $Res Function(_$_GenerateOtp) then) =
      __$$_GenerateOtpCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context, String userId, String mobileNumber});
}

/// @nodoc
class __$$_GenerateOtpCopyWithImpl<$Res>
    extends _$EmailOtpVerificationEventCopyWithImpl<$Res, _$_GenerateOtp>
    implements _$$_GenerateOtpCopyWith<$Res> {
  __$$_GenerateOtpCopyWithImpl(
      _$_GenerateOtp _value, $Res Function(_$_GenerateOtp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? userId = null,
    Object? mobileNumber = null,
  }) {
    return _then(_$_GenerateOtp(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GenerateOtp implements _GenerateOtp {
  const _$_GenerateOtp(
      {required this.context,
      required this.userId,
      required this.mobileNumber});

  @override
  final BuildContext context;
  @override
  final String userId;
  @override
  final String mobileNumber;

  @override
  String toString() {
    return 'EmailOtpVerificationEvent.generateOtp(context: $context, userId: $userId, mobileNumber: $mobileNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenerateOtp &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, userId, mobileNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenerateOtpCopyWith<_$_GenerateOtp> get copyWith =>
      __$$_GenerateOtpCopyWithImpl<_$_GenerateOtp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, String userId, int type, String otp)
        verifyOtp,
    required TResult Function(
            BuildContext context, String userId, int type, String otp)
        verifyMobileOtp,
    required TResult Function(
            BuildContext context, String userId, String mobileNumber)
        generateOtp,
  }) {
    return generateOtp(context, userId, mobileNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context, String userId, int type, String otp)?
        verifyOtp,
    TResult? Function(
            BuildContext context, String userId, int type, String otp)?
        verifyMobileOtp,
    TResult? Function(BuildContext context, String userId, String mobileNumber)?
        generateOtp,
  }) {
    return generateOtp?.call(context, userId, mobileNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String userId, int type, String otp)?
        verifyOtp,
    TResult Function(BuildContext context, String userId, int type, String otp)?
        verifyMobileOtp,
    TResult Function(BuildContext context, String userId, String mobileNumber)?
        generateOtp,
    required TResult orElse(),
  }) {
    if (generateOtp != null) {
      return generateOtp(context, userId, mobileNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_VerifyMobileOtp value) verifyMobileOtp,
    required TResult Function(_GenerateOtp value) generateOtp,
  }) {
    return generateOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_VerifyMobileOtp value)? verifyMobileOtp,
    TResult? Function(_GenerateOtp value)? generateOtp,
  }) {
    return generateOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_VerifyMobileOtp value)? verifyMobileOtp,
    TResult Function(_GenerateOtp value)? generateOtp,
    required TResult orElse(),
  }) {
    if (generateOtp != null) {
      return generateOtp(this);
    }
    return orElse();
  }
}

abstract class _GenerateOtp implements EmailOtpVerificationEvent {
  const factory _GenerateOtp(
      {required final BuildContext context,
      required final String userId,
      required final String mobileNumber}) = _$_GenerateOtp;

  @override
  BuildContext get context;
  @override
  String get userId;
  String get mobileNumber;
  @override
  @JsonKey(ignore: true)
  _$$_GenerateOtpCopyWith<_$_GenerateOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EmailOtpVerificationState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  VerifyOtpResponse? get verifyOtpResponse =>
      throw _privateConstructorUsedError;
  GenerateOtpResponse? get generateOtpResponse =>
      throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool? get isMobileOtpVerified => throw _privateConstructorUsedError;
  bool get isClientError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailOtpVerificationStateCopyWith<EmailOtpVerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailOtpVerificationStateCopyWith<$Res> {
  factory $EmailOtpVerificationStateCopyWith(EmailOtpVerificationState value,
          $Res Function(EmailOtpVerificationState) then) =
      _$EmailOtpVerificationStateCopyWithImpl<$Res, EmailOtpVerificationState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      VerifyOtpResponse? verifyOtpResponse,
      GenerateOtpResponse? generateOtpResponse,
      String? error,
      bool? isMobileOtpVerified,
      bool isClientError});
}

/// @nodoc
class _$EmailOtpVerificationStateCopyWithImpl<$Res,
        $Val extends EmailOtpVerificationState>
    implements $EmailOtpVerificationStateCopyWith<$Res> {
  _$EmailOtpVerificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? verifyOtpResponse = freezed,
    Object? generateOtpResponse = freezed,
    Object? error = freezed,
    Object? isMobileOtpVerified = freezed,
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
      verifyOtpResponse: freezed == verifyOtpResponse
          ? _value.verifyOtpResponse
          : verifyOtpResponse // ignore: cast_nullable_to_non_nullable
              as VerifyOtpResponse?,
      generateOtpResponse: freezed == generateOtpResponse
          ? _value.generateOtpResponse
          : generateOtpResponse // ignore: cast_nullable_to_non_nullable
              as GenerateOtpResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isMobileOtpVerified: freezed == isMobileOtpVerified
          ? _value.isMobileOtpVerified
          : isMobileOtpVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      isClientError: null == isClientError
          ? _value.isClientError
          : isClientError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmailOtpVerificationStateCopyWith<$Res>
    implements $EmailOtpVerificationStateCopyWith<$Res> {
  factory _$$_EmailOtpVerificationStateCopyWith(
          _$_EmailOtpVerificationState value,
          $Res Function(_$_EmailOtpVerificationState) then) =
      __$$_EmailOtpVerificationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      VerifyOtpResponse? verifyOtpResponse,
      GenerateOtpResponse? generateOtpResponse,
      String? error,
      bool? isMobileOtpVerified,
      bool isClientError});
}

/// @nodoc
class __$$_EmailOtpVerificationStateCopyWithImpl<$Res>
    extends _$EmailOtpVerificationStateCopyWithImpl<$Res,
        _$_EmailOtpVerificationState>
    implements _$$_EmailOtpVerificationStateCopyWith<$Res> {
  __$$_EmailOtpVerificationStateCopyWithImpl(
      _$_EmailOtpVerificationState _value,
      $Res Function(_$_EmailOtpVerificationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? verifyOtpResponse = freezed,
    Object? generateOtpResponse = freezed,
    Object? error = freezed,
    Object? isMobileOtpVerified = freezed,
    Object? isClientError = null,
  }) {
    return _then(_$_EmailOtpVerificationState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      verifyOtpResponse: freezed == verifyOtpResponse
          ? _value.verifyOtpResponse
          : verifyOtpResponse // ignore: cast_nullable_to_non_nullable
              as VerifyOtpResponse?,
      generateOtpResponse: freezed == generateOtpResponse
          ? _value.generateOtpResponse
          : generateOtpResponse // ignore: cast_nullable_to_non_nullable
              as GenerateOtpResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isMobileOtpVerified: freezed == isMobileOtpVerified
          ? _value.isMobileOtpVerified
          : isMobileOtpVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      isClientError: null == isClientError
          ? _value.isClientError
          : isClientError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EmailOtpVerificationState implements _EmailOtpVerificationState {
  const _$_EmailOtpVerificationState(
      {required this.isLoading,
      required this.isError,
      required this.verifyOtpResponse,
      required this.generateOtpResponse,
      required this.error,
      required this.isMobileOtpVerified,
      this.isClientError = false});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final VerifyOtpResponse? verifyOtpResponse;
  @override
  final GenerateOtpResponse? generateOtpResponse;
  @override
  final String? error;
  @override
  final bool? isMobileOtpVerified;
  @override
  @JsonKey()
  final bool isClientError;

  @override
  String toString() {
    return 'EmailOtpVerificationState(isLoading: $isLoading, isError: $isError, verifyOtpResponse: $verifyOtpResponse, generateOtpResponse: $generateOtpResponse, error: $error, isMobileOtpVerified: $isMobileOtpVerified, isClientError: $isClientError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailOtpVerificationState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.verifyOtpResponse, verifyOtpResponse) ||
                other.verifyOtpResponse == verifyOtpResponse) &&
            (identical(other.generateOtpResponse, generateOtpResponse) ||
                other.generateOtpResponse == generateOtpResponse) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isMobileOtpVerified, isMobileOtpVerified) ||
                other.isMobileOtpVerified == isMobileOtpVerified) &&
            (identical(other.isClientError, isClientError) ||
                other.isClientError == isClientError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isError,
      verifyOtpResponse,
      generateOtpResponse,
      error,
      isMobileOtpVerified,
      isClientError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailOtpVerificationStateCopyWith<_$_EmailOtpVerificationState>
      get copyWith => __$$_EmailOtpVerificationStateCopyWithImpl<
          _$_EmailOtpVerificationState>(this, _$identity);
}

abstract class _EmailOtpVerificationState implements EmailOtpVerificationState {
  const factory _EmailOtpVerificationState(
      {required final bool isLoading,
      required final bool isError,
      required final VerifyOtpResponse? verifyOtpResponse,
      required final GenerateOtpResponse? generateOtpResponse,
      required final String? error,
      required final bool? isMobileOtpVerified,
      final bool isClientError}) = _$_EmailOtpVerificationState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  VerifyOtpResponse? get verifyOtpResponse;
  @override
  GenerateOtpResponse? get generateOtpResponse;
  @override
  String? get error;
  @override
  bool? get isMobileOtpVerified;
  @override
  bool get isClientError;
  @override
  @JsonKey(ignore: true)
  _$$_EmailOtpVerificationStateCopyWith<_$_EmailOtpVerificationState>
      get copyWith => throw _privateConstructorUsedError;
}
