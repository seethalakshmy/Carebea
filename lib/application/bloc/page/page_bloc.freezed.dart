// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PageEvent {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get pageFor => throw _privateConstructorUsedError;
  BuildContext get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String description, String? pageFor,
            BuildContext context)
        createPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String description, String? pageFor,
            BuildContext context)?
        createPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String description, String? pageFor,
            BuildContext context)?
        createPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatePage value) createPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatePage value)? createPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePage value)? createPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageEventCopyWith<PageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageEventCopyWith<$Res> {
  factory $PageEventCopyWith(PageEvent value, $Res Function(PageEvent) then) =
      _$PageEventCopyWithImpl<$Res, PageEvent>;
  @useResult
  $Res call(
      {String title,
      String description,
      String? pageFor,
      BuildContext context});
}

/// @nodoc
class _$PageEventCopyWithImpl<$Res, $Val extends PageEvent>
    implements $PageEventCopyWith<$Res> {
  _$PageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? pageFor = freezed,
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pageFor: freezed == pageFor
          ? _value.pageFor
          : pageFor // ignore: cast_nullable_to_non_nullable
              as String?,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreatePageCopyWith<$Res>
    implements $PageEventCopyWith<$Res> {
  factory _$$_CreatePageCopyWith(
          _$_CreatePage value, $Res Function(_$_CreatePage) then) =
      __$$_CreatePageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      String? pageFor,
      BuildContext context});
}

/// @nodoc
class __$$_CreatePageCopyWithImpl<$Res>
    extends _$PageEventCopyWithImpl<$Res, _$_CreatePage>
    implements _$$_CreatePageCopyWith<$Res> {
  __$$_CreatePageCopyWithImpl(
      _$_CreatePage _value, $Res Function(_$_CreatePage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? pageFor = freezed,
    Object? context = null,
  }) {
    return _then(_$_CreatePage(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pageFor: freezed == pageFor
          ? _value.pageFor
          : pageFor // ignore: cast_nullable_to_non_nullable
              as String?,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_CreatePage implements _CreatePage {
  const _$_CreatePage(
      {required this.title,
      required this.description,
      required this.pageFor,
      required this.context});

  @override
  final String title;
  @override
  final String description;
  @override
  final String? pageFor;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'PageEvent.createPage(title: $title, description: $description, pageFor: $pageFor, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatePage &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.pageFor, pageFor) || other.pageFor == pageFor) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, pageFor, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreatePageCopyWith<_$_CreatePage> get copyWith =>
      __$$_CreatePageCopyWithImpl<_$_CreatePage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String description, String? pageFor,
            BuildContext context)
        createPage,
  }) {
    return createPage(title, description, pageFor, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String description, String? pageFor,
            BuildContext context)?
        createPage,
  }) {
    return createPage?.call(title, description, pageFor, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String description, String? pageFor,
            BuildContext context)?
        createPage,
    required TResult orElse(),
  }) {
    if (createPage != null) {
      return createPage(title, description, pageFor, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatePage value) createPage,
  }) {
    return createPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatePage value)? createPage,
  }) {
    return createPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePage value)? createPage,
    required TResult orElse(),
  }) {
    if (createPage != null) {
      return createPage(this);
    }
    return orElse();
  }
}

abstract class _CreatePage implements PageEvent {
  const factory _CreatePage(
      {required final String title,
      required final String description,
      required final String? pageFor,
      required final BuildContext context}) = _$_CreatePage;

  @override
  String get title;
  @override
  String get description;
  @override
  String? get pageFor;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$_CreatePageCopyWith<_$_CreatePage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PageState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  CommonResponse? get response => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageStateCopyWith<PageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageStateCopyWith<$Res> {
  factory $PageStateCopyWith(PageState value, $Res Function(PageState) then) =
      _$PageStateCopyWithImpl<$Res, PageState>;
  @useResult
  $Res call({bool isLoading, bool isError, CommonResponse? response});
}

/// @nodoc
class _$PageStateCopyWithImpl<$Res, $Val extends PageState>
    implements $PageStateCopyWith<$Res> {
  _$PageStateCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PageStateCopyWith<$Res> implements $PageStateCopyWith<$Res> {
  factory _$$_PageStateCopyWith(
          _$_PageState value, $Res Function(_$_PageState) then) =
      __$$_PageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool isError, CommonResponse? response});
}

/// @nodoc
class __$$_PageStateCopyWithImpl<$Res>
    extends _$PageStateCopyWithImpl<$Res, _$_PageState>
    implements _$$_PageStateCopyWith<$Res> {
  __$$_PageStateCopyWithImpl(
      _$_PageState _value, $Res Function(_$_PageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? response = freezed,
  }) {
    return _then(_$_PageState(
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
    ));
  }
}

/// @nodoc

class _$_PageState implements _PageState {
  const _$_PageState(
      {required this.isLoading, required this.isError, required this.response});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final CommonResponse? response;

  @override
  String toString() {
    return 'PageState(isLoading: $isLoading, isError: $isError, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PageState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PageStateCopyWith<_$_PageState> get copyWith =>
      __$$_PageStateCopyWithImpl<_$_PageState>(this, _$identity);
}

abstract class _PageState implements PageState {
  const factory _PageState(
      {required final bool isLoading,
      required final bool isError,
      required final CommonResponse? response}) = _$_PageState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  CommonResponse? get response;
  @override
  @JsonKey(ignore: true)
  _$$_PageStateCopyWith<_$_PageState> get copyWith =>
      throw _privateConstructorUsedError;
}
