// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_validation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FormValidationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) dropDown,
    required TResult Function(bool value) checkBox,
    required TResult Function() submit,
    required TResult Function() count,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? dropDown,
    TResult? Function(bool value)? checkBox,
    TResult? Function()? submit,
    TResult? Function()? count,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? dropDown,
    TResult Function(bool value)? checkBox,
    TResult Function()? submit,
    TResult Function()? count,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DropDown value) dropDown,
    required TResult Function(_CheckBox value) checkBox,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Count value) count,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DropDown value)? dropDown,
    TResult? Function(_CheckBox value)? checkBox,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Count value)? count,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DropDown value)? dropDown,
    TResult Function(_CheckBox value)? checkBox,
    TResult Function(_Submit value)? submit,
    TResult Function(_Count value)? count,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormValidationEventCopyWith<$Res> {
  factory $FormValidationEventCopyWith(
          FormValidationEvent value, $Res Function(FormValidationEvent) then) =
      _$FormValidationEventCopyWithImpl<$Res, FormValidationEvent>;
}

/// @nodoc
class _$FormValidationEventCopyWithImpl<$Res, $Val extends FormValidationEvent>
    implements $FormValidationEventCopyWith<$Res> {
  _$FormValidationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_DropDownCopyWith<$Res> {
  factory _$$_DropDownCopyWith(
          _$_DropDown value, $Res Function(_$_DropDown) then) =
      __$$_DropDownCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_DropDownCopyWithImpl<$Res>
    extends _$FormValidationEventCopyWithImpl<$Res, _$_DropDown>
    implements _$$_DropDownCopyWith<$Res> {
  __$$_DropDownCopyWithImpl(
      _$_DropDown _value, $Res Function(_$_DropDown) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_DropDown(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DropDown implements _DropDown {
  const _$_DropDown(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'FormValidationEvent.dropDown(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DropDown &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DropDownCopyWith<_$_DropDown> get copyWith =>
      __$$_DropDownCopyWithImpl<_$_DropDown>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) dropDown,
    required TResult Function(bool value) checkBox,
    required TResult Function() submit,
    required TResult Function() count,
  }) {
    return dropDown(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? dropDown,
    TResult? Function(bool value)? checkBox,
    TResult? Function()? submit,
    TResult? Function()? count,
  }) {
    return dropDown?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? dropDown,
    TResult Function(bool value)? checkBox,
    TResult Function()? submit,
    TResult Function()? count,
    required TResult orElse(),
  }) {
    if (dropDown != null) {
      return dropDown(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DropDown value) dropDown,
    required TResult Function(_CheckBox value) checkBox,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Count value) count,
  }) {
    return dropDown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DropDown value)? dropDown,
    TResult? Function(_CheckBox value)? checkBox,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Count value)? count,
  }) {
    return dropDown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DropDown value)? dropDown,
    TResult Function(_CheckBox value)? checkBox,
    TResult Function(_Submit value)? submit,
    TResult Function(_Count value)? count,
    required TResult orElse(),
  }) {
    if (dropDown != null) {
      return dropDown(this);
    }
    return orElse();
  }
}

abstract class _DropDown implements FormValidationEvent {
  const factory _DropDown(final String value) = _$_DropDown;

  String get value;
  @JsonKey(ignore: true)
  _$$_DropDownCopyWith<_$_DropDown> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CheckBoxCopyWith<$Res> {
  factory _$$_CheckBoxCopyWith(
          _$_CheckBox value, $Res Function(_$_CheckBox) then) =
      __$$_CheckBoxCopyWithImpl<$Res>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$_CheckBoxCopyWithImpl<$Res>
    extends _$FormValidationEventCopyWithImpl<$Res, _$_CheckBox>
    implements _$$_CheckBoxCopyWith<$Res> {
  __$$_CheckBoxCopyWithImpl(
      _$_CheckBox _value, $Res Function(_$_CheckBox) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_CheckBox(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CheckBox implements _CheckBox {
  const _$_CheckBox(this.value);

  @override
  final bool value;

  @override
  String toString() {
    return 'FormValidationEvent.checkBox(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckBox &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckBoxCopyWith<_$_CheckBox> get copyWith =>
      __$$_CheckBoxCopyWithImpl<_$_CheckBox>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) dropDown,
    required TResult Function(bool value) checkBox,
    required TResult Function() submit,
    required TResult Function() count,
  }) {
    return checkBox(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? dropDown,
    TResult? Function(bool value)? checkBox,
    TResult? Function()? submit,
    TResult? Function()? count,
  }) {
    return checkBox?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? dropDown,
    TResult Function(bool value)? checkBox,
    TResult Function()? submit,
    TResult Function()? count,
    required TResult orElse(),
  }) {
    if (checkBox != null) {
      return checkBox(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DropDown value) dropDown,
    required TResult Function(_CheckBox value) checkBox,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Count value) count,
  }) {
    return checkBox(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DropDown value)? dropDown,
    TResult? Function(_CheckBox value)? checkBox,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Count value)? count,
  }) {
    return checkBox?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DropDown value)? dropDown,
    TResult Function(_CheckBox value)? checkBox,
    TResult Function(_Submit value)? submit,
    TResult Function(_Count value)? count,
    required TResult orElse(),
  }) {
    if (checkBox != null) {
      return checkBox(this);
    }
    return orElse();
  }
}

