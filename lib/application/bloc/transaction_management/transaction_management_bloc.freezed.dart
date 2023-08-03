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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFilters,
    required TResult Function(
            String page, int limit, String searchTerm, int filterId)
        getTransactions,
    required TResult Function(bool clicked) hideOrShowDetails,
    required TResult Function(String transactionId) getTransactionDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFilters,
    TResult? Function(String page, int limit, String searchTerm, int filterId)?
        getTransactions,
    TResult? Function(bool clicked)? hideOrShowDetails,
    TResult? Function(String transactionId)? getTransactionDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFilters,
    TResult Function(String page, int limit, String searchTerm, int filterId)?
        getTransactions,
    TResult Function(bool clicked)? hideOrShowDetails,
    TResult Function(String transactionId)? getTransactionDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFilters value) getFilters,
    required TResult Function(_GetTransactions value) getTransactions,
    required TResult Function(_HideOrShowDetails value) hideOrShowDetails,
    required TResult Function(_GetTransactionDetails value)
        getTransactionDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFilters value)? getFilters,
    TResult? Function(_GetTransactions value)? getTransactions,
    TResult? Function(_HideOrShowDetails value)? hideOrShowDetails,
    TResult? Function(_GetTransactionDetails value)? getTransactionDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFilters value)? getFilters,
    TResult Function(_GetTransactions value)? getTransactions,
    TResult Function(_HideOrShowDetails value)? hideOrShowDetails,
    TResult Function(_GetTransactionDetails value)? getTransactionDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionManagementEventCopyWith<$Res> {
  factory $TransactionManagementEventCopyWith(TransactionManagementEvent value,
          $Res Function(TransactionManagementEvent) then) =
      _$TransactionManagementEventCopyWithImpl<$Res,
          TransactionManagementEvent>;
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
}

/// @nodoc
abstract class _$$_GetFiltersCopyWith<$Res> {
  factory _$$_GetFiltersCopyWith(
          _$_GetFilters value, $Res Function(_$_GetFilters) then) =
      __$$_GetFiltersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetFiltersCopyWithImpl<$Res>
    extends _$TransactionManagementEventCopyWithImpl<$Res, _$_GetFilters>
    implements _$$_GetFiltersCopyWith<$Res> {
  __$$_GetFiltersCopyWithImpl(
      _$_GetFilters _value, $Res Function(_$_GetFilters) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetFilters implements _GetFilters {
  const _$_GetFilters();

  @override
  String toString() {
    return 'TransactionManagementEvent.getFilters()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetFilters);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFilters,
    required TResult Function(
            String page, int limit, String searchTerm, int filterId)
        getTransactions,
    required TResult Function(bool clicked) hideOrShowDetails,
    required TResult Function(String transactionId) getTransactionDetails,
  }) {
    return getFilters();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFilters,
    TResult? Function(String page, int limit, String searchTerm, int filterId)?
        getTransactions,
    TResult? Function(bool clicked)? hideOrShowDetails,
    TResult? Function(String transactionId)? getTransactionDetails,
  }) {
    return getFilters?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFilters,
    TResult Function(String page, int limit, String searchTerm, int filterId)?
        getTransactions,
    TResult Function(bool clicked)? hideOrShowDetails,
    TResult Function(String transactionId)? getTransactionDetails,
    required TResult orElse(),
  }) {
    if (getFilters != null) {
      return getFilters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFilters value) getFilters,
    required TResult Function(_GetTransactions value) getTransactions,
    required TResult Function(_HideOrShowDetails value) hideOrShowDetails,
    required TResult Function(_GetTransactionDetails value)
        getTransactionDetails,
  }) {
    return getFilters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFilters value)? getFilters,
    TResult? Function(_GetTransactions value)? getTransactions,
    TResult? Function(_HideOrShowDetails value)? hideOrShowDetails,
    TResult? Function(_GetTransactionDetails value)? getTransactionDetails,
  }) {
    return getFilters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFilters value)? getFilters,
    TResult Function(_GetTransactions value)? getTransactions,
    TResult Function(_HideOrShowDetails value)? hideOrShowDetails,
    TResult Function(_GetTransactionDetails value)? getTransactionDetails,
    required TResult orElse(),
  }) {
    if (getFilters != null) {
      return getFilters(this);
    }
    return orElse();
  }
}

