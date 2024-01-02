// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_gift_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SendGiftEvent {
  BuildContext get context => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String userId, String title,
            String description)
        sendGift,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String userId, String title,
            String description)?
        sendGift,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String userId, String title,
            String description)?
        sendGift,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendGift value) sendGift,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendGift value)? sendGift,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendGift value)? sendGift,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SendGiftEventCopyWith<SendGiftEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendGiftEventCopyWith<$Res> {
  factory $SendGiftEventCopyWith(
          SendGiftEvent value, $Res Function(SendGiftEvent) then) =
      _$SendGiftEventCopyWithImpl<$Res, SendGiftEvent>;
  @useResult
  $Res call(
      {BuildContext context, String userId, String title, String description});
}

/// @nodoc
class _$SendGiftEventCopyWithImpl<$Res, $Val extends SendGiftEvent>
    implements $SendGiftEventCopyWith<$Res> {
  _$SendGiftEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? userId = null,
    Object? title = null,
    Object? description = null,
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SendGiftCopyWith<$Res>
    implements $SendGiftEventCopyWith<$Res> {
  factory _$$_SendGiftCopyWith(
          _$_SendGift value, $Res Function(_$_SendGift) then) =
      __$$_SendGiftCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BuildContext context, String userId, String title, String description});
}

/// @nodoc
class __$$_SendGiftCopyWithImpl<$Res>
    extends _$SendGiftEventCopyWithImpl<$Res, _$_SendGift>
    implements _$$_SendGiftCopyWith<$Res> {
  __$$_SendGiftCopyWithImpl(
      _$_SendGift _value, $Res Function(_$_SendGift) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? userId = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$_SendGift(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SendGift implements _SendGift {
  const _$_SendGift(
      {required this.context,
      required this.userId,
      required this.title,
      required this.description});

  @override
  final BuildContext context;
  @override
  final String userId;
  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'SendGiftEvent.sendGift(context: $context, userId: $userId, title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendGift &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, context, userId, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendGiftCopyWith<_$_SendGift> get copyWith =>
      __$$_SendGiftCopyWithImpl<_$_SendGift>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String userId, String title,
            String description)
        sendGift,
  }) {
    return sendGift(context, userId, title, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String userId, String title,
            String description)?
        sendGift,
  }) {
    return sendGift?.call(context, userId, title, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String userId, String title,
            String description)?
        sendGift,
    required TResult orElse(),
  }) {
    if (sendGift != null) {
      return sendGift(context, userId, title, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendGift value) sendGift,
  }) {
    return sendGift(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendGift value)? sendGift,
  }) {
    return sendGift?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendGift value)? sendGift,
    required TResult orElse(),
  }) {
    if (sendGift != null) {
      return sendGift(this);
    }
    return orElse();
  }
}

abstract class _SendGift implements SendGiftEvent {
  const factory _SendGift(
      {required final BuildContext context,
      required final String userId,
      required final String title,
      required final String description}) = _$_SendGift;

  @override
  BuildContext get context;
  @override
  String get userId;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_SendGiftCopyWith<_$_SendGift> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SendGiftState {
  bool get isLoadingButton => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SendGiftStateCopyWith<SendGiftState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendGiftStateCopyWith<$Res> {
  factory $SendGiftStateCopyWith(
          SendGiftState value, $Res Function(SendGiftState) then) =
      _$SendGiftStateCopyWithImpl<$Res, SendGiftState>;
  @useResult
  $Res call({bool isLoadingButton, bool isError, String? error});
}

/// @nodoc
class _$SendGiftStateCopyWithImpl<$Res, $Val extends SendGiftState>
    implements $SendGiftStateCopyWith<$Res> {
  _$SendGiftStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadingButton = null,
    Object? isError = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoadingButton: null == isLoadingButton
          ? _value.isLoadingButton
          : isLoadingButton // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SendGiftStateCopyWith<$Res>
    implements $SendGiftStateCopyWith<$Res> {
  factory _$$_SendGiftStateCopyWith(
          _$_SendGiftState value, $Res Function(_$_SendGiftState) then) =
      __$$_SendGiftStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoadingButton, bool isError, String? error});
}

/// @nodoc
class __$$_SendGiftStateCopyWithImpl<$Res>
    extends _$SendGiftStateCopyWithImpl<$Res, _$_SendGiftState>
    implements _$$_SendGiftStateCopyWith<$Res> {
  __$$_SendGiftStateCopyWithImpl(
      _$_SendGiftState _value, $Res Function(_$_SendGiftState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadingButton = null,
    Object? isError = null,
    Object? error = freezed,
  }) {
    return _then(_$_SendGiftState(
      isLoadingButton: null == isLoadingButton
          ? _value.isLoadingButton
          : isLoadingButton // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SendGiftState implements _SendGiftState {
  const _$_SendGiftState(
      {required this.isLoadingButton,
      required this.isError,
      required this.error});

  @override
  final bool isLoadingButton;
  @override
  final bool isError;
  @override
  final String? error;

  @override
  String toString() {
    return 'SendGiftState(isLoadingButton: $isLoadingButton, isError: $isError, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendGiftState &&
            (identical(other.isLoadingButton, isLoadingButton) ||
                other.isLoadingButton == isLoadingButton) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoadingButton, isError, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendGiftStateCopyWith<_$_SendGiftState> get copyWith =>
      __$$_SendGiftStateCopyWithImpl<_$_SendGiftState>(this, _$identity);
}

abstract class _SendGiftState implements SendGiftState {
  const factory _SendGiftState(
      {required final bool isLoadingButton,
      required final bool isError,
      required final String? error}) = _$_SendGiftState;

  @override
  bool get isLoadingButton;
  @override
  bool get isError;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_SendGiftStateCopyWith<_$_SendGiftState> get copyWith =>
      throw _privateConstructorUsedError;
}
