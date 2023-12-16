// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_email_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VerifyEmailEvent {
  BuildContext get context => throw _privateConstructorUsedError;
  String get otp => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, String otp, String userId, int type)
        verifyEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context, String otp, String userId, int type)?
        verifyEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String otp, String userId, int type)?
        verifyEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyEmailEvent value) verifyEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VerifyEmailEvent value)? verifyEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyEmailEvent value)? verifyEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerifyEmailEventCopyWith<VerifyEmailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyEmailEventCopyWith<$Res> {
  factory $VerifyEmailEventCopyWith(
          VerifyEmailEvent value, $Res Function(VerifyEmailEvent) then) =
      _$VerifyEmailEventCopyWithImpl<$Res, VerifyEmailEvent>;
  @useResult
  $Res call({BuildContext context, String otp, String userId, int type});
}

/// @nodoc
class _$VerifyEmailEventCopyWithImpl<$Res, $Val extends VerifyEmailEvent>
    implements $VerifyEmailEventCopyWith<$Res> {
  _$VerifyEmailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? otp = null,
    Object? userId = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VerifyEmailEventCopyWith<$Res>
    implements $VerifyEmailEventCopyWith<$Res> {
  factory _$$_VerifyEmailEventCopyWith(
          _$_VerifyEmailEvent value, $Res Function(_$_VerifyEmailEvent) then) =
      __$$_VerifyEmailEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context, String otp, String userId, int type});
}

/// @nodoc
class __$$_VerifyEmailEventCopyWithImpl<$Res>
    extends _$VerifyEmailEventCopyWithImpl<$Res, _$_VerifyEmailEvent>
    implements _$$_VerifyEmailEventCopyWith<$Res> {
  __$$_VerifyEmailEventCopyWithImpl(
      _$_VerifyEmailEvent _value, $Res Function(_$_VerifyEmailEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? otp = null,
    Object? userId = null,
    Object? type = null,
  }) {
    return _then(_$_VerifyEmailEvent(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_VerifyEmailEvent implements _VerifyEmailEvent {
  const _$_VerifyEmailEvent(
      {required this.context,
      required this.otp,
      required this.userId,
      required this.type});

  @override
  final BuildContext context;
  @override
  final String otp;
  @override
  final String userId;
  @override
  final int type;

  @override
  String toString() {
    return 'VerifyEmailEvent.verifyEmail(context: $context, otp: $otp, userId: $userId, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyEmailEvent &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, otp, userId, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifyEmailEventCopyWith<_$_VerifyEmailEvent> get copyWith =>
      __$$_VerifyEmailEventCopyWithImpl<_$_VerifyEmailEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, String otp, String userId, int type)
        verifyEmail,
  }) {
    return verifyEmail(context, otp, userId, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            BuildContext context, String otp, String userId, int type)?
        verifyEmail,
  }) {
    return verifyEmail?.call(context, otp, userId, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String otp, String userId, int type)?
        verifyEmail,
    required TResult orElse(),
  }) {
    if (verifyEmail != null) {
      return verifyEmail(context, otp, userId, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyEmailEvent value) verifyEmail,
  }) {
    return verifyEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VerifyEmailEvent value)? verifyEmail,
  }) {
    return verifyEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyEmailEvent value)? verifyEmail,
    required TResult orElse(),
  }) {
    if (verifyEmail != null) {
      return verifyEmail(this);
    }
    return orElse();
  }
}

abstract class _VerifyEmailEvent implements VerifyEmailEvent {
  const factory _VerifyEmailEvent(
      {required final BuildContext context,
      required final String otp,
      required final String userId,
      required final int type}) = _$_VerifyEmailEvent;

  @override
  BuildContext get context;
  @override
  String get otp;
  @override
  String get userId;
  @override
  int get type;
  @override
  @JsonKey(ignore: true)
  _$$_VerifyEmailEventCopyWith<_$_VerifyEmailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VerifyEmailState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  CommonResponse? get response => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get isClientError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerifyEmailStateCopyWith<VerifyEmailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyEmailStateCopyWith<$Res> {
  factory $VerifyEmailStateCopyWith(
          VerifyEmailState value, $Res Function(VerifyEmailState) then) =
      _$VerifyEmailStateCopyWithImpl<$Res, VerifyEmailState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      CommonResponse? response,
      String? error,
      bool isClientError});
}

/// @nodoc
class _$VerifyEmailStateCopyWithImpl<$Res, $Val extends VerifyEmailState>
    implements $VerifyEmailStateCopyWith<$Res> {
  _$VerifyEmailStateCopyWithImpl(this._value, this._then);

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
              as CommonResponse?,
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
abstract class _$$_VerifyEmailStateCopyWith<$Res>
    implements $VerifyEmailStateCopyWith<$Res> {
  factory _$$_VerifyEmailStateCopyWith(
          _$_VerifyEmailState value, $Res Function(_$_VerifyEmailState) then) =
      __$$_VerifyEmailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      CommonResponse? response,
      String? error,
      bool isClientError});
}

/// @nodoc
class __$$_VerifyEmailStateCopyWithImpl<$Res>
    extends _$VerifyEmailStateCopyWithImpl<$Res, _$_VerifyEmailState>
    implements _$$_VerifyEmailStateCopyWith<$Res> {
  __$$_VerifyEmailStateCopyWithImpl(
      _$_VerifyEmailState _value, $Res Function(_$_VerifyEmailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? response = freezed,
    Object? error = freezed,
    Object? isClientError = null,
  }) {
    return _then(_$_VerifyEmailState(
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
              as CommonResponse?,
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

class _$_VerifyEmailState implements _VerifyEmailState {
  const _$_VerifyEmailState(
      {required this.isLoading,
      required this.isError,
      required this.response,
      required this.error,
      this.isClientError = false});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final CommonResponse? response;
  @override
  final String? error;
  @override
  @JsonKey()
  final bool isClientError;

  @override
  String toString() {
    return 'VerifyEmailState(isLoading: $isLoading, isError: $isError, response: $response, error: $error, isClientError: $isClientError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyEmailState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isClientError, isClientError) ||
                other.isClientError == isClientError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, isError, response, error, isClientError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifyEmailStateCopyWith<_$_VerifyEmailState> get copyWith =>
      __$$_VerifyEmailStateCopyWithImpl<_$_VerifyEmailState>(this, _$identity);
}

abstract class _VerifyEmailState implements VerifyEmailState {
  const factory _VerifyEmailState(
      {required final bool isLoading,
      required final bool isError,
      required final CommonResponse? response,
      required final String? error,
      final bool isClientError}) = _$_VerifyEmailState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  CommonResponse? get response;
  @override
  String? get error;
  @override
  bool get isClientError;
  @override
  @JsonKey(ignore: true)
  _$$_VerifyEmailStateCopyWith<_$_VerifyEmailState> get copyWith =>
      throw _privateConstructorUsedError;
}
