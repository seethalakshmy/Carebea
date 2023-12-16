// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResetPasswordEvent {
  BuildContext get context => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, String password, String userId)
        resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String password, String userId)?
        resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String password, String userId)?
        resetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetPasswordEvent value) resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResetPasswordEvent value)? resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetPasswordEvent value)? resetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResetPasswordEventCopyWith<ResetPasswordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordEventCopyWith<$Res> {
  factory $ResetPasswordEventCopyWith(
          ResetPasswordEvent value, $Res Function(ResetPasswordEvent) then) =
      _$ResetPasswordEventCopyWithImpl<$Res, ResetPasswordEvent>;
  @useResult
  $Res call({BuildContext context, String password, String userId});
}

/// @nodoc
class _$ResetPasswordEventCopyWithImpl<$Res, $Val extends ResetPasswordEvent>
    implements $ResetPasswordEventCopyWith<$Res> {
  _$ResetPasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? password = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResetPasswordEventCopyWith<$Res>
    implements $ResetPasswordEventCopyWith<$Res> {
  factory _$$_ResetPasswordEventCopyWith(_$_ResetPasswordEvent value,
          $Res Function(_$_ResetPasswordEvent) then) =
      __$$_ResetPasswordEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context, String password, String userId});
}

/// @nodoc
class __$$_ResetPasswordEventCopyWithImpl<$Res>
    extends _$ResetPasswordEventCopyWithImpl<$Res, _$_ResetPasswordEvent>
    implements _$$_ResetPasswordEventCopyWith<$Res> {
  __$$_ResetPasswordEventCopyWithImpl(
      _$_ResetPasswordEvent _value, $Res Function(_$_ResetPasswordEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? password = null,
    Object? userId = null,
  }) {
    return _then(_$_ResetPasswordEvent(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ResetPasswordEvent implements _ResetPasswordEvent {
  const _$_ResetPasswordEvent(
      {required this.context, required this.password, required this.userId});

  @override
  final BuildContext context;
  @override
  final String password;
  @override
  final String userId;

  @override
  String toString() {
    return 'ResetPasswordEvent.resetPassword(context: $context, password: $password, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResetPasswordEvent &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, password, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResetPasswordEventCopyWith<_$_ResetPasswordEvent> get copyWith =>
      __$$_ResetPasswordEventCopyWithImpl<_$_ResetPasswordEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, String password, String userId)
        resetPassword,
  }) {
    return resetPassword(context, password, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String password, String userId)?
        resetPassword,
  }) {
    return resetPassword?.call(context, password, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String password, String userId)?
        resetPassword,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(context, password, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetPasswordEvent value) resetPassword,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResetPasswordEvent value)? resetPassword,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetPasswordEvent value)? resetPassword,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class _ResetPasswordEvent implements ResetPasswordEvent {
  const factory _ResetPasswordEvent(
      {required final BuildContext context,
      required final String password,
      required final String userId}) = _$_ResetPasswordEvent;

  @override
  BuildContext get context;
  @override
  String get password;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$_ResetPasswordEventCopyWith<_$_ResetPasswordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ResetPasswordState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  CommonResponse? get response => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get isClientError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResetPasswordStateCopyWith<ResetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordStateCopyWith<$Res> {
  factory $ResetPasswordStateCopyWith(
          ResetPasswordState value, $Res Function(ResetPasswordState) then) =
      _$ResetPasswordStateCopyWithImpl<$Res, ResetPasswordState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      CommonResponse? response,
      String? error,
      bool isClientError});
}

/// @nodoc
class _$ResetPasswordStateCopyWithImpl<$Res, $Val extends ResetPasswordState>
    implements $ResetPasswordStateCopyWith<$Res> {
  _$ResetPasswordStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_ResetPasswordStateCopyWith<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  factory _$$_ResetPasswordStateCopyWith(_$_ResetPasswordState value,
          $Res Function(_$_ResetPasswordState) then) =
      __$$_ResetPasswordStateCopyWithImpl<$Res>;
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
class __$$_ResetPasswordStateCopyWithImpl<$Res>
    extends _$ResetPasswordStateCopyWithImpl<$Res, _$_ResetPasswordState>
    implements _$$_ResetPasswordStateCopyWith<$Res> {
  __$$_ResetPasswordStateCopyWithImpl(
      _$_ResetPasswordState _value, $Res Function(_$_ResetPasswordState) _then)
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
    return _then(_$_ResetPasswordState(
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

class _$_ResetPasswordState implements _ResetPasswordState {
  const _$_ResetPasswordState(
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
    return 'ResetPasswordState(isLoading: $isLoading, isError: $isError, response: $response, error: $error, isClientError: $isClientError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResetPasswordState &&
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
  _$$_ResetPasswordStateCopyWith<_$_ResetPasswordState> get copyWith =>
      __$$_ResetPasswordStateCopyWithImpl<_$_ResetPasswordState>(
          this, _$identity);
}

abstract class _ResetPasswordState implements ResetPasswordState {
  const factory _ResetPasswordState(
      {required final bool isLoading,
      required final bool isError,
      required final CommonResponse? response,
      required final String? error,
      final bool isClientError}) = _$_ResetPasswordState;

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
  _$$_ResetPasswordStateCopyWith<_$_ResetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
