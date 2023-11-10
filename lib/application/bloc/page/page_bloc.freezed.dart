// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String description, String? pageFor,
            BuildContext context)
        createPage,
    required TResult Function() getPages,
    required TResult Function(int? isSelected) radioForClient,
    required TResult Function(String userId, String id, String title,
            String description, String? pageFor, BuildContext context)
        updatePage,
    required TResult Function(String id, BuildContext context) deletePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String description, String? pageFor,
            BuildContext context)?
        createPage,
    TResult? Function()? getPages,
    TResult? Function(int? isSelected)? radioForClient,
    TResult? Function(String userId, String id, String title,
            String description, String? pageFor, BuildContext context)?
        updatePage,
    TResult? Function(String id, BuildContext context)? deletePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String description, String? pageFor,
            BuildContext context)?
        createPage,
    TResult Function()? getPages,
    TResult Function(int? isSelected)? radioForClient,
    TResult Function(String userId, String id, String title, String description,
            String? pageFor, BuildContext context)?
        updatePage,
    TResult Function(String id, BuildContext context)? deletePage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatePage value) createPage,
    required TResult Function(_GetPages value) getPages,
    required TResult Function(_RadioForClient value) radioForClient,
    required TResult Function(_UpdatePage value) updatePage,
    required TResult Function(_DeletePage value) deletePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatePage value)? createPage,
    TResult? Function(_GetPages value)? getPages,
    TResult? Function(_RadioForClient value)? radioForClient,
    TResult? Function(_UpdatePage value)? updatePage,
    TResult? Function(_DeletePage value)? deletePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePage value)? createPage,
    TResult Function(_GetPages value)? getPages,
    TResult Function(_RadioForClient value)? radioForClient,
    TResult Function(_UpdatePage value)? updatePage,
    TResult Function(_DeletePage value)? deletePage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageEventCopyWith<$Res> {
  factory $PageEventCopyWith(PageEvent value, $Res Function(PageEvent) then) =
      _$PageEventCopyWithImpl<$Res, PageEvent>;
}