abstract class _GetFilters implements TransactionManagementEvent {
  const factory _GetFilters() = _$_GetFilters;
}

/// @nodoc
abstract class _$$_GetTransactionsCopyWith<$Res> {
  factory _$$_GetTransactionsCopyWith(
          _$_GetTransactions value, $Res Function(_$_GetTransactions) then) =
      __$$_GetTransactionsCopyWithImpl<$Res>;
  @useResult
  $Res call({String page, int limit, String searchTerm, int filterId});
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
    Object? searchTerm = null,
    Object? filterId = null,
  }) {
    return _then(_$_GetTransactions(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      searchTerm: null == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String,
      filterId: null == filterId
          ? _value.filterId
          : filterId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetTransactions implements _GetTransactions {
  const _$_GetTransactions(
      {required this.page,
      required this.limit,
      required this.searchTerm,
      required this.filterId});

  @override
  final String page;
  @override
  final int limit;
  @override
  final String searchTerm;
  @override
  final int filterId;

  @override
  String toString() {
    return 'TransactionManagementEvent.getTransactions(page: $page, limit: $limit, searchTerm: $searchTerm, filterId: $filterId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetTransactions &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.searchTerm, searchTerm) ||
                other.searchTerm == searchTerm) &&
            (identical(other.filterId, filterId) ||
                other.filterId == filterId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, page, limit, searchTerm, filterId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetTransactionsCopyWith<_$_GetTransactions> get copyWith =>
      __$$_GetTransactionsCopyWithImpl<_$_GetTransactions>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFilters,
    required TResult Function(
            String page, int limit, String searchTerm, int filterId)
        getTransactions,
    required TResult Function(bool clicked) hideOrShowDetails,
    required TResult Function(String transactionId) getTransactionDetails,
  }) {
    return getTransactions(page, limit, searchTerm, filterId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFilters,
    TResult? Function(String page, int limit, String searchTerm, int filterId)?
        getTransactions,
    TResult? Function(bool clicked)? hideOrShowDetails,
    TResult? Function(String transactionId)? getTransactionDetails,
  }) {
    return getTransactions?.call(page, limit, searchTerm, filterId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFilters,
    TResult Function(String page, int limit, String searchTerm, int filterId)?
        getTransactions,
    TResult Function(bool clicked)? hideOrShowDetails,
    TResult Function(String transactionId)? getTransactionDetails,
    required TResult orElse(),
  }) {
    if (getTransactions != null) {
      return getTransactions(page, limit, searchTerm, filterId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFilters value) getFilters,
    required TResult Function(_GetTransactions value) getTransactions,
    required TResult Function(_HideOrShowDetails value) hideOrShowDetails,
    required TResult Function(_GetTransactionDetails value)
        getTransactionDetails,
  }) {
    return getTransactions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFilters value)? getFilters,
    TResult? Function(_GetTransactions value)? getTransactions,
    TResult? Function(_HideOrShowDetails value)? hideOrShowDetails,
    TResult? Function(_GetTransactionDetails value)? getTransactionDetails,
  }) {
    return getTransactions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFilters value)? getFilters,
    TResult Function(_GetTransactions value)? getTransactions,
    TResult Function(_HideOrShowDetails value)? hideOrShowDetails,
    TResult Function(_GetTransactionDetails value)? getTransactionDetails,
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
      {required final String page,
      required final int limit,
      required final String searchTerm,
      required final int filterId}) = _$_GetTransactions;

  String get page;
  int get limit;
  String get searchTerm;
  int get filterId;
  @JsonKey(ignore: true)
  _$$_GetTransactionsCopyWith<_$_GetTransactions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HideOrShowDetailsCopyWith<$Res> {
  factory _$$_HideOrShowDetailsCopyWith(_$_HideOrShowDetails value,
          $Res Function(_$_HideOrShowDetails) then) =
      __$$_HideOrShowDetailsCopyWithImpl<$Res>;
  @useResult
  $Res call({bool clicked});
}

