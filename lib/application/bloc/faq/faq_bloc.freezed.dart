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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchTerm) getFaqList,
    required TResult Function(String faqId, BuildContext context) deleteFaq,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchTerm)? getFaqList,
    TResult? Function(String faqId, BuildContext context)? deleteFaq,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchTerm)? getFaqList,
    TResult Function(String faqId, BuildContext context)? deleteFaq,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFaqList value) getFaqList,
    required TResult Function(_DeleteFaq value) deleteFaq,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFaqList value)? getFaqList,
    TResult? Function(_DeleteFaq value)? deleteFaq,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFaqList value)? getFaqList,
    TResult Function(_DeleteFaq value)? deleteFaq,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqEventCopyWith<$Res> {
  factory $FaqEventCopyWith(FaqEvent value, $Res Function(FaqEvent) then) =
      _$FaqEventCopyWithImpl<$Res, FaqEvent>;
}

/// @nodoc
class _$FaqEventCopyWithImpl<$Res, $Val extends FaqEvent>
    implements $FaqEventCopyWith<$Res> {
  _$FaqEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetFaqListCopyWith<$Res> {
  factory _$$_GetFaqListCopyWith(
          _$_GetFaqList value, $Res Function(_$_GetFaqList) then) =
      __$$_GetFaqListCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchTerm});
}

/// @nodoc
class __$$_GetFaqListCopyWithImpl<$Res>
    extends _$FaqEventCopyWithImpl<$Res, _$_GetFaqList>
    implements _$$_GetFaqListCopyWith<$Res> {
  __$$_GetFaqListCopyWithImpl(
      _$_GetFaqList _value, $Res Function(_$_GetFaqList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchTerm = null,
  }) {
    return _then(_$_GetFaqList(
      searchTerm: null == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetFaqList implements _GetFaqList {
  const _$_GetFaqList({required this.searchTerm});

  @override
  final String searchTerm;

  @override
  String toString() {
    return 'FaqEvent.getFaqList(searchTerm: $searchTerm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetFaqList &&
            (identical(other.searchTerm, searchTerm) ||
                other.searchTerm == searchTerm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchTerm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetFaqListCopyWith<_$_GetFaqList> get copyWith =>
      __$$_GetFaqListCopyWithImpl<_$_GetFaqList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchTerm) getFaqList,
    required TResult Function(String faqId, BuildContext context) deleteFaq,
  }) {
    return getFaqList(searchTerm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchTerm)? getFaqList,
    TResult? Function(String faqId, BuildContext context)? deleteFaq,
  }) {
    return getFaqList?.call(searchTerm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchTerm)? getFaqList,
    TResult Function(String faqId, BuildContext context)? deleteFaq,
    required TResult orElse(),
  }) {
    if (getFaqList != null) {
      return getFaqList(searchTerm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFaqList value) getFaqList,
    required TResult Function(_DeleteFaq value) deleteFaq,
  }) {
    return getFaqList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFaqList value)? getFaqList,
    TResult? Function(_DeleteFaq value)? deleteFaq,
  }) {
    return getFaqList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFaqList value)? getFaqList,
    TResult Function(_DeleteFaq value)? deleteFaq,
    required TResult orElse(),
  }) {
    if (getFaqList != null) {
      return getFaqList(this);
    }
    return orElse();
  }
}

abstract class _GetFaqList implements FaqEvent {
  const factory _GetFaqList({required final String searchTerm}) = _$_GetFaqList;