abstract class _CheckBox implements FormValidationEvent {
  const factory _CheckBox(final bool value) = _$_CheckBox;

  bool get value;
  @JsonKey(ignore: true)
  _$$_CheckBoxCopyWith<_$_CheckBox> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubmitCopyWith<$Res> {
  factory _$$_SubmitCopyWith(_$_Submit value, $Res Function(_$_Submit) then) =
      __$$_SubmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SubmitCopyWithImpl<$Res>
    extends _$FormValidationEventCopyWithImpl<$Res, _$_Submit>
    implements _$$_SubmitCopyWith<$Res> {
  __$$_SubmitCopyWithImpl(_$_Submit _value, $Res Function(_$_Submit) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Submit implements _Submit {
  const _$_Submit();

  @override
  String toString() {
    return 'FormValidationEvent.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Submit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) dropDown,
    required TResult Function(bool value) checkBox,
    required TResult Function() submit,
    required TResult Function() count,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? dropDown,
    TResult? Function(bool value)? checkBox,
    TResult? Function()? submit,
    TResult? Function()? count,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? dropDown,
    TResult Function(bool value)? checkBox,
    TResult Function()? submit,
    TResult Function()? count,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DropDown value) dropDown,
    required TResult Function(_CheckBox value) checkBox,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Count value) count,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DropDown value)? dropDown,
    TResult? Function(_CheckBox value)? checkBox,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Count value)? count,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DropDown value)? dropDown,
    TResult Function(_CheckBox value)? checkBox,
    TResult Function(_Submit value)? submit,
    TResult Function(_Count value)? count,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements FormValidationEvent {
  const factory _Submit() = _$_Submit;
}

/// @nodoc
abstract class _$$_CountCopyWith<$Res> {
  factory _$$_CountCopyWith(_$_Count value, $Res Function(_$_Count) then) =
      __$$_CountCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CountCopyWithImpl<$Res>
    extends _$FormValidationEventCopyWithImpl<$Res, _$_Count>
    implements _$$_CountCopyWith<$Res> {
  __$$_CountCopyWithImpl(_$_Count _value, $Res Function(_$_Count) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Count implements _Count {
  const _$_Count();

  @override
  String toString() {
    return 'FormValidationEvent.count()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Count);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) dropDown,
    required TResult Function(bool value) checkBox,
    required TResult Function() submit,
    required TResult Function() count,
  }) {
    return count();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? dropDown,
    TResult? Function(bool value)? checkBox,
    TResult? Function()? submit,
    TResult? Function()? count,
  }) {
    return count?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? dropDown,
    TResult Function(bool value)? checkBox,
    TResult Function()? submit,
    TResult Function()? count,
    required TResult orElse(),
  }) {
    if (count != null) {
      return count();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DropDown value) dropDown,
    required TResult Function(_CheckBox value) checkBox,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Count value) count,
  }) {
    return count(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DropDown value)? dropDown,
    TResult? Function(_CheckBox value)? checkBox,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Count value)? count,
  }) {
    return count?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DropDown value)? dropDown,
    TResult Function(_CheckBox value)? checkBox,
    TResult Function(_Submit value)? submit,
    TResult Function(_Count value)? count,
    required TResult orElse(),
  }) {
    if (count != null) {
      return count(this);
    }
    return orElse();
  }
}

abstract class _Count implements FormValidationEvent {
  const factory _Count() = _$_Count;
}