/// @nodoc
class __$$_HideOrShowDetailsCopyWithImpl<$Res>
    extends _$TransactionManagementEventCopyWithImpl<$Res, _$_HideOrShowDetails>
    implements _$$_HideOrShowDetailsCopyWith<$Res> {
  __$$_HideOrShowDetailsCopyWithImpl(
      _$_HideOrShowDetails _value, $Res Function(_$_HideOrShowDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clicked = null,
  }) {
    return _then(_$_HideOrShowDetails(
      clicked: null == clicked
          ? _value.clicked
          : clicked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HideOrShowDetails implements _HideOrShowDetails {
  const _$_HideOrShowDetails({required this.clicked});

  @override
  final bool clicked;

  @override
  String toString() {
    return 'TransactionManagementEvent.hideOrShowDetails(clicked: $clicked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HideOrShowDetails &&
            (identical(other.clicked, clicked) || other.clicked == clicked));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clicked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HideOrShowDetailsCopyWith<_$_HideOrShowDetails> get copyWith =>
      __$$_HideOrShowDetailsCopyWithImpl<_$_HideOrShowDetails>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFilters,
    required TResult Function(
            String page, int limit, String searchTerm, int filterId)
        getTransactions,
    required TResult Function(bool clicked) hideOrShowDetails,
    required TResult Function(String transactionId) getTransactionDetails,
  }) {
    return hideOrShowDetails(clicked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFilters,
    TResult? Function(String page, int limit, String searchTerm, int filterId)?
        getTransactions,
    TResult? Function(bool clicked)? hideOrShowDetails,
    TResult? Function(String transactionId)? getTransactionDetails,
  }) {
    return hideOrShowDetails?.call(clicked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFilters,
    TResult Function(String page, int limit, String searchTerm, int filterId)?
        getTransactions,
    TResult Function(bool clicked)? hideOrShowDetails,
    TResult Function(String transactionId)? getTransactionDetails,
    required TResult orElse(),
  }) {
    if (hideOrShowDetails != null) {
      return hideOrShowDetails(clicked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFilters value) getFilters,
    required TResult Function(_GetTransactions value) getTransactions,
    required TResult Function(_HideOrShowDetails value) hideOrShowDetails,
    required TResult Function(_GetTransactionDetails value)
        getTransactionDetails,
  }) {
    return hideOrShowDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFilters value)? getFilters,
    TResult? Function(_GetTransactions value)? getTransactions,
    TResult? Function(_HideOrShowDetails value)? hideOrShowDetails,
    TResult? Function(_GetTransactionDetails value)? getTransactionDetails,
  }) {
    return hideOrShowDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFilters value)? getFilters,
    TResult Function(_GetTransactions value)? getTransactions,
    TResult Function(_HideOrShowDetails value)? hideOrShowDetails,
    TResult Function(_GetTransactionDetails value)? getTransactionDetails,
    required TResult orElse(),
  }) {
    if (hideOrShowDetails != null) {
      return hideOrShowDetails(this);
    }
    return orElse();
  }
}

abstract class _HideOrShowDetails implements TransactionManagementEvent {
  const factory _HideOrShowDetails({required final bool clicked}) =
      _$_HideOrShowDetails;