  String get searchTerm;
  @JsonKey(ignore: true)
  _$$_GetFaqListCopyWith<_$_GetFaqList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteFaqCopyWith<$Res> {
  factory _$$_DeleteFaqCopyWith(
          _$_DeleteFaq value, $Res Function(_$_DeleteFaq) then) =
      __$$_DeleteFaqCopyWithImpl<$Res>;
  @useResult
  $Res call({String faqId, BuildContext context});
}

/// @nodoc
class __$$_DeleteFaqCopyWithImpl<$Res>
    extends _$FaqEventCopyWithImpl<$Res, _$_DeleteFaq>
    implements _$$_DeleteFaqCopyWith<$Res> {
  __$$_DeleteFaqCopyWithImpl(
      _$_DeleteFaq _value, $Res Function(_$_DeleteFaq) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? faqId = null,
    Object? context = null,
  }) {
    return _then(_$_DeleteFaq(
      faqId: null == faqId
          ? _value.faqId
          : faqId // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_DeleteFaq implements _DeleteFaq {
  const _$_DeleteFaq({required this.faqId, required this.context});

  @override
  final String faqId;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'FaqEvent.deleteFaq(faqId: $faqId, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteFaq &&
            (identical(other.faqId, faqId) || other.faqId == faqId) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, faqId, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteFaqCopyWith<_$_DeleteFaq> get copyWith =>
      __$$_DeleteFaqCopyWithImpl<_$_DeleteFaq>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchTerm) getFaqList,
    required TResult Function(String faqId, BuildContext context) deleteFaq,
  }) {
    return deleteFaq(faqId, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchTerm)? getFaqList,
    TResult? Function(String faqId, BuildContext context)? deleteFaq,
  }) {
    return deleteFaq?.call(faqId, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchTerm)? getFaqList,
    TResult Function(String faqId, BuildContext context)? deleteFaq,
    required TResult orElse(),
  }) {
    if (deleteFaq != null) {
      return deleteFaq(faqId, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFaqList value) getFaqList,
    required TResult Function(_DeleteFaq value) deleteFaq,
  }) {
    return deleteFaq(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFaqList value)? getFaqList,
    TResult? Function(_DeleteFaq value)? deleteFaq,
  }) {
    return deleteFaq?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFaqList value)? getFaqList,
    TResult Function(_DeleteFaq value)? deleteFaq,
    required TResult orElse(),
  }) {
    if (deleteFaq != null) {
      return deleteFaq(this);
    }
    return orElse();
  }
}

abstract class _DeleteFaq implements FaqEvent {
  const factory _DeleteFaq(
      {required final String faqId,
      required final BuildContext context}) = _$_DeleteFaq;

  String get faqId;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_DeleteFaqCopyWith<_$_DeleteFaq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FaqState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Option<Either<ApiErrorHandler, FaqListResponseModel>> get faqListOption =>
      throw _privateConstructorUsedError;
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
  $Res call(
      {bool isLoading,
      bool isError,
      String? error,
      Option<Either<ApiErrorHandler, FaqListResponseModel>> faqListOption,
      bool isClientError});
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
    Object? faqListOption = null,
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
      faqListOption: null == faqListOption
          ? _value.faqListOption
          : faqListOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, FaqListResponseModel>>,
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
  $Res call(
      {bool isLoading,
      bool isError,
      String? error,
      Option<Either<ApiErrorHandler, FaqListResponseModel>> faqListOption,
      bool isClientError});
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
    Object? faqListOption = null,
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
      faqListOption: null == faqListOption
          ? _value.faqListOption
          : faqListOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, FaqListResponseModel>>,
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
      required this.faqListOption,
      this.isClientError = false});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final String? error;
  @override
  final Option<Either<ApiErrorHandler, FaqListResponseModel>> faqListOption;
  @override
  @JsonKey()
  final bool isClientError;

  @override
  String toString() {
    return 'FaqState(isLoading: $isLoading, isError: $isError, error: $error, faqListOption: $faqListOption, isClientError: $isClientError)';
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
            (identical(other.faqListOption, faqListOption) ||
                other.faqListOption == faqListOption) &&
            (identical(other.isClientError, isClientError) ||
                other.isClientError == isClientError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, isError, error, faqListOption, isClientError);

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
      required final Option<Either<ApiErrorHandler, FaqListResponseModel>>
          faqListOption,
      final bool isClientError}) = _$_FaqState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  String? get error;
  @override
  Option<Either<ApiErrorHandler, FaqListResponseModel>> get faqListOption;
  @override
  bool get isClientError;
  @override
  @JsonKey(ignore: true)
  _$$_FaqStateCopyWith<_$_FaqState> get copyWith =>
      throw _privateConstructorUsedError;
}