/// @nodoc
class _$PageEventCopyWithImpl<$Res, $Val extends PageEvent>
    implements $PageEventCopyWith<$Res> {
  _$PageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CreatePageCopyWith<$Res> {
  factory _$$_CreatePageCopyWith(
          _$_CreatePage value, $Res Function(_$_CreatePage) then) =
      __$$_CreatePageCopyWithImpl<$Res>;
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
    required TResult Function() getPages,
    required TResult Function(int? isSelected) radioForClient,
    required TResult Function(String userId, String id, String title,
            String description, String? pageFor, BuildContext context)
        updatePage,
    required TResult Function(String id, BuildContext context) deletePage,
  }) {
    return createPage(title, description, pageFor, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String description, String? pageFor,
            BuildContext context)?
        createPage,
    TResult? Function()? getPages,
    TResult? Function(int? isSelected)? radioForClient,
    TResult? Function(String userId, String id, String title,
            String description, String? pageFor, BuildContext context)?
        updatePage,
    TResult? Function(String id, BuildContext context)? deletePage,
  }) {
    return createPage?.call(title, description, pageFor, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String description, String? pageFor,
            BuildContext context)?
        createPage,
    TResult Function()? getPages,
    TResult Function(int? isSelected)? radioForClient,
    TResult Function(String userId, String id, String title, String description,
            String? pageFor, BuildContext context)?
        updatePage,
    TResult Function(String id, BuildContext context)? deletePage,
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
    required TResult Function(_GetPages value) getPages,
    required TResult Function(_RadioForClient value) radioForClient,
    required TResult Function(_UpdatePage value) updatePage,
    required TResult Function(_DeletePage value) deletePage,
  }) {
    return createPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatePage value)? createPage,
    TResult? Function(_GetPages value)? getPages,
    TResult? Function(_RadioForClient value)? radioForClient,
    TResult? Function(_UpdatePage value)? updatePage,
    TResult? Function(_DeletePage value)? deletePage,
  }) {
    return createPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePage value)? createPage,
    TResult Function(_GetPages value)? getPages,
    TResult Function(_RadioForClient value)? radioForClient,
    TResult Function(_UpdatePage value)? updatePage,
    TResult Function(_DeletePage value)? deletePage,
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

  String get title;
  String get description;
  String? get pageFor;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_CreatePageCopyWith<_$_CreatePage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetPagesCopyWith<$Res> {
  factory _$$_GetPagesCopyWith(
          _$_GetPages value, $Res Function(_$_GetPages) then) =
      __$$_GetPagesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetPagesCopyWithImpl<$Res>
    extends _$PageEventCopyWithImpl<$Res, _$_GetPages>
    implements _$$_GetPagesCopyWith<$Res> {
  __$$_GetPagesCopyWithImpl(
      _$_GetPages _value, $Res Function(_$_GetPages) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetPages implements _GetPages {
  const _$_GetPages();

  @override
  String toString() {
    return 'PageEvent.getPages()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetPages);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String description, String? pageFor,
            BuildContext context)
        createPage,
    required TResult Function() getPages,
    required TResult Function(int? isSelected) radioForClient,
    required TResult Function(String userId, String id, String title,
            String description, String? pageFor, BuildContext context)
        updatePage,
    required TResult Function(String id, BuildContext context) deletePage,
  }) {
    return getPages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String description, String? pageFor,
            BuildContext context)?
        createPage,
    TResult? Function()? getPages,
    TResult? Function(int? isSelected)? radioForClient,
    TResult? Function(String userId, String id, String title,
            String description, String? pageFor, BuildContext context)?
        updatePage,
    TResult? Function(String id, BuildContext context)? deletePage,
  }) {
    return getPages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String description, String? pageFor,
            BuildContext context)?
        createPage,
    TResult Function()? getPages,
    TResult Function(int? isSelected)? radioForClient,
    TResult Function(String userId, String id, String title, String description,
            String? pageFor, BuildContext context)?
        updatePage,
    TResult Function(String id, BuildContext context)? deletePage,
    required TResult orElse(),
  }) {
    if (getPages != null) {
      return getPages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatePage value) createPage,
    required TResult Function(_GetPages value) getPages,
    required TResult Function(_RadioForClient value) radioForClient,
    required TResult Function(_UpdatePage value) updatePage,
    required TResult Function(_DeletePage value) deletePage,
  }) {
    return getPages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatePage value)? createPage,
    TResult? Function(_GetPages value)? getPages,
    TResult? Function(_RadioForClient value)? radioForClient,
    TResult? Function(_UpdatePage value)? updatePage,
    TResult? Function(_DeletePage value)? deletePage,
  }) {
    return getPages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePage value)? createPage,
    TResult Function(_GetPages value)? getPages,
    TResult Function(_RadioForClient value)? radioForClient,
    TResult Function(_UpdatePage value)? updatePage,
    TResult Function(_DeletePage value)? deletePage,
    required TResult orElse(),
  }) {
    if (getPages != null) {
      return getPages(this);
    }
    return orElse();
  }
}

abstract class _GetPages implements PageEvent {
  const factory _GetPages() = _$_GetPages;
}

/// @nodoc
abstract class _$$_RadioForClientCopyWith<$Res> {
  factory _$$_RadioForClientCopyWith(
          _$_RadioForClient value, $Res Function(_$_RadioForClient) then) =
      __$$_RadioForClientCopyWithImpl<$Res>;
  @useResult
  $Res call({int? isSelected});
}