  bool get clicked;
  @JsonKey(ignore: true)
  _$$_HideOrShowDetailsCopyWith<_$_HideOrShowDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetTransactionDetailsCopyWith<$Res> {
  factory _$$_GetTransactionDetailsCopyWith(_$_GetTransactionDetails value,
          $Res Function(_$_GetTransactionDetails) then) =
      __$$_GetTransactionDetailsCopyWithImpl<$Res>;
  @useResult
  $Res call({String transactionId});
}

/// @nodoc
class __$$_GetTransactionDetailsCopyWithImpl<$Res>
    extends _$TransactionManagementEventCopyWithImpl<$Res,
        _$_GetTransactionDetails>
    implements _$$_GetTransactionDetailsCopyWith<$Res> {
  __$$_GetTransactionDetailsCopyWithImpl(_$_GetTransactionDetails _value,
      $Res Function(_$_GetTransactionDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
  }) {
    return _then(_$_GetTransactionDetails(
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetTransactionDetails implements _GetTransactionDetails {
  const _$_GetTransactionDetails({required this.transactionId});

  @override
  final String transactionId;

  @override
  String toString() {
    return 'TransactionManagementEvent.getTransactionDetails(transactionId: $transactionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetTransactionDetails &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetTransactionDetailsCopyWith<_$_GetTransactionDetails> get copyWith =>
      __$$_GetTransactionDetailsCopyWithImpl<_$_GetTransactionDetails>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFilters,
    required TResult Function(
            String page, int limit, String searchTerm, int filterId)
        getTransactions,
    required TResult Function(bool clicked) hideOrShowDetails,
    required TResult Function(String transactionId) getTransactionDetails,
  }) {
    return getTransactionDetails(transactionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFilters,
    TResult? Function(String page, int limit, String searchTerm, int filterId)?
        getTransactions,
    TResult? Function(bool clicked)? hideOrShowDetails,
    TResult? Function(String transactionId)? getTransactionDetails,
  }) {
    return getTransactionDetails?.call(transactionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFilters,
    TResult Function(String page, int limit, String searchTerm, int filterId)?
        getTransactions,
    TResult Function(bool clicked)? hideOrShowDetails,
    TResult Function(String transactionId)? getTransactionDetails,
    required TResult orElse(),
  }) {
    if (getTransactionDetails != null) {
      return getTransactionDetails(transactionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFilters value) getFilters,
    required TResult Function(_GetTransactions value) getTransactions,
    required TResult Function(_HideOrShowDetails value) hideOrShowDetails,
    required TResult Function(_GetTransactionDetails value)
        getTransactionDetails,
  }) {
    return getTransactionDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFilters value)? getFilters,
    TResult? Function(_GetTransactions value)? getTransactions,
    TResult? Function(_HideOrShowDetails value)? hideOrShowDetails,
    TResult? Function(_GetTransactionDetails value)? getTransactionDetails,
  }) {
    return getTransactionDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFilters value)? getFilters,
    TResult Function(_GetTransactions value)? getTransactions,
    TResult Function(_HideOrShowDetails value)? hideOrShowDetails,
    TResult Function(_GetTransactionDetails value)? getTransactionDetails,
    required TResult orElse(),
  }) {
    if (getTransactionDetails != null) {
      return getTransactionDetails(this);
    }
    return orElse();
  }
}

abstract class _GetTransactionDetails implements TransactionManagementEvent {
  const factory _GetTransactionDetails({required final String transactionId}) =
      _$_GetTransactionDetails;

  String get transactionId;
  @JsonKey(ignore: true)
  _$$_GetTransactionDetailsCopyWith<_$_GetTransactionDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransactionManagementState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isInitialLoading => throw _privateConstructorUsedError;
  bool get isDetailsLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get isClicked => throw _privateConstructorUsedError;
  TransactionListResponse? get response => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Option<Either<ApiErrorHandler, GetFiltersResponse>> get filterOption =>
      throw _privateConstructorUsedError;
  Option<Either<ApiErrorHandler, TransactionDetailsResponse>>
      get trDetailsOption => throw _privateConstructorUsedError;

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
      bool isInitialLoading,
      bool isDetailsLoading,
      bool isError,
      bool isClicked,
      TransactionListResponse? response,
      String? error,
      Option<Either<ApiErrorHandler, GetFiltersResponse>> filterOption,
      Option<Either<ApiErrorHandler, TransactionDetailsResponse>>
          trDetailsOption});
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
    Object? isInitialLoading = null,
    Object? isDetailsLoading = null,
    Object? isError = null,
    Object? isClicked = null,
    Object? response = freezed,
    Object? error = freezed,
    Object? filterOption = null,
    Object? trDetailsOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isInitialLoading: null == isInitialLoading
          ? _value.isInitialLoading
          : isInitialLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDetailsLoading: null == isDetailsLoading
          ? _value.isDetailsLoading
          : isDetailsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isClicked: null == isClicked
          ? _value.isClicked
          : isClicked // ignore: cast_nullable_to_non_nullable
              as bool,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as TransactionListResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      filterOption: null == filterOption
          ? _value.filterOption
          : filterOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, GetFiltersResponse>>,
      trDetailsOption: null == trDetailsOption
          ? _value.trDetailsOption
          : trDetailsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, TransactionDetailsResponse>>,
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
      bool isInitialLoading,
      bool isDetailsLoading,
      bool isError,
      bool isClicked,
      TransactionListResponse? response,
      String? error,
      Option<Either<ApiErrorHandler, GetFiltersResponse>> filterOption,
      Option<Either<ApiErrorHandler, TransactionDetailsResponse>>
          trDetailsOption});
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
    Object? isInitialLoading = null,
    Object? isDetailsLoading = null,
    Object? isError = null,
    Object? isClicked = null,
    Object? response = freezed,
    Object? error = freezed,
    Object? filterOption = null,
    Object? trDetailsOption = null,
  }) {
    return _then(_$_TransactionsState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isInitialLoading: null == isInitialLoading
          ? _value.isInitialLoading
          : isInitialLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDetailsLoading: null == isDetailsLoading
          ? _value.isDetailsLoading
          : isDetailsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isClicked: null == isClicked
          ? _value.isClicked
          : isClicked // ignore: cast_nullable_to_non_nullable
              as bool,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as TransactionListResponse?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      filterOption: null == filterOption
          ? _value.filterOption
          : filterOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, GetFiltersResponse>>,
      trDetailsOption: null == trDetailsOption
          ? _value.trDetailsOption
          : trDetailsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, TransactionDetailsResponse>>,
    ));
  }
}

