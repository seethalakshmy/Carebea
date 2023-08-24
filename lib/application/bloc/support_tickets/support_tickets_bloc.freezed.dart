// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_tickets_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SupportTicketsEvent {
  String get userId => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, int page, int limit)
        getSupportTickets,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, int page, int limit)? getSupportTickets,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, int page, int limit)? getSupportTickets,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSupportTickets value) getSupportTickets,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSupportTickets value)? getSupportTickets,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSupportTickets value)? getSupportTickets,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SupportTicketsEventCopyWith<SupportTicketsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketsEventCopyWith<$Res> {
  factory $SupportTicketsEventCopyWith(
          SupportTicketsEvent value, $Res Function(SupportTicketsEvent) then) =
      _$SupportTicketsEventCopyWithImpl<$Res, SupportTicketsEvent>;
  @useResult
  $Res call({String userId, int page, int limit});
}

/// @nodoc
class _$SupportTicketsEventCopyWithImpl<$Res, $Val extends SupportTicketsEvent>
    implements $SupportTicketsEventCopyWith<$Res> {
  _$SupportTicketsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetSupportTicketsCopyWith<$Res>
    implements $SupportTicketsEventCopyWith<$Res> {
  factory _$$_GetSupportTicketsCopyWith(_$_GetSupportTickets value,
          $Res Function(_$_GetSupportTickets) then) =
      __$$_GetSupportTicketsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, int page, int limit});
}

/// @nodoc
class __$$_GetSupportTicketsCopyWithImpl<$Res>
    extends _$SupportTicketsEventCopyWithImpl<$Res, _$_GetSupportTickets>
    implements _$$_GetSupportTicketsCopyWith<$Res> {
  __$$_GetSupportTicketsCopyWithImpl(
      _$_GetSupportTickets _value, $Res Function(_$_GetSupportTickets) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(_$_GetSupportTickets(
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
    ));
  }
}

/// @nodoc

class _$_GetSupportTickets implements _GetSupportTickets {
  const _$_GetSupportTickets(
      {required this.userId, required this.page, required this.limit});

  @override
  final String userId;
  @override
  final int page;
  @override
  final int limit;

  @override
  String toString() {
    return 'SupportTicketsEvent.getSupportTickets(userId: $userId, page: $page, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetSupportTickets &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, page, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetSupportTicketsCopyWith<_$_GetSupportTickets> get copyWith =>
      __$$_GetSupportTicketsCopyWithImpl<_$_GetSupportTickets>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, int page, int limit)
        getSupportTickets,
  }) {
    return getSupportTickets(userId, page, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, int page, int limit)? getSupportTickets,
  }) {
    return getSupportTickets?.call(userId, page, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, int page, int limit)? getSupportTickets,
    required TResult orElse(),
  }) {
    if (getSupportTickets != null) {
      return getSupportTickets(userId, page, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSupportTickets value) getSupportTickets,
  }) {
    return getSupportTickets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSupportTickets value)? getSupportTickets,
  }) {
    return getSupportTickets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSupportTickets value)? getSupportTickets,
    required TResult orElse(),
  }) {
    if (getSupportTickets != null) {
      return getSupportTickets(this);
    }
    return orElse();
  }
}

abstract class _GetSupportTickets implements SupportTicketsEvent {
  const factory _GetSupportTickets(
      {required final String userId,
      required final int page,
      required final int limit}) = _$_GetSupportTickets;

  @override
  String get userId;
  @override
  int get page;
  @override
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$$_GetSupportTicketsCopyWith<_$_GetSupportTickets> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SupportTicketsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  SupportTicketsResponse? get response => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SupportTicketsStateCopyWith<SupportTicketsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketsStateCopyWith<$Res> {
  factory $SupportTicketsStateCopyWith(
          SupportTicketsState value, $Res Function(SupportTicketsState) then) =
      _$SupportTicketsStateCopyWithImpl<$Res, SupportTicketsState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      SupportTicketsResponse? response,
      String? error});
}

/// @nodoc
class _$SupportTicketsStateCopyWithImpl<$Res, $Val extends SupportTicketsState>
    implements $SupportTicketsStateCopyWith<$Res> {
  _$SupportTicketsStateCopyWithImpl(this._value, this._then);

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
              as SupportTicketsResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SupportTicketsStateCopyWith<$Res>
    implements $SupportTicketsStateCopyWith<$Res> {
  factory _$$_SupportTicketsStateCopyWith(_$_SupportTicketsState value,
          $Res Function(_$_SupportTicketsState) then) =
      __$$_SupportTicketsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      SupportTicketsResponse? response,
      String? error});
}

/// @nodoc
class __$$_SupportTicketsStateCopyWithImpl<$Res>
    extends _$SupportTicketsStateCopyWithImpl<$Res, _$_SupportTicketsState>
    implements _$$_SupportTicketsStateCopyWith<$Res> {
  __$$_SupportTicketsStateCopyWithImpl(_$_SupportTicketsState _value,
      $Res Function(_$_SupportTicketsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? response = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_SupportTicketsState(
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
              as SupportTicketsResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SupportTicketsState implements _SupportTicketsState {
  const _$_SupportTicketsState(
      {required this.isLoading,
      required this.isError,
      required this.response,
      required this.error});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final SupportTicketsResponse? response;
  @override
  final String? error;

  @override
  String toString() {
    return 'SupportTicketsState(isLoading: $isLoading, isError: $isError, response: $response, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SupportTicketsState &&
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
  _$$_SupportTicketsStateCopyWith<_$_SupportTicketsState> get copyWith =>
      __$$_SupportTicketsStateCopyWithImpl<_$_SupportTicketsState>(
          this, _$identity);
}

abstract class _SupportTicketsState implements SupportTicketsState {
  const factory _SupportTicketsState(
      {required final bool isLoading,
      required final bool isError,
      required final SupportTicketsResponse? response,
      required final String? error}) = _$_SupportTicketsState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  SupportTicketsResponse? get response;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_SupportTicketsStateCopyWith<_$_SupportTicketsState> get copyWith =>
      throw _privateConstructorUsedError;
}
