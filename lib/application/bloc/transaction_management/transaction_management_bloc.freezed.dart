// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_management_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionManagementEvent {
/*required String userId,*/
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int limit) getTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int limit)? getTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int limit)? getTransactions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTransactions value) getTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTransactions value)? getTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTransactions value)? getTransactions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionManagementEventCopyWith<TransactionManagementEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionManagementEventCopyWith<$Res> {
  factory $TransactionManagementEventCopyWith(TransactionManagementEvent value,
          $Res Function(TransactionManagementEvent) then) =
      _$TransactionManagementEventCopyWithImpl<$Res,
          TransactionManagementEvent>;
  @useResult
  $Res call({int page, int limit});
}

/// @nodoc
class _$TransactionManagementEventCopyWithImpl<$Res,
        $Val extends TransactionManagementEvent>
    implements $TransactionManagementEventCopyWith<$Res> {
  _$TransactionManagementEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_GetTransactionsCopyWith<$Res>
    implements $TransactionManagementEventCopyWith<$Res> {
  factory _$$_GetTransactionsCopyWith(
          _$_GetTransactions value, $Res Function(_$_GetTransactions) then) =
      __$$_GetTransactionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, int limit});
}

/// @nodoc
class __$$_GetTransactionsCopyWithImpl<$Res>
    extends _$TransactionManagementEventCopyWithImpl<$Res, _$_GetTransactions>
    implements _$$_GetTransactionsCopyWith<$Res> {
  __$$_GetTransactionsCopyWithImpl(
      _$_GetTransactions _value, $Res Function(_$_GetTransactions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(_$_GetTransactions(
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

class _$_GetTransactions implements _GetTransactions {
  const _$_GetTransactions({required this.page, required this.limit});

/*required String userId,*/
  @override
  final int page;
  @override
  final int limit;

  @override
  String toString() {
    return 'TransactionManagementEvent.getTransactions(page: $page, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetTransactions &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetTransactionsCopyWith<_$_GetTransactions> get copyWith =>
      __$$_GetTransactionsCopyWithImpl<_$_GetTransactions>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int limit) getTransactions,
  }) {
    return getTransactions(page, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int limit)? getTransactions,
  }) {
    return getTransactions?.call(page, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int limit)? getTransactions,
    required TResult orElse(),
  }) {
    if (getTransactions != null) {
      return getTransactions(page, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTransactions value) getTransactions,
  }) {
    return getTransactions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTransactions value)? getTransactions,
  }) {
    return getTransactions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTransactions value)? getTransactions,
    required TResult orElse(),
  }) {
    if (getTransactions != null) {
      return getTransactions(this);
    }
    return orElse();
  }
}

abstract class _GetTransactions implements TransactionManagementEvent {
  const factory _GetTransactions(
      {required final int page, required final int limit}) = _$_GetTransactions;

  @override /*required String userId,*/
  int get page;
  @override
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$$_GetTransactionsCopyWith<_$_GetTransactions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransactionManagementState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  TransactionResponse? get response => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionManagementStateCopyWith<TransactionManagementState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionManagementStateCopyWith<$Res> {
  factory $TransactionManagementStateCopyWith(TransactionManagementState value,
          $Res Function(TransactionManagementState) then) =
      _$TransactionManagementStateCopyWithImpl<$Res,
          TransactionManagementState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      TransactionResponse? response,
      String? error});
}

/// @nodoc
class _$TransactionManagementStateCopyWithImpl<$Res,
        $Val extends TransactionManagementState>
    implements $TransactionManagementStateCopyWith<$Res> {
  _$TransactionManagementStateCopyWithImpl(this._value, this._then);

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
              as TransactionResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionsStateCopyWith<$Res>
    implements $TransactionManagementStateCopyWith<$Res> {
  factory _$$_TransactionsStateCopyWith(_$_TransactionsState value,
          $Res Function(_$_TransactionsState) then) =
      __$$_TransactionsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      TransactionResponse? response,
      String? error});
}

/// @nodoc
class __$$_TransactionsStateCopyWithImpl<$Res>
    extends _$TransactionManagementStateCopyWithImpl<$Res, _$_TransactionsState>
    implements _$$_TransactionsStateCopyWith<$Res> {
  __$$_TransactionsStateCopyWithImpl(
      _$_TransactionsState _value, $Res Function(_$_TransactionsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? response = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_TransactionsState(
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
              as TransactionResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TransactionsState implements _TransactionsState {
  const _$_TransactionsState(
      {required this.isLoading,
      required this.isError,
      required this.response,
      required this.error});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final TransactionResponse? response;
  @override
  final String? error;

  @override
  String toString() {
    return 'TransactionManagementState(isLoading: $isLoading, isError: $isError, response: $response, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionsState &&
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
  _$$_TransactionsStateCopyWith<_$_TransactionsState> get copyWith =>
      __$$_TransactionsStateCopyWithImpl<_$_TransactionsState>(
          this, _$identity);
}

abstract class _TransactionsState implements TransactionManagementState {
  const factory _TransactionsState(
      {required final bool isLoading,
      required final bool isError,
      required final TransactionResponse? response,
      required final String? error}) = _$_TransactionsState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  TransactionResponse? get response;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionsStateCopyWith<_$_TransactionsState> get copyWith =>
      throw _privateConstructorUsedError;
}
