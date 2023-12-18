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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getFaq,
    required TResult Function(BuildContext context, String question,
            String answer, String status, bool forClient, String? profilePic)
        addFaq,
    required TResult Function(String id, String question, String answer,
            String status, bool forClient, BuildContext context)
        updateFaq,
    required TResult Function(int isSelected) radioForClient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getFaq,
    TResult? Function(BuildContext context, String question, String answer,
            String status, bool forClient, String? profilePic)?
        addFaq,
    TResult? Function(String id, String question, String answer, String status,
            bool forClient, BuildContext context)?
        updateFaq,
    TResult? Function(int isSelected)? radioForClient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getFaq,
    TResult Function(BuildContext context, String question, String answer,
            String status, bool forClient, String? profilePic)?
        addFaq,
    TResult Function(String id, String question, String answer, String status,
            bool forClient, BuildContext context)?
        updateFaq,
    TResult Function(int isSelected)? radioForClient,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFaq value) getFaq,
    required TResult Function(_AddFaq value) addFaq,
    required TResult Function(_UpdateFaq value) updateFaq,
    required TResult Function(_RadioForClient value) radioForClient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFaq value)? getFaq,
    TResult? Function(_AddFaq value)? addFaq,
    TResult? Function(_UpdateFaq value)? updateFaq,
    TResult? Function(_RadioForClient value)? radioForClient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFaq value)? getFaq,
    TResult Function(_AddFaq value)? addFaq,
    TResult Function(_UpdateFaq value)? updateFaq,
    TResult Function(_RadioForClient value)? radioForClient,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqCreationEventCopyWith<$Res> {
  factory $FaqCreationEventCopyWith(
          FaqCreationEvent value, $Res Function(FaqCreationEvent) then) =
      _$FaqCreationEventCopyWithImpl<$Res, FaqCreationEvent>;
}

