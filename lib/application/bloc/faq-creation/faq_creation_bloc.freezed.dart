// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq_creation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FaqCreationEvent {
  BuildContext get context => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String question,
            String answer, String? profilePic)
        addFaq,
    required TResult Function(
            String userId, BuildContext context, String question, String answer)
        updateFaq,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String question, String answer,
            String? profilePic)?
        addFaq,
    TResult? Function(String userId, BuildContext context, String question,
            String answer)?
        updateFaq,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String question, String answer,
            String? profilePic)?
        addFaq,
    TResult Function(String userId, BuildContext context, String question,
            String answer)?
        updateFaq,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddFaq value) addFaq,
    required TResult Function(_UpdateFaq value) updateFaq,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddFaq value)? addFaq,
    TResult? Function(_UpdateFaq value)? updateFaq,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddFaq value)? addFaq,
    TResult Function(_UpdateFaq value)? updateFaq,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FaqCreationEventCopyWith<FaqCreationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqCreationEventCopyWith<$Res> {
  factory $FaqCreationEventCopyWith(
          FaqCreationEvent value, $Res Function(FaqCreationEvent) then) =
      _$FaqCreationEventCopyWithImpl<$Res, FaqCreationEvent>;
  @useResult
  $Res call({BuildContext context, String question, String answer});
}

/// @nodoc
class _$FaqCreationEventCopyWithImpl<$Res, $Val extends FaqCreationEvent>
    implements $FaqCreationEventCopyWith<$Res> {
  _$FaqCreationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? question = null,
    Object? answer = null,
  }) {
    return _then(_value.copyWith(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddFaqCopyWith<$Res>
    implements $FaqCreationEventCopyWith<$Res> {
  factory _$$_AddFaqCopyWith(_$_AddFaq value, $Res Function(_$_AddFaq) then) =
      __$$_AddFaqCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BuildContext context,
      String question,
      String answer,
      String? profilePic});
}

/// @nodoc
class __$$_AddFaqCopyWithImpl<$Res>
    extends _$FaqCreationEventCopyWithImpl<$Res, _$_AddFaq>
    implements _$$_AddFaqCopyWith<$Res> {
  __$$_AddFaqCopyWithImpl(_$_AddFaq _value, $Res Function(_$_AddFaq) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? question = null,
    Object? answer = null,
    Object? profilePic = freezed,
  }) {
    return _then(_$_AddFaq(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AddFaq implements _AddFaq {
  const _$_AddFaq(
      {required this.context,
      required this.question,
      required this.answer,
      this.profilePic});

  @override
  final BuildContext context;
  @override
  final String question;
  @override
  final String answer;
  @override
  final String? profilePic;

  @override
  String toString() {
    return 'FaqCreationEvent.addFaq(context: $context, question: $question, answer: $answer, profilePic: $profilePic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddFaq &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, context, question, answer, profilePic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddFaqCopyWith<_$_AddFaq> get copyWith =>
      __$$_AddFaqCopyWithImpl<_$_AddFaq>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String question,
            String answer, String? profilePic)
        addFaq,
    required TResult Function(
            String userId, BuildContext context, String question, String answer)
        updateFaq,
  }) {
    return addFaq(context, question, answer, profilePic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String question, String answer,
            String? profilePic)?
        addFaq,
    TResult? Function(String userId, BuildContext context, String question,
            String answer)?
        updateFaq,
  }) {
    return addFaq?.call(context, question, answer, profilePic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String question, String answer,
            String? profilePic)?
        addFaq,
    TResult Function(String userId, BuildContext context, String question,
            String answer)?
        updateFaq,
    required TResult orElse(),
  }) {
    if (addFaq != null) {
      return addFaq(context, question, answer, profilePic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddFaq value) addFaq,
    required TResult Function(_UpdateFaq value) updateFaq,
  }) {
    return addFaq(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddFaq value)? addFaq,
    TResult? Function(_UpdateFaq value)? updateFaq,
  }) {
    return addFaq?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddFaq value)? addFaq,
    TResult Function(_UpdateFaq value)? updateFaq,
    required TResult orElse(),
  }) {
    if (addFaq != null) {
      return addFaq(this);
    }
    return orElse();
  }
}