/// @nodoc
class __$$_RadioForClientCopyWithImpl<$Res>
    extends _$PageEventCopyWithImpl<$Res, _$_RadioForClient>
    implements _$$_RadioForClientCopyWith<$Res> {
  __$$_RadioForClientCopyWithImpl(
      _$_RadioForClient _value, $Res Function(_$_RadioForClient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSelected = freezed,
  }) {
    return _then(_$_RadioForClient(
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_RadioForClient implements _RadioForClient {
  const _$_RadioForClient({this.isSelected});

  @override
  final int? isSelected;

  @override
  String toString() {
    return 'PageEvent.radioForClient(isSelected: $isSelected)';
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
    required TResult Function(String title, String description, String? pageFor,
            BuildContext context)
        createPage,
    required TResult Function() getPages,
    required TResult Function(int? isSelected) radioForClient,
    required TResult Function(String userId, String id, String title,
            String description, String? pageFor, BuildContext context)
        updatePage,
    required TResult Function(String id, BuildContext context) deletePage,
  }) {
    return radioForClient(isSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String description, String? pageFor,
            BuildContext context)?
        createPage,
    TResult? Function()? getPages,
    TResult? Function(int? isSelected)? radioForClient,
    TResult? Function(String userId, String id, String title,
            String description, String? pageFor, BuildContext context)?
        updatePage,
    TResult? Function(String id, BuildContext context)? deletePage,
  }) {
    return radioForClient?.call(isSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String description, String? pageFor,
            BuildContext context)?
        createPage,
    TResult Function()? getPages,
    TResult Function(int? isSelected)? radioForClient,
    TResult Function(String userId, String id, String title, String description,
            String? pageFor, BuildContext context)?
        updatePage,
    TResult Function(String id, BuildContext context)? deletePage,
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
    required TResult Function(_CreatePage value) createPage,
    required TResult Function(_GetPages value) getPages,
    required TResult Function(_RadioForClient value) radioForClient,
    required TResult Function(_UpdatePage value) updatePage,
    required TResult Function(_DeletePage value) deletePage,
  }) {
    return radioForClient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatePage value)? createPage,
    TResult? Function(_GetPages value)? getPages,
    TResult? Function(_RadioForClient value)? radioForClient,
    TResult? Function(_UpdatePage value)? updatePage,
    TResult? Function(_DeletePage value)? deletePage,
  }) {
    return radioForClient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePage value)? createPage,
    TResult Function(_GetPages value)? getPages,
    TResult Function(_RadioForClient value)? radioForClient,
    TResult Function(_UpdatePage value)? updatePage,
    TResult Function(_DeletePage value)? deletePage,
    required TResult orElse(),
  }) {
    if (radioForClient != null) {
      return radioForClient(this);
    }
    return orElse();
  }
}

abstract class _RadioForClient implements PageEvent {
  const factory _RadioForClient({final int? isSelected}) = _$_RadioForClient;

  int? get isSelected;
  @JsonKey(ignore: true)
  _$$_RadioForClientCopyWith<_$_RadioForClient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdatePageCopyWith<$Res> {
  factory _$$_UpdatePageCopyWith(
          _$_UpdatePage value, $Res Function(_$_UpdatePage) then) =
      __$$_UpdatePageCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String userId,
      String id,
      String title,
      String description,
      String? pageFor,
      BuildContext context});
}

/// @nodoc
class __$$_UpdatePageCopyWithImpl<$Res>
    extends _$PageEventCopyWithImpl<$Res, _$_UpdatePage>
    implements _$$_UpdatePageCopyWith<$Res> {
  __$$_UpdatePageCopyWithImpl(
      _$_UpdatePage _value, $Res Function(_$_UpdatePage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? pageFor = freezed,
    Object? context = null,
  }) {
    return _then(_$_UpdatePage(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$_UpdatePage implements _UpdatePage {
  const _$_UpdatePage(
      {required this.userId,
      required this.id,
      required this.title,
      required this.description,
      required this.pageFor,
      required this.context});

  @override
  final String userId;
  @override
  final String id;
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
    return 'PageEvent.updatePage(userId: $userId, id: $id, title: $title, description: $description, pageFor: $pageFor, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdatePage &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.pageFor, pageFor) || other.pageFor == pageFor) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, userId, id, title, description, pageFor, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdatePageCopyWith<_$_UpdatePage> get copyWith =>
      __$$_UpdatePageCopyWithImpl<_$_UpdatePage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String description, String? pageFor,
            BuildContext context)
        createPage,
    required TResult Function() getPages,
    required TResult Function(int? isSelected) radioForClient,
    required TResult Function(String userId, String id, String title,
            String description, String? pageFor, BuildContext context)
        updatePage,
    required TResult Function(String id, BuildContext context) deletePage,
  }) {
    return updatePage(userId, id, title, description, pageFor, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String description, String? pageFor,
            BuildContext context)?
        createPage,
    TResult? Function()? getPages,
    TResult? Function(int? isSelected)? radioForClient,
    TResult? Function(String userId, String id, String title,
            String description, String? pageFor, BuildContext context)?
        updatePage,
    TResult? Function(String id, BuildContext context)? deletePage,
  }) {
    return updatePage?.call(userId, id, title, description, pageFor, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String description, String? pageFor,
            BuildContext context)?
        createPage,
    TResult Function()? getPages,
    TResult Function(int? isSelected)? radioForClient,
    TResult Function(String userId, String id, String title, String description,
            String? pageFor, BuildContext context)?
        updatePage,
    TResult Function(String id, BuildContext context)? deletePage,
    required TResult orElse(),
  }) {
    if (updatePage != null) {
      return updatePage(userId, id, title, description, pageFor, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatePage value) createPage,
    required TResult Function(_GetPages value) getPages,
    required TResult Function(_RadioForClient value) radioForClient,
    required TResult Function(_UpdatePage value) updatePage,
    required TResult Function(_DeletePage value) deletePage,
  }) {
    return updatePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatePage value)? createPage,
    TResult? Function(_GetPages value)? getPages,
    TResult? Function(_RadioForClient value)? radioForClient,
    TResult? Function(_UpdatePage value)? updatePage,
    TResult? Function(_DeletePage value)? deletePage,
  }) {
    return updatePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePage value)? createPage,
    TResult Function(_GetPages value)? getPages,
    TResult Function(_RadioForClient value)? radioForClient,
    TResult Function(_UpdatePage value)? updatePage,
    TResult Function(_DeletePage value)? deletePage,
    required TResult orElse(),
  }) {
    if (updatePage != null) {
      return updatePage(this);
    }
    return orElse();
  }
}