/// @nodoc
mixin _$FormValidationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String value) dropDownSuccess,
    required TResult Function(bool value) checkBoxSuccess,
    required TResult Function() formSubmitSuccess,
    required TResult Function() countStart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String value)? dropDownSuccess,
    TResult? Function(bool value)? checkBoxSuccess,
    TResult? Function()? formSubmitSuccess,
    TResult? Function()? countStart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String value)? dropDownSuccess,
    TResult Function(bool value)? checkBoxSuccess,
    TResult Function()? formSubmitSuccess,
    TResult Function()? countStart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DropDownSuccess value) dropDownSuccess,
    required TResult Function(_CheckBoxSuccess value) checkBoxSuccess,
    required TResult Function(_FormSubmitSuccess value) formSubmitSuccess,
    required TResult Function(_CountStart value) countStart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DropDownSuccess value)? dropDownSuccess,
    TResult? Function(_CheckBoxSuccess value)? checkBoxSuccess,
    TResult? Function(_FormSubmitSuccess value)? formSubmitSuccess,
    TResult? Function(_CountStart value)? countStart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DropDownSuccess value)? dropDownSuccess,
    TResult Function(_CheckBoxSuccess value)? checkBoxSuccess,
    TResult Function(_FormSubmitSuccess value)? formSubmitSuccess,
    TResult Function(_CountStart value)? countStart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormValidationStateCopyWith<$Res> {
  factory $FormValidationStateCopyWith(
          FormValidationState value, $Res Function(FormValidationState) then) =
      _$FormValidationStateCopyWithImpl<$Res, FormValidationState>;
}

/// @nodoc
class _$FormValidationStateCopyWithImpl<$Res, $Val extends FormValidationState>
    implements $FormValidationStateCopyWith<$Res> {
  _$FormValidationStateCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$FormValidationStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'FormValidationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String value) dropDownSuccess,
    required TResult Function(bool value) checkBoxSuccess,
    required TResult Function() formSubmitSuccess,
    required TResult Function() countStart,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String value)? dropDownSuccess,
    TResult? Function(bool value)? checkBoxSuccess,
    TResult? Function()? formSubmitSuccess,
    TResult? Function()? countStart,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String value)? dropDownSuccess,
    TResult Function(bool value)? checkBoxSuccess,
    TResult Function()? formSubmitSuccess,
    TResult Function()? countStart,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DropDownSuccess value) dropDownSuccess,
    required TResult Function(_CheckBoxSuccess value) checkBoxSuccess,
    required TResult Function(_FormSubmitSuccess value) formSubmitSuccess,
    required TResult Function(_CountStart value) countStart,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DropDownSuccess value)? dropDownSuccess,
    TResult? Function(_CheckBoxSuccess value)? checkBoxSuccess,
    TResult? Function(_FormSubmitSuccess value)? formSubmitSuccess,
    TResult? Function(_CountStart value)? countStart,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DropDownSuccess value)? dropDownSuccess,
    TResult Function(_CheckBoxSuccess value)? checkBoxSuccess,
    TResult Function(_FormSubmitSuccess value)? formSubmitSuccess,
    TResult Function(_CountStart value)? countStart,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FormValidationState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_DropDownSuccessCopyWith<$Res> {
  factory _$$_DropDownSuccessCopyWith(
          _$_DropDownSuccess value, $Res Function(_$_DropDownSuccess) then) =
      __$$_DropDownSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_DropDownSuccessCopyWithImpl<$Res>
    extends _$FormValidationStateCopyWithImpl<$Res, _$_DropDownSuccess>
    implements _$$_DropDownSuccessCopyWith<$Res> {
  __$$_DropDownSuccessCopyWithImpl(
      _$_DropDownSuccess _value, $Res Function(_$_DropDownSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_DropDownSuccess(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DropDownSuccess implements _DropDownSuccess {
  const _$_DropDownSuccess(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'FormValidationState.dropDownSuccess(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DropDownSuccess &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DropDownSuccessCopyWith<_$_DropDownSuccess> get copyWith =>
      __$$_DropDownSuccessCopyWithImpl<_$_DropDownSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String value) dropDownSuccess,
    required TResult Function(bool value) checkBoxSuccess,
    required TResult Function() formSubmitSuccess,
    required TResult Function() countStart,
  }) {
    return dropDownSuccess(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String value)? dropDownSuccess,
    TResult? Function(bool value)? checkBoxSuccess,
    TResult? Function()? formSubmitSuccess,
    TResult? Function()? countStart,
  }) {
    return dropDownSuccess?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String value)? dropDownSuccess,
    TResult Function(bool value)? checkBoxSuccess,
    TResult Function()? formSubmitSuccess,
    TResult Function()? countStart,
    required TResult orElse(),
  }) {
    if (dropDownSuccess != null) {
      return dropDownSuccess(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DropDownSuccess value) dropDownSuccess,
    required TResult Function(_CheckBoxSuccess value) checkBoxSuccess,
    required TResult Function(_FormSubmitSuccess value) formSubmitSuccess,
    required TResult Function(_CountStart value) countStart,
  }) {
    return dropDownSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DropDownSuccess value)? dropDownSuccess,
    TResult? Function(_CheckBoxSuccess value)? checkBoxSuccess,
    TResult? Function(_FormSubmitSuccess value)? formSubmitSuccess,
    TResult? Function(_CountStart value)? countStart,
  }) {
    return dropDownSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DropDownSuccess value)? dropDownSuccess,
    TResult Function(_CheckBoxSuccess value)? checkBoxSuccess,
    TResult Function(_FormSubmitSuccess value)? formSubmitSuccess,
    TResult Function(_CountStart value)? countStart,
    required TResult orElse(),
  }) {
    if (dropDownSuccess != null) {
      return dropDownSuccess(this);
    }
    return orElse();
  }
}