abstract class _AddFaq implements FaqCreationEvent {
  const factory _AddFaq(
      {required final BuildContext context,
      required final String question,
      required final String answer,
      final String? profilePic}) = _$_AddFaq;

  @override
  BuildContext get context;
  @override
  String get question;
  @override
  String get answer;
  String? get profilePic;
  @override
  @JsonKey(ignore: true)
  _$$_AddFaqCopyWith<_$_AddFaq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateFaqCopyWith<$Res>
    implements $FaqCreationEventCopyWith<$Res> {
  factory _$$_UpdateFaqCopyWith(
          _$_UpdateFaq value, $Res Function(_$_UpdateFaq) then) =
      __$$_UpdateFaqCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId, BuildContext context, String question, String answer});
}

/// @nodoc
class __$$_UpdateFaqCopyWithImpl<$Res>
    extends _$FaqCreationEventCopyWithImpl<$Res, _$_UpdateFaq>
    implements _$$_UpdateFaqCopyWith<$Res> {
  __$$_UpdateFaqCopyWithImpl(
      _$_UpdateFaq _value, $Res Function(_$_UpdateFaq) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? context = null,
    Object? question = null,
    Object? answer = null,
  }) {
    return _then(_$_UpdateFaq(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateFaq implements _UpdateFaq {
  const _$_UpdateFaq(
      {required this.userId,
      required this.context,
      required this.question,
      required this.answer});

  @override
  final String userId;
  @override
  final BuildContext context;
  @override
  final String question;
  @override
  final String answer;

  @override
  String toString() {
    return 'FaqCreationEvent.updateFaq(userId: $userId, context: $context, question: $question, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateFaq &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, context, question, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateFaqCopyWith<_$_UpdateFaq> get copyWith =>
      __$$_UpdateFaqCopyWithImpl<_$_UpdateFaq>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String question,
            String answer, String? profilePic)
        addFaq,
    required TResult Function(
            String userId, BuildContext context, String question, String answer)
        updateFaq,
  }) {
    return updateFaq(userId, context, question, answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String question, String answer,
            String? profilePic)?
        addFaq,
    TResult? Function(String userId, BuildContext context, String question,
            String answer)?
        updateFaq,
  }) {
    return updateFaq?.call(userId, context, question, answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String question, String answer,
            String? profilePic)?
        addFaq,
    TResult Function(String userId, BuildContext context, String question,
            String answer)?
        updateFaq,
    required TResult orElse(),
  }) {
    if (updateFaq != null) {
      return updateFaq(userId, context, question, answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddFaq value) addFaq,
    required TResult Function(_UpdateFaq value) updateFaq,
  }) {
    return updateFaq(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddFaq value)? addFaq,
    TResult? Function(_UpdateFaq value)? updateFaq,
  }) {
    return updateFaq?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddFaq value)? addFaq,
    TResult Function(_UpdateFaq value)? updateFaq,
    required TResult orElse(),
  }) {
    if (updateFaq != null) {
      return updateFaq(this);
    }
    return orElse();
  }
}

abstract class _UpdateFaq implements FaqCreationEvent {
  const factory _UpdateFaq(
      {required final String userId,
      required final BuildContext context,
      required final String question,
      required final String answer}) = _$_UpdateFaq;

  String get userId;
  @override
  BuildContext get context;
  @override
  String get question;
  @override
  String get answer;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateFaqCopyWith<_$_UpdateFaq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FaqCreationState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String? get error =>
      throw _privateConstructorUsedError; // required CommonResponseUse? addResponse,
// required CommonResponseUse? updateResponse,
// required AdminViewResponse? viewResponse,
// required GetRoleResponse? rolesResponse,
  bool get isClientError => throw _privateConstructorUsedError;
  bool get isDropDownError => throw _privateConstructorUsedError;
  bool get isLoadingButton => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FaqCreationStateCopyWith<FaqCreationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqCreationStateCopyWith<$Res> {
  factory $FaqCreationStateCopyWith(
          FaqCreationState value, $Res Function(FaqCreationState) then) =
      _$FaqCreationStateCopyWithImpl<$Res, FaqCreationState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      String? error,
      bool isClientError,
      bool isDropDownError,
      bool isLoadingButton});
}