abstract class _UpdatePage implements PageEvent {
  const factory _UpdatePage(
      {required final String userId,
      required final String id,
      required final String title,
      required final String description,
      required final String? pageFor,
      required final BuildContext context}) = _$_UpdatePage;

  String get userId;
  String get id;
  String get title;
  String get description;
  String? get pageFor;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_UpdatePageCopyWith<_$_UpdatePage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeletePageCopyWith<$Res> {
  factory _$$_DeletePageCopyWith(
          _$_DeletePage value, $Res Function(_$_DeletePage) then) =
      __$$_DeletePageCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, BuildContext context});
}

/// @nodoc
class __$$_DeletePageCopyWithImpl<$Res>
    extends _$PageEventCopyWithImpl<$Res, _$_DeletePage>
    implements _$$_DeletePageCopyWith<$Res> {
  __$$_DeletePageCopyWithImpl(
      _$_DeletePage _value, $Res Function(_$_DeletePage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? context = null,
  }) {
    return _then(_$_DeletePage(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_DeletePage implements _DeletePage {
  const _$_DeletePage({required this.id, required this.context});

  @override
  final String id;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'PageEvent.deletePage(id: $id, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeletePage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeletePageCopyWith<_$_DeletePage> get copyWith =>
      __$$_DeletePageCopyWithImpl<_$_DeletePage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String description, String? pageFor,
            BuildContext context)
        createPage,
    required TResult Function() getPages,
    required TResult Function(int? isSelected) radioForClient,
    required TResult Function(String userId, String id, String title,
            String description, String? pageFor, BuildContext context)
        updatePage,
    required TResult Function(String id, BuildContext context) deletePage,
  }) {
    return deletePage(id, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String description, String? pageFor,
            BuildContext context)?
        createPage,
    TResult? Function()? getPages,
    TResult? Function(int? isSelected)? radioForClient,
    TResult? Function(String userId, String id, String title,
            String description, String? pageFor, BuildContext context)?
        updatePage,
    TResult? Function(String id, BuildContext context)? deletePage,
  }) {
    return deletePage?.call(id, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String description, String? pageFor,
            BuildContext context)?
        createPage,
    TResult Function()? getPages,
    TResult Function(int? isSelected)? radioForClient,
    TResult Function(String userId, String id, String title, String description,
            String? pageFor, BuildContext context)?
        updatePage,
    TResult Function(String id, BuildContext context)? deletePage,
    required TResult orElse(),
  }) {
    if (deletePage != null) {
      return deletePage(id, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatePage value) createPage,
    required TResult Function(_GetPages value) getPages,
    required TResult Function(_RadioForClient value) radioForClient,
    required TResult Function(_UpdatePage value) updatePage,
    required TResult Function(_DeletePage value) deletePage,
  }) {
    return deletePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatePage value)? createPage,
    TResult? Function(_GetPages value)? getPages,
    TResult? Function(_RadioForClient value)? radioForClient,
    TResult? Function(_UpdatePage value)? updatePage,
    TResult? Function(_DeletePage value)? deletePage,
  }) {
    return deletePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePage value)? createPage,
    TResult Function(_GetPages value)? getPages,
    TResult Function(_RadioForClient value)? radioForClient,
    TResult Function(_UpdatePage value)? updatePage,
    TResult Function(_DeletePage value)? deletePage,
    required TResult orElse(),
  }) {
    if (deletePage != null) {
      return deletePage(this);
    }
    return orElse();
  }
}

abstract class _DeletePage implements PageEvent {
  const factory _DeletePage(
      {required final String id,
      required final BuildContext context}) = _$_DeletePage;