/// @nodoc

class _$_TransactionsState implements _TransactionsState {
  const _$_TransactionsState(
      {required this.isLoading,
      required this.isInitialLoading,
      required this.isDetailsLoading,
      required this.isError,
      required this.isClicked,
      required this.response,
      required this.error,
      required this.filterOption,
      required this.trDetailsOption});

  @override
  final bool isLoading;
  @override
  final bool isInitialLoading;
  @override
  final bool isDetailsLoading;
  @override
  final bool isError;
  @override
  final bool isClicked;
  @override
  final TransactionListResponse? response;
  @override
  final String? error;
  @override
  final Option<Either<ApiErrorHandler, GetFiltersResponse>> filterOption;
  @override
  final Option<Either<ApiErrorHandler, TransactionDetailsResponse>>
      trDetailsOption;

  @override
  String toString() {
    return 'TransactionManagementState(isLoading: $isLoading, isInitialLoading: $isInitialLoading, isDetailsLoading: $isDetailsLoading, isError: $isError, isClicked: $isClicked, response: $response, error: $error, filterOption: $filterOption, trDetailsOption: $trDetailsOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isInitialLoading, isInitialLoading) ||
                other.isInitialLoading == isInitialLoading) &&
            (identical(other.isDetailsLoading, isDetailsLoading) ||
                other.isDetailsLoading == isDetailsLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isClicked, isClicked) ||
                other.isClicked == isClicked) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.filterOption, filterOption) ||
                other.filterOption == filterOption) &&
            (identical(other.trDetailsOption, trDetailsOption) ||
                other.trDetailsOption == trDetailsOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isInitialLoading,
      isDetailsLoading,
      isError,
      isClicked,
      response,
      error,
      filterOption,
      trDetailsOption);

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
      required final bool isInitialLoading,
      required final bool isDetailsLoading,
      required final bool isError,
      required final bool isClicked,
      required final TransactionListResponse? response,
      required final String? error,
      required final Option<Either<ApiErrorHandler, GetFiltersResponse>>
          filterOption,
      required final Option<Either<ApiErrorHandler, TransactionDetailsResponse>>
          trDetailsOption}) = _$_TransactionsState;

  @override
  bool get isLoading;
  @override
  bool get isInitialLoading;
  @override
  bool get isDetailsLoading;
  @override
  bool get isError;
  @override
  bool get isClicked;
  @override
  TransactionListResponse? get response;
  @override
  String? get error;
  @override
  Option<Either<ApiErrorHandler, GetFiltersResponse>> get filterOption;
  @override
  Option<Either<ApiErrorHandler, TransactionDetailsResponse>>
      get trDetailsOption;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionsStateCopyWith<_$_TransactionsState> get copyWith =>
      throw _privateConstructorUsedError;
}
