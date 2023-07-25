// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_error_handler.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiErrorHandler {
  String get error => throw _privateConstructorUsedError;
  bool? get isClientError => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error, bool? isClientError) clientFailure,
    required TResult Function(String error, bool? isClientError) serverFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error, bool? isClientError)? clientFailure,
    TResult? Function(String error, bool? isClientError)? serverFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error, bool? isClientError)? clientFailure,
    TResult Function(String error, bool? isClientError)? serverFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientFailure value) clientFailure,
    required TResult Function(ServerFailure value) serverFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientFailure value)? clientFailure,
    TResult? Function(ServerFailure value)? serverFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientFailure value)? clientFailure,
    TResult Function(ServerFailure value)? serverFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiErrorHandlerCopyWith<ApiErrorHandler> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiErrorHandlerCopyWith<$Res> {
  factory $ApiErrorHandlerCopyWith(
          ApiErrorHandler value, $Res Function(ApiErrorHandler) then) =
      _$ApiErrorHandlerCopyWithImpl<$Res, ApiErrorHandler>;
  @useResult
  $Res call({String error, bool? isClientError});
}

/// @nodoc
class _$ApiErrorHandlerCopyWithImpl<$Res, $Val extends ApiErrorHandler>
    implements $ApiErrorHandlerCopyWith<$Res> {
  _$ApiErrorHandlerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? isClientError = freezed,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      isClientError: freezed == isClientError
          ? _value.isClientError
          : isClientError // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientFailureCopyWith<$Res>
    implements $ApiErrorHandlerCopyWith<$Res> {
  factory _$$ClientFailureCopyWith(
          _$ClientFailure value, $Res Function(_$ClientFailure) then) =
      __$$ClientFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error, bool? isClientError});
}

/// @nodoc
class __$$ClientFailureCopyWithImpl<$Res>
    extends _$ApiErrorHandlerCopyWithImpl<$Res, _$ClientFailure>
    implements _$$ClientFailureCopyWith<$Res> {
  __$$ClientFailureCopyWithImpl(
      _$ClientFailure _value, $Res Function(_$ClientFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? isClientError = freezed,
  }) {
    return _then(_$ClientFailure(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      isClientError: freezed == isClientError
          ? _value.isClientError
          : isClientError // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$ClientFailure implements ClientFailure {
  const _$ClientFailure({required this.error, this.isClientError});

  @override
  final String error;
  @override
  final bool? isClientError;

  @override
  String toString() {
    return 'ApiErrorHandler.clientFailure(error: $error, isClientError: $isClientError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientFailure &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isClientError, isClientError) ||
                other.isClientError == isClientError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, isClientError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientFailureCopyWith<_$ClientFailure> get copyWith =>
      __$$ClientFailureCopyWithImpl<_$ClientFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error, bool? isClientError) clientFailure,
    required TResult Function(String error, bool? isClientError) serverFailure,
  }) {
    return clientFailure(error, isClientError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error, bool? isClientError)? clientFailure,
    TResult? Function(String error, bool? isClientError)? serverFailure,
  }) {
    return clientFailure?.call(error, isClientError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error, bool? isClientError)? clientFailure,
    TResult Function(String error, bool? isClientError)? serverFailure,
    required TResult orElse(),
  }) {
    if (clientFailure != null) {
      return clientFailure(error, isClientError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientFailure value) clientFailure,
    required TResult Function(ServerFailure value) serverFailure,
  }) {
    return clientFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientFailure value)? clientFailure,
    TResult? Function(ServerFailure value)? serverFailure,
  }) {
    return clientFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientFailure value)? clientFailure,
    TResult Function(ServerFailure value)? serverFailure,
    required TResult orElse(),
  }) {
    if (clientFailure != null) {
      return clientFailure(this);
    }
    return orElse();
  }
}

abstract class ClientFailure implements ApiErrorHandler {
  const factory ClientFailure(
      {required final String error,
      final bool? isClientError}) = _$ClientFailure;

  @override
  String get error;
  @override
  bool? get isClientError;
  @override
  @JsonKey(ignore: true)
  _$$ClientFailureCopyWith<_$ClientFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerFailureCopyWith<$Res>
    implements $ApiErrorHandlerCopyWith<$Res> {
  factory _$$ServerFailureCopyWith(
          _$ServerFailure value, $Res Function(_$ServerFailure) then) =
      __$$ServerFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error, bool? isClientError});
}

/// @nodoc
class __$$ServerFailureCopyWithImpl<$Res>
    extends _$ApiErrorHandlerCopyWithImpl<$Res, _$ServerFailure>
    implements _$$ServerFailureCopyWith<$Res> {
  __$$ServerFailureCopyWithImpl(
      _$ServerFailure _value, $Res Function(_$ServerFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? isClientError = freezed,
  }) {
    return _then(_$ServerFailure(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      isClientError: freezed == isClientError
          ? _value.isClientError
          : isClientError // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$ServerFailure implements ServerFailure {
  const _$ServerFailure({required this.error, this.isClientError});

  @override
  final String error;
  @override
  final bool? isClientError;

  @override
  String toString() {
    return 'ApiErrorHandler.serverFailure(error: $error, isClientError: $isClientError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailure &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isClientError, isClientError) ||
                other.isClientError == isClientError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, isClientError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureCopyWith<_$ServerFailure> get copyWith =>
      __$$ServerFailureCopyWithImpl<_$ServerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error, bool? isClientError) clientFailure,
    required TResult Function(String error, bool? isClientError) serverFailure,
  }) {
    return serverFailure(error, isClientError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error, bool? isClientError)? clientFailure,
    TResult? Function(String error, bool? isClientError)? serverFailure,
  }) {
    return serverFailure?.call(error, isClientError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error, bool? isClientError)? clientFailure,
    TResult Function(String error, bool? isClientError)? serverFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(error, isClientError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientFailure value) clientFailure,
    required TResult Function(ServerFailure value) serverFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientFailure value)? clientFailure,
    TResult? Function(ServerFailure value)? serverFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientFailure value)? clientFailure,
    TResult Function(ServerFailure value)? serverFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure implements ApiErrorHandler {
  const factory ServerFailure(
      {required final String error,
      final bool? isClientError}) = _$ServerFailure;

  @override
  String get error;
  @override
  bool? get isClientError;
  @override
  @JsonKey(ignore: true)
  _$$ServerFailureCopyWith<_$ServerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