  String get id;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_DeletePageCopyWith<_$_DeletePage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isLoading,
            bool isError,
            int isForClient,
            CommonResponse? response,
            GetPagesResponse? getPagesResponse,
            int radioValue)
        initial,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isLoading,
            bool isError,
            int isForClient,
            CommonResponse? response,
            GetPagesResponse? getPagesResponse,
            int radioValue)?
        initial,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isLoading,
            bool isError,
            int isForClient,
            CommonResponse? response,
            GetPagesResponse? getPagesResponse,
            int radioValue)?
        initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageStateCopyWith<$Res> {
  factory $PageStateCopyWith(PageState value, $Res Function(PageState) then) =
      _$PageStateCopyWithImpl<$Res, PageState>;
}

/// @nodoc
class _$PageStateCopyWithImpl<$Res, $Val extends PageState>
    implements $PageStateCopyWith<$Res> {
  _$PageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      int isForClient,
      CommonResponse? response,
      GetPagesResponse? getPagesResponse,
      int radioValue});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PageStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? isForClient = null,
    Object? response = freezed,
    Object? getPagesResponse = freezed,
    Object? radioValue = null,
  }) {
    return _then(_$_Initial(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isForClient: null == isForClient
          ? _value.isForClient
          : isForClient // ignore: cast_nullable_to_non_nullable
              as int,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as CommonResponse?,
      getPagesResponse: freezed == getPagesResponse
          ? _value.getPagesResponse
          : getPagesResponse // ignore: cast_nullable_to_non_nullable
              as GetPagesResponse?,
      radioValue: null == radioValue
          ? _value.radioValue
          : radioValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  _$_Initial(
      {required this.isLoading,
      required this.isError,
      required this.isForClient,
      required this.response,
      required this.getPagesResponse,
      required this.radioValue});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final int isForClient;
  @override
  final CommonResponse? response;
  @override
  final GetPagesResponse? getPagesResponse;
  @override
  final int radioValue;

  @override
  String toString() {
    return 'PageState.initial(isLoading: $isLoading, isError: $isError, isForClient: $isForClient, response: $response, getPagesResponse: $getPagesResponse, radioValue: $radioValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isForClient, isForClient) ||
                other.isForClient == isForClient) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.getPagesResponse, getPagesResponse) ||
                other.getPagesResponse == getPagesResponse) &&
            (identical(other.radioValue, radioValue) ||
                other.radioValue == radioValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError, isForClient,
      response, getPagesResponse, radioValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isLoading,
            bool isError,
            int isForClient,
            CommonResponse? response,
            GetPagesResponse? getPagesResponse,
            int radioValue)
        initial,
    required TResult Function() loading,
  }) {
    return initial(isLoading, isError, isForClient, response, getPagesResponse,
        radioValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isLoading,
            bool isError,
            int isForClient,
            CommonResponse? response,
            GetPagesResponse? getPagesResponse,
            int radioValue)?
        initial,
    TResult? Function()? loading,
  }) {
    return initial?.call(isLoading, isError, isForClient, response,
        getPagesResponse, radioValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isLoading,
            bool isError,
            int isForClient,
            CommonResponse? response,
            GetPagesResponse? getPagesResponse,
            int radioValue)?
        initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isLoading, isError, isForClient, response,
          getPagesResponse, radioValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PageState {
  factory _Initial(
      {required final bool isLoading,
      required final bool isError,
      required final int isForClient,
      required final CommonResponse? response,
      required final GetPagesResponse? getPagesResponse,
      required final int radioValue}) = _$_Initial;

  bool get isLoading;
  bool get isError;
  int get isForClient;
  CommonResponse? get response;
  GetPagesResponse? get getPagesResponse;
  int get radioValue;
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$PageStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  _$_Loading();

  @override
  String toString() {
    return 'PageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isLoading,
            bool isError,
            int isForClient,
            CommonResponse? response,
            GetPagesResponse? getPagesResponse,
            int radioValue)
        initial,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isLoading,
            bool isError,
            int isForClient,
            CommonResponse? response,
            GetPagesResponse? getPagesResponse,
            int radioValue)?
        initial,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isLoading,
            bool isError,
            int isForClient,
            CommonResponse? response,
            GetPagesResponse? getPagesResponse,
            int radioValue)?
        initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PageState {
  factory _Loading() = _$_Loading;
}