abstract class _DropDownSuccess implements FormValidationState {
  const factory _DropDownSuccess(final String value) = _$_DropDownSuccess;

  String get value;
  @JsonKey(ignore: true)
  _$$_DropDownSuccessCopyWith<_$_DropDownSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CheckBoxSuccessCopyWith<$Res> {
  factory _$$_CheckBoxSuccessCopyWith(
          _$_CheckBoxSuccess value, $Res Function(_$_CheckBoxSuccess) then) =
      __$$_CheckBoxSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$_CheckBoxSuccessCopyWithImpl<$Res>
    extends _$FormValidationStateCopyWithImpl<$Res, _$_CheckBoxSuccess>
    implements _$$_CheckBoxSuccessCopyWith<$Res> {
  __$$_CheckBoxSuccessCopyWithImpl(
      _$_CheckBoxSuccess _value, $Res Function(_$_CheckBoxSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_CheckBoxSuccess(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CheckBoxSuccess implements _CheckBoxSuccess {
  const _$_CheckBoxSuccess(this.value);

  @override
  final bool value;

  @override
  String toString() {
    return 'FormValidationState.checkBoxSuccess(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckBoxSuccess &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckBoxSuccessCopyWith<_$_CheckBoxSuccess> get copyWith =>
      __$$_CheckBoxSuccessCopyWithImpl<_$_CheckBoxSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String value) dropDownSuccess,
    required TResult Function(bool value) checkBoxSuccess,
    required TResult Function() formSubmitSuccess,
    required TResult Function() countStart,
  }) {
    return checkBoxSuccess(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String value)? dropDownSuccess,
    TResult? Function(bool value)? checkBoxSuccess,
    TResult? Function()? formSubmitSuccess,
    TResult? Function()? countStart,
  }) {
    return checkBoxSuccess?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String value)? dropDownSuccess,
    TResult Function(bool value)? checkBoxSuccess,
    TResult Function()? formSubmitSuccess,
    TResult Function()? countStart,
    required TResult orElse(),
  }) {
    if (checkBoxSuccess != null) {
      return checkBoxSuccess(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DropDownSuccess value) dropDownSuccess,
    required TResult Function(_CheckBoxSuccess value) checkBoxSuccess,
    required TResult Function(_FormSubmitSuccess value) formSubmitSuccess,
    required TResult Function(_CountStart value) countStart,
  }) {
    return checkBoxSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DropDownSuccess value)? dropDownSuccess,
    TResult? Function(_CheckBoxSuccess value)? checkBoxSuccess,
    TResult? Function(_FormSubmitSuccess value)? formSubmitSuccess,
    TResult? Function(_CountStart value)? countStart,
  }) {
    return checkBoxSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DropDownSuccess value)? dropDownSuccess,
    TResult Function(_CheckBoxSuccess value)? checkBoxSuccess,
    TResult Function(_FormSubmitSuccess value)? formSubmitSuccess,
    TResult Function(_CountStart value)? countStart,
    required TResult orElse(),
  }) {
    if (checkBoxSuccess != null) {
      return checkBoxSuccess(this);
    }
    return orElse();
  }
}

abstract class _CheckBoxSuccess implements FormValidationState {
  const factory _CheckBoxSuccess(final bool value) = _$_CheckBoxSuccess;

