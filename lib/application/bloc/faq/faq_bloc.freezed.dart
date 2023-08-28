// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FaqEvent {
  String get userId => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, int page, int limit) getFaq,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, int page, int limit)? getFaq,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, int page, int limit)? getFaq,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFaq value) getFaq,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFaq value)? getFaq,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFaq value)? getFaq,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FaqEventCopyWith<FaqEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqEventCopyWith<$Res> {
  factory $FaqEventCopyWith(FaqEvent value, $Res Function(FaqEvent) then) =
      _$FaqEventCopyWithImpl<$Res, FaqEvent>;
  @useResult
  $Res call({String userId, int page, int limit});
}

/// @nodoc
class _$FaqEventCopyWithImpl<$Res, $Val extends FaqEvent>
    implements $FaqEventCopyWith<$Res> {
  _$FaqEventCopyWithImpl(this._value, this._then);

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
abstract class _$$_GetFaqCopyWith<$Res> implements $FaqEventCopyWith<$Res> {
  factory _$$_GetFaqCopyWith(_$_GetFaq value, $Res Function(_$_GetFaq) then) =
      __$$_GetFaqCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, int page, int limit});
}

/// @nodoc
class __$$_GetFaqCopyWithImpl<$Res>
    extends _$FaqEventCopyWithImpl<$Res, _$_GetFaq>
    implements _$$_GetFaqCopyWith<$Res> {
  __$$_GetFaqCopyWithImpl(_$_GetFaq _value, $Res Function(_$_GetFaq) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(_$_GetFaq(
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

class _$_GetFaq implements _GetFaq {
  const _$_GetFaq(
      {required this.userId, required this.page, required this.limit});

  @override
  final String userId;
  @override
  final int page;
  @override
  final int limit;

  @override
  String toString() {
    return 'FaqEvent.getFaq(userId: $userId, page: $page, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetFaq &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, page, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetFaqCopyWith<_$_GetFaq> get copyWith =>
      __$$_GetFaqCopyWithImpl<_$_GetFaq>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, int page, int limit) getFaq,
  }) {
    return getFaq(userId, page, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, int page, int limit)? getFaq,
  }) {
    return getFaq?.call(userId, page, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, int page, int limit)? getFaq,
    required TResult orElse(),
  }) {
    if (getFaq != null) {
      return getFaq(userId, page, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFaq value) getFaq,
  }) {
    return getFaq(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFaq value)? getFaq,
  }) {
    return getFaq?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFaq value)? getFaq,
    required TResult orElse(),
  }) {
    if (getFaq != null) {
      return getFaq(this);
    }
    return orElse();
  }
}

abstract class _GetFaq implements FaqEvent {
  const factory _GetFaq(
      {required final String userId,
      required final int page,
      required final int limit}) = _$_GetFaq;

  @override
  String get userId;
  @override
  int get page;
  @override
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$$_GetFaqCopyWith<_$_GetFaq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FaqState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get isClientError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FaqStateCopyWith<FaqState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqStateCopyWith<$Res> {
  factory $FaqStateCopyWith(FaqState value, $Res Function(FaqState) then) =
      _$FaqStateCopyWithImpl<$Res, FaqState>;
  @useResult
  $Res call({bool isLoading, bool isError, String? error, bool isClientError});
}

/// @nodoc
class _$FaqStateCopyWithImpl<$Res, $Val extends FaqState>
    implements $FaqStateCopyWith<$Res> {
  _$FaqStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
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
abstract class _$$_FaqStateCopyWith<$Res> implements $FaqStateCopyWith<$Res> {
  factory _$$_FaqStateCopyWith(
          _$_FaqState value, $Res Function(_$_FaqState) then) =
      __$$_FaqStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool isError, String? error, bool isClientError});
}

/// @nodoc
class __$$_FaqStateCopyWithImpl<$Res>
    extends _$FaqStateCopyWithImpl<$Res, _$_FaqState>
    implements _$$_FaqStateCopyWith<$Res> {
  __$$_FaqStateCopyWithImpl(
      _$_FaqState _value, $Res Function(_$_FaqState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? error = freezed,
    Object? isClientError = null,
  }) {
    return _then(_$_FaqState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$_FaqState implements _FaqState {
  const _$_FaqState(
      {required this.isLoading,
      required this.isError,
      required this.error,
      this.isClientError = false});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final String? error;
  @override
  @JsonKey()
  final bool isClientError;

  @override
  String toString() {
    return 'FaqState(isLoading: $isLoading, isError: $isError, error: $error, isClientError: $isClientError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FaqState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isClientError, isClientError) ||
                other.isClientError == isClientError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, isError, error, isClientError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FaqStateCopyWith<_$_FaqState> get copyWith =>
      __$$_FaqStateCopyWithImpl<_$_FaqState>(this, _$identity);
}

abstract class _FaqState implements FaqState {
  const factory _FaqState(
      {required final bool isLoading,
      required final bool isError,
      required final String? error,
      final bool isClientError}) = _$_FaqState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  String? get error;
  @override
  bool get isClientError;
  @override
  @JsonKey(ignore: true)
  _$$_FaqStateCopyWith<_$_FaqState> get copyWith =>
      throw _privateConstructorUsedError;
}