/// @nodoc
class _$FaqCreationEventCopyWithImpl<$Res, $Val extends FaqCreationEvent>
    implements $FaqCreationEventCopyWith<$Res> {
  _$FaqCreationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetFaqCopyWith<$Res> {
  factory _$$_GetFaqCopyWith(_$_GetFaq value, $Res Function(_$_GetFaq) then) =
      __$$_GetFaqCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_GetFaqCopyWithImpl<$Res>
    extends _$FaqCreationEventCopyWithImpl<$Res, _$_GetFaq>
    implements _$$_GetFaqCopyWith<$Res> {
  __$$_GetFaqCopyWithImpl(_$_GetFaq _value, $Res Function(_$_GetFaq) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_GetFaq(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetFaq implements _GetFaq {
  const _$_GetFaq({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'FaqCreationEvent.getFaq(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetFaq &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetFaqCopyWith<_$_GetFaq> get copyWith =>
      __$$_GetFaqCopyWithImpl<_$_GetFaq>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getFaq,
    required TResult Function(BuildContext context, String question,
            String answer, String status, bool forClient, String? profilePic)
        addFaq,
    required TResult Function(String id, String question, String answer,
            String status, bool forClient, BuildContext context)
        updateFaq,
    required TResult Function(int isSelected) radioForClient,
  }) {
    return getFaq(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getFaq,
    TResult? Function(BuildContext context, String question, String answer,
            String status, bool forClient, String? profilePic)?
        addFaq,
    TResult? Function(String id, String question, String answer, String status,
            bool forClient, BuildContext context)?
        updateFaq,
    TResult? Function(int isSelected)? radioForClient,
  }) {
    return getFaq?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getFaq,
    TResult Function(BuildContext context, String question, String answer,
            String status, bool forClient, String? profilePic)?
        addFaq,
    TResult Function(String id, String question, String answer, String status,
            bool forClient, BuildContext context)?
        updateFaq,
    TResult Function(int isSelected)? radioForClient,
    required TResult orElse(),
  }) {
    if (getFaq != null) {
      return getFaq(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFaq value) getFaq,
    required TResult Function(_AddFaq value) addFaq,
    required TResult Function(_UpdateFaq value) updateFaq,
    required TResult Function(_RadioForClient value) radioForClient,
  }) {
    return getFaq(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFaq value)? getFaq,
    TResult? Function(_AddFaq value)? addFaq,
    TResult? Function(_UpdateFaq value)? updateFaq,
    TResult? Function(_RadioForClient value)? radioForClient,
  }) {
    return getFaq?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFaq value)? getFaq,
    TResult Function(_AddFaq value)? addFaq,
    TResult Function(_UpdateFaq value)? updateFaq,
    TResult Function(_RadioForClient value)? radioForClient,
    required TResult orElse(),
  }) {
    if (getFaq != null) {
      return getFaq(this);
    }
    return orElse();
  }
}

abstract class _GetFaq implements FaqCreationEvent {
  const factory _GetFaq({required final String id}) = _$_GetFaq;

  String get id;
  @JsonKey(ignore: true)
  _$$_GetFaqCopyWith<_$_GetFaq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddFaqCopyWith<$Res> {
  factory _$$_AddFaqCopyWith(_$_AddFaq value, $Res Function(_$_AddFaq) then) =
      __$$_AddFaqCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BuildContext context,
      String question,
      String answer,
      String status,
      bool forClient,
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
    Object? status = null,
    Object? forClient = null,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      forClient: null == forClient
          ? _value.forClient
          : forClient // ignore: cast_nullable_to_non_nullable
              as bool,
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
      required this.status,
      required this.forClient,
      this.profilePic});

  @override
  final BuildContext context;
  @override
  final String question;
  @override
  final String answer;
  @override
  final String status;
  @override
  final bool forClient;
  @override
  final String? profilePic;

  @override
  String toString() {
    return 'FaqCreationEvent.addFaq(context: $context, question: $question, answer: $answer, status: $status, forClient: $forClient, profilePic: $profilePic)';
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
            (identical(other.status, status) || other.status == status) &&
            (identical(other.forClient, forClient) ||
                other.forClient == forClient) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, context, question, answer, status, forClient, profilePic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddFaqCopyWith<_$_AddFaq> get copyWith =>
      __$$_AddFaqCopyWithImpl<_$_AddFaq>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getFaq,
    required TResult Function(BuildContext context, String question,
            String answer, String status, bool forClient, String? profilePic)
        addFaq,
    required TResult Function(String id, String question, String answer,
            String status, bool forClient, BuildContext context)
        updateFaq,
    required TResult Function(int isSelected) radioForClient,
  }) {
    return addFaq(context, question, answer, status, forClient, profilePic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getFaq,
    TResult? Function(BuildContext context, String question, String answer,
            String status, bool forClient, String? profilePic)?
        addFaq,
    TResult? Function(String id, String question, String answer, String status,
            bool forClient, BuildContext context)?
        updateFaq,
    TResult? Function(int isSelected)? radioForClient,
  }) {
    return addFaq?.call(
        context, question, answer, status, forClient, profilePic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getFaq,
    TResult Function(BuildContext context, String question, String answer,
            String status, bool forClient, String? profilePic)?
        addFaq,
    TResult Function(String id, String question, String answer, String status,
            bool forClient, BuildContext context)?
        updateFaq,
    TResult Function(int isSelected)? radioForClient,
    required TResult orElse(),
  }) {
    if (addFaq != null) {
      return addFaq(context, question, answer, status, forClient, profilePic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFaq value) getFaq,
    required TResult Function(_AddFaq value) addFaq,
    required TResult Function(_UpdateFaq value) updateFaq,
    required TResult Function(_RadioForClient value) radioForClient,
  }) {
    return addFaq(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFaq value)? getFaq,
    TResult? Function(_AddFaq value)? addFaq,
    TResult? Function(_UpdateFaq value)? updateFaq,
    TResult? Function(_RadioForClient value)? radioForClient,
  }) {
    return addFaq?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFaq value)? getFaq,
    TResult Function(_AddFaq value)? addFaq,
    TResult Function(_UpdateFaq value)? updateFaq,
    TResult Function(_RadioForClient value)? radioForClient,
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
      required final String status,
      required final bool forClient,
      final String? profilePic}) = _$_AddFaq;

  BuildContext get context;
  String get question;
  String get answer;
  String get status;
  bool get forClient;
  String? get profilePic;
  @JsonKey(ignore: true)
  _$$_AddFaqCopyWith<_$_AddFaq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateFaqCopyWith<$Res> {
  factory _$$_UpdateFaqCopyWith(
          _$_UpdateFaq value, $Res Function(_$_UpdateFaq) then) =
      __$$_UpdateFaqCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String id,
      String question,
      String answer,
      String status,
      bool forClient,
      BuildContext context});
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
    Object? id = null,
    Object? question = null,
    Object? answer = null,
    Object? status = null,
    Object? forClient = null,
    Object? context = null,
  }) {
    return _then(_$_UpdateFaq(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      forClient: null == forClient
          ? _value.forClient
          : forClient // ignore: cast_nullable_to_non_nullable
              as bool,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_UpdateFaq implements _UpdateFaq {
  const _$_UpdateFaq(
      {required this.id,
      required this.question,
      required this.answer,
      required this.status,
      required this.forClient,
      required this.context});

  @override
  final String id;
  @override
  final String question;
  @override
  final String answer;
  @override
  final String status;
  @override
  final bool forClient;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'FaqCreationEvent.updateFaq(id: $id, question: $question, answer: $answer, status: $status, forClient: $forClient, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateFaq &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.forClient, forClient) ||
                other.forClient == forClient) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, question, answer, status, forClient, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateFaqCopyWith<_$_UpdateFaq> get copyWith =>
      __$$_UpdateFaqCopyWithImpl<_$_UpdateFaq>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getFaq,
    required TResult Function(BuildContext context, String question,
            String answer, String status, bool forClient, String? profilePic)
        addFaq,
    required TResult Function(String id, String question, String answer,
            String status, bool forClient, BuildContext context)
        updateFaq,
    required TResult Function(int isSelected) radioForClient,
  }) {
    return updateFaq(id, question, answer, status, forClient, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getFaq,
    TResult? Function(BuildContext context, String question, String answer,
            String status, bool forClient, String? profilePic)?
        addFaq,
    TResult? Function(String id, String question, String answer, String status,
            bool forClient, BuildContext context)?
        updateFaq,
    TResult? Function(int isSelected)? radioForClient,
  }) {
    return updateFaq?.call(id, question, answer, status, forClient, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getFaq,
    TResult Function(BuildContext context, String question, String answer,
            String status, bool forClient, String? profilePic)?
        addFaq,
    TResult Function(String id, String question, String answer, String status,
            bool forClient, BuildContext context)?
        updateFaq,
    TResult Function(int isSelected)? radioForClient,
    required TResult orElse(),
  }) {
    if (updateFaq != null) {
      return updateFaq(id, question, answer, status, forClient, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFaq value) getFaq,
    required TResult Function(_AddFaq value) addFaq,
    required TResult Function(_UpdateFaq value) updateFaq,
    required TResult Function(_RadioForClient value) radioForClient,
  }) {
    return updateFaq(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFaq value)? getFaq,
    TResult? Function(_AddFaq value)? addFaq,
    TResult? Function(_UpdateFaq value)? updateFaq,
    TResult? Function(_RadioForClient value)? radioForClient,
  }) {
    return updateFaq?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFaq value)? getFaq,
    TResult Function(_AddFaq value)? addFaq,
    TResult Function(_UpdateFaq value)? updateFaq,
    TResult Function(_RadioForClient value)? radioForClient,
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
      {required final String id,
      required final String question,
      required final String answer,
      required final String status,
      required final bool forClient,
      required final BuildContext context}) = _$_UpdateFaq;

  String get id;
  String get question;
  String get answer;
  String get status;
  bool get forClient;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_UpdateFaqCopyWith<_$_UpdateFaq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RadioForClientCopyWith<$Res> {
  factory _$$_RadioForClientCopyWith(
          _$_RadioForClient value, $Res Function(_$_RadioForClient) then) =
      __$$_RadioForClientCopyWithImpl<$Res>;
  @useResult
  $Res call({int isSelected});
}