  bool get value;
  @JsonKey(ignore: true)
  _$$_CheckBoxSuccessCopyWith<_$_CheckBoxSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FormSubmitSuccessCopyWith<$Res> {
  factory _$$_FormSubmitSuccessCopyWith(_$_FormSubmitSuccess value,
          $Res Function(_$_FormSubmitSuccess) then) =
      __$$_FormSubmitSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FormSubmitSuccessCopyWithImpl<$Res>
    extends _$FormValidationStateCopyWithImpl<$Res, _$_FormSubmitSuccess>
    implements _$$_FormSubmitSuccessCopyWith<$Res> {
  __$$_FormSubmitSuccessCopyWithImpl(
      _$_FormSubmitSuccess _value, $Res Function(_$_FormSubmitSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FormSubmitSuccess implements _FormSubmitSuccess {
  const _$_FormSubmitSuccess();

  @override
  String toString() {
    return 'FormValidationState.formSubmitSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FormSubmitSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String value) dropDownSuccess,
    required TResult Function(bool value) checkBoxSuccess,
    required TResult Function() formSubmitSuccess,
    required TResult Function() countStart,
  }) {
    return formSubmitSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String value)? dropDownSuccess,
    TResult? Function(bool value)? checkBoxSuccess,
    TResult? Function()? formSubmitSuccess,
    TResult? Function()? countStart,
  }) {
    return formSubmitSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String value)? dropDownSuccess,
    TResult Function(bool value)? checkBoxSuccess,
    TResult Function()? formSubmitSuccess,
    TResult Function()? countStart,
    required TResult orElse(),
  }) {
    if (formSubmitSuccess != null) {
      return formSubmitSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DropDownSuccess value) dropDownSuccess,
    required TResult Function(_CheckBoxSuccess value) checkBoxSuccess,
    required TResult Function(_FormSubmitSuccess value) formSubmitSuccess,
    required TResult Function(_CountStart value) countStart,
  }) {
    return formSubmitSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DropDownSuccess value)? dropDownSuccess,
    TResult? Function(_CheckBoxSuccess value)? checkBoxSuccess,
    TResult? Function(_FormSubmitSuccess value)? formSubmitSuccess,
    TResult? Function(_CountStart value)? countStart,
  }) {
    return formSubmitSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DropDownSuccess value)? dropDownSuccess,
    TResult Function(_CheckBoxSuccess value)? checkBoxSuccess,
    TResult Function(_FormSubmitSuccess value)? formSubmitSuccess,
    TResult Function(_CountStart value)? countStart,
    required TResult orElse(),
  }) {
    if (formSubmitSuccess != null) {
      return formSubmitSuccess(this);
    }
    return orElse();
  }
}

abstract class _FormSubmitSuccess implements FormValidationState {
  const factory _FormSubmitSuccess() = _$_FormSubmitSuccess;
}

/// @nodoc
abstract class _$$_CountStartCopyWith<$Res> {
  factory _$$_CountStartCopyWith(
          _$_CountStart value, $Res Function(_$_CountStart) then) =
      __$$_CountStartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CountStartCopyWithImpl<$Res>
    extends _$FormValidationStateCopyWithImpl<$Res, _$_CountStart>
    implements _$$_CountStartCopyWith<$Res> {
  __$$_CountStartCopyWithImpl(
      _$_CountStart _value, $Res Function(_$_CountStart) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CountStart implements _CountStart {
  const _$_CountStart();

  @override
  String toString() {
    return 'FormValidationState.countStart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CountStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String value) dropDownSuccess,
    required TResult Function(bool value) checkBoxSuccess,
    required TResult Function() formSubmitSuccess,
    required TResult Function() countStart,
  }) {
    return countStart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String value)? dropDownSuccess,
    TResult? Function(bool value)? checkBoxSuccess,
    TResult? Function()? formSubmitSuccess,
    TResult? Function()? countStart,
  }) {
    return countStart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String value)? dropDownSuccess,
    TResult Function(bool value)? checkBoxSuccess,
    TResult Function()? formSubmitSuccess,
    TResult Function()? countStart,
    required TResult orElse(),
  }) {
    if (countStart != null) {
      return countStart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DropDownSuccess value) dropDownSuccess,
    required TResult Function(_CheckBoxSuccess value) checkBoxSuccess,
    required TResult Function(_FormSubmitSuccess value) formSubmitSuccess,
    required TResult Function(_CountStart value) countStart,
  }) {
    return countStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DropDownSuccess value)? dropDownSuccess,
    TResult? Function(_CheckBoxSuccess value)? checkBoxSuccess,
    TResult? Function(_FormSubmitSuccess value)? formSubmitSuccess,
    TResult? Function(_CountStart value)? countStart,
  }) {
    return countStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DropDownSuccess value)? dropDownSuccess,
    TResult Function(_CheckBoxSuccess value)? checkBoxSuccess,
    TResult Function(_FormSubmitSuccess value)? formSubmitSuccess,
    TResult Function(_CountStart value)? countStart,
    required TResult orElse(),
  }) {
    if (countStart != null) {
      return countStart(this);
    }
    return orElse();
  }
}

abstract class _CountStart implements FormValidationState {
  const factory _CountStart() = _$_CountStart;
}