/// @nodoc
class _$FaqCreationStateCopyWithImpl<$Res, $Val extends FaqCreationState>
    implements $FaqCreationStateCopyWith<$Res> {
  _$FaqCreationStateCopyWithImpl(this._value, this._then);

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
    Object? isDropDownError = null,
    Object? isLoadingButton = null,
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
      isDropDownError: null == isDropDownError
          ? _value.isDropDownError
          : isDropDownError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingButton: null == isLoadingButton
          ? _value.isLoadingButton
          : isLoadingButton // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FaqCreationStateCopyWith<$Res>
    implements $FaqCreationStateCopyWith<$Res> {
  factory _$$_FaqCreationStateCopyWith(
          _$_FaqCreationState value, $Res Function(_$_FaqCreationState) then) =
      __$$_FaqCreationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      String? error,
      bool isClientError,
      bool isDropDownError,
      bool isLoadingButton});
}

/// @nodoc
class __$$_FaqCreationStateCopyWithImpl<$Res>
    extends _$FaqCreationStateCopyWithImpl<$Res, _$_FaqCreationState>
    implements _$$_FaqCreationStateCopyWith<$Res> {
  __$$_FaqCreationStateCopyWithImpl(
      _$_FaqCreationState _value, $Res Function(_$_FaqCreationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? error = freezed,
    Object? isClientError = null,
    Object? isDropDownError = null,
    Object? isLoadingButton = null,
  }) {
    return _then(_$_FaqCreationState(
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
      isDropDownError: null == isDropDownError
          ? _value.isDropDownError
          : isDropDownError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingButton: null == isLoadingButton
          ? _value.isLoadingButton
          : isLoadingButton // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FaqCreationState implements _FaqCreationState {
  const _$_FaqCreationState(
      {required this.isLoading,
      required this.isError,
      required this.error,
      this.isClientError = false,
      this.isDropDownError = false,
      this.isLoadingButton = false});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final String? error;
// required CommonResponseUse? addResponse,
// required CommonResponseUse? updateResponse,
// required AdminViewResponse? viewResponse,
// required GetRoleResponse? rolesResponse,
  @override
  @JsonKey()
  final bool isClientError;
  @override
  @JsonKey()
  final bool isDropDownError;
  @override
  @JsonKey()
  final bool isLoadingButton;

  @override
  String toString() {
    return 'FaqCreationState(isLoading: $isLoading, isError: $isError, error: $error, isClientError: $isClientError, isDropDownError: $isDropDownError, isLoadingButton: $isLoadingButton)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FaqCreationState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isClientError, isClientError) ||
                other.isClientError == isClientError) &&
            (identical(other.isDropDownError, isDropDownError) ||
                other.isDropDownError == isDropDownError) &&
            (identical(other.isLoadingButton, isLoadingButton) ||
                other.isLoadingButton == isLoadingButton));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError, error,
      isClientError, isDropDownError, isLoadingButton);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FaqCreationStateCopyWith<_$_FaqCreationState> get copyWith =>
      __$$_FaqCreationStateCopyWithImpl<_$_FaqCreationState>(this, _$identity);
}

abstract class _FaqCreationState implements FaqCreationState {
  const factory _FaqCreationState(
      {required final bool isLoading,
      required final bool isError,
      required final String? error,
      final bool isClientError,
      final bool isDropDownError,
      final bool isLoadingButton}) = _$_FaqCreationState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  String? get error;
  @override // required CommonResponseUse? addResponse,
// required CommonResponseUse? updateResponse,
// required AdminViewResponse? viewResponse,
// required GetRoleResponse? rolesResponse,
  bool get isClientError;
  @override
  bool get isDropDownError;
  @override
  bool get isLoadingButton;
  @override
  @JsonKey(ignore: true)
  _$$_FaqCreationStateCopyWith<_$_FaqCreationState> get copyWith =>
      throw _privateConstructorUsedError;
}