/// @nodoc
class __$$_RadioForClientCopyWithImpl<$Res>
    extends _$FaqCreationEventCopyWithImpl<$Res, _$_RadioForClient>
    implements _$$_RadioForClientCopyWith<$Res> {
  __$$_RadioForClientCopyWithImpl(
      _$_RadioForClient _value, $Res Function(_$_RadioForClient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSelected = null,
  }) {
    return _then(_$_RadioForClient(
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RadioForClient implements _RadioForClient {
  const _$_RadioForClient({required this.isSelected});

  @override
  final int isSelected;

  @override
  String toString() {
    return 'FaqCreationEvent.radioForClient(isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RadioForClient &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RadioForClientCopyWith<_$_RadioForClient> get copyWith =>
      __$$_RadioForClientCopyWithImpl<_$_RadioForClient>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getFaq,
    required TResult Function(BuildContext context, String question,
            String answer, String status, bool forClient, String? profilePic)
        addFaq,
    required TResult Function(String id, String question, String answer,
            String status, bool forClient, BuildContext context)
        updateFaq,
    required TResult Function(int isSelected) radioForClient,
  }) {
    return radioForClient(isSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getFaq,
    TResult? Function(BuildContext context, String question, String answer,
            String status, bool forClient, String? profilePic)?
        addFaq,
    TResult? Function(String id, String question, String answer, String status,
            bool forClient, BuildContext context)?
        updateFaq,
    TResult? Function(int isSelected)? radioForClient,
  }) {
    return radioForClient?.call(isSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getFaq,
    TResult Function(BuildContext context, String question, String answer,
            String status, bool forClient, String? profilePic)?
        addFaq,
    TResult Function(String id, String question, String answer, String status,
            bool forClient, BuildContext context)?
        updateFaq,
    TResult Function(int isSelected)? radioForClient,
    required TResult orElse(),
  }) {
    if (radioForClient != null) {
      return radioForClient(isSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFaq value) getFaq,
    required TResult Function(_AddFaq value) addFaq,
    required TResult Function(_UpdateFaq value) updateFaq,
    required TResult Function(_RadioForClient value) radioForClient,
  }) {
    return radioForClient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFaq value)? getFaq,
    TResult? Function(_AddFaq value)? addFaq,
    TResult? Function(_UpdateFaq value)? updateFaq,
    TResult? Function(_RadioForClient value)? radioForClient,
  }) {
    return radioForClient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFaq value)? getFaq,
    TResult Function(_AddFaq value)? addFaq,
    TResult Function(_UpdateFaq value)? updateFaq,
    TResult Function(_RadioForClient value)? radioForClient,
    required TResult orElse(),
  }) {
    if (radioForClient != null) {
      return radioForClient(this);
    }
    return orElse();
  }
}

abstract class _RadioForClient implements FaqCreationEvent {
  const factory _RadioForClient({required final int isSelected}) =
      _$_RadioForClient;

  int get isSelected;
  @JsonKey(ignore: true)
  _$$_RadioForClientCopyWith<_$_RadioForClient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FaqCreationState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingButton => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  int get isForClient => throw _privateConstructorUsedError;
  int get radioValue => throw _privateConstructorUsedError;
  Option<Either<ApiErrorHandler, FaqDetailsResponseModel>>
      get faqDetailOption => throw _privateConstructorUsedError;
  bool get isClientError => throw _privateConstructorUsedError;
  bool get isDropDownError => throw _privateConstructorUsedError;

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
      bool isLoadingButton,
      bool isError,
      String? error,
      int isForClient,
      int radioValue,
      Option<Either<ApiErrorHandler, FaqDetailsResponseModel>> faqDetailOption,
      bool isClientError,
      bool isDropDownError});
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
    Object? isLoadingButton = null,
    Object? isError = null,
    Object? error = freezed,
    Object? isForClient = null,
    Object? radioValue = null,
    Object? faqDetailOption = null,
    Object? isClientError = null,
    Object? isDropDownError = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
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
      isForClient: null == isForClient
          ? _value.isForClient
          : isForClient // ignore: cast_nullable_to_non_nullable
              as int,
      radioValue: null == radioValue
          ? _value.radioValue
          : radioValue // ignore: cast_nullable_to_non_nullable
              as int,
      faqDetailOption: null == faqDetailOption
          ? _value.faqDetailOption
          : faqDetailOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, FaqDetailsResponseModel>>,
      isClientError: null == isClientError
          ? _value.isClientError
          : isClientError // ignore: cast_nullable_to_non_nullable
              as bool,
      isDropDownError: null == isDropDownError
          ? _value.isDropDownError
          : isDropDownError // ignore: cast_nullable_to_non_nullable
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
      bool isLoadingButton,
      bool isError,
      String? error,
      int isForClient,
      int radioValue,
      Option<Either<ApiErrorHandler, FaqDetailsResponseModel>> faqDetailOption,
      bool isClientError,
      bool isDropDownError});
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
    Object? isLoadingButton = null,
    Object? isError = null,
    Object? error = freezed,
    Object? isForClient = null,
    Object? radioValue = null,
    Object? faqDetailOption = null,
    Object? isClientError = null,
    Object? isDropDownError = null,
  }) {
    return _then(_$_FaqCreationState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
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
      isForClient: null == isForClient
          ? _value.isForClient
          : isForClient // ignore: cast_nullable_to_non_nullable
              as int,
      radioValue: null == radioValue
          ? _value.radioValue
          : radioValue // ignore: cast_nullable_to_non_nullable
              as int,
      faqDetailOption: null == faqDetailOption
          ? _value.faqDetailOption
          : faqDetailOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiErrorHandler, FaqDetailsResponseModel>>,
      isClientError: null == isClientError
          ? _value.isClientError
          : isClientError // ignore: cast_nullable_to_non_nullable
              as bool,
      isDropDownError: null == isDropDownError
          ? _value.isDropDownError
          : isDropDownError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FaqCreationState implements _FaqCreationState {
  const _$_FaqCreationState(
      {required this.isLoading,
      required this.isLoadingButton,
      required this.isError,
      required this.error,
      required this.isForClient,
      required this.radioValue,
      required this.faqDetailOption,
      this.isClientError = false,
      this.isDropDownError = false});

  @override
  final bool isLoading;
  @override
  final bool isLoadingButton;
  @override
  final bool isError;
  @override
  final String? error;
  @override
  final int isForClient;
  @override
  final int radioValue;
  @override
  final Option<Either<ApiErrorHandler, FaqDetailsResponseModel>>
      faqDetailOption;
  @override
  @JsonKey()
  final bool isClientError;
  @override
  @JsonKey()
  final bool isDropDownError;

  @override
  String toString() {
    return 'FaqCreationState(isLoading: $isLoading, isLoadingButton: $isLoadingButton, isError: $isError, error: $error, isForClient: $isForClient, radioValue: $radioValue, faqDetailOption: $faqDetailOption, isClientError: $isClientError, isDropDownError: $isDropDownError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FaqCreationState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingButton, isLoadingButton) ||
                other.isLoadingButton == isLoadingButton) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isForClient, isForClient) ||
                other.isForClient == isForClient) &&
            (identical(other.radioValue, radioValue) ||
                other.radioValue == radioValue) &&
            (identical(other.faqDetailOption, faqDetailOption) ||
                other.faqDetailOption == faqDetailOption) &&
            (identical(other.isClientError, isClientError) ||
                other.isClientError == isClientError) &&
            (identical(other.isDropDownError, isDropDownError) ||
                other.isDropDownError == isDropDownError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isLoadingButton,
      isError,
      error,
      isForClient,
      radioValue,
      faqDetailOption,
      isClientError,
      isDropDownError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FaqCreationStateCopyWith<_$_FaqCreationState> get copyWith =>
      __$$_FaqCreationStateCopyWithImpl<_$_FaqCreationState>(this, _$identity);
}

abstract class _FaqCreationState implements FaqCreationState {
  const factory _FaqCreationState(
      {required final bool isLoading,
      required final bool isLoadingButton,
      required final bool isError,
      required final String? error,
      required final int isForClient,
      required final int radioValue,
      required final Option<Either<ApiErrorHandler, FaqDetailsResponseModel>>
          faqDetailOption,
      final bool isClientError,
      final bool isDropDownError}) = _$_FaqCreationState;

  @override
  bool get isLoading;
  @override
  bool get isLoadingButton;
  @override
  bool get isError;
  @override
  String? get error;
  @override
  int get isForClient;
  @override
  int get radioValue;
  @override
  Option<Either<ApiErrorHandler, FaqDetailsResponseModel>> get faqDetailOption;
  @override
  bool get isClientError;
  @override
  bool get isDropDownError;
  @override
  @JsonKey(ignore: true)
  _$$_FaqCreationStateCopyWith<_$_FaqCreationState> get copyWith =>
      throw _privateConstructorUsedError;
}
