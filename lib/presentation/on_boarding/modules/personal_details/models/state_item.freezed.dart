// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StateItem _$StateItemFromJson(Map<String, dynamic> json) {
  return _StateItem.fromJson(json);
}

/// @nodoc
mixin _$StateItem {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "iso_code")
  String? get isoCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StateItemCopyWith<StateItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateItemCopyWith<$Res> {
  factory $StateItemCopyWith(StateItem value, $Res Function(StateItem) then) =
      _$StateItemCopyWithImpl<$Res, StateItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? name,
      @JsonKey(name: "iso_code") String? isoCode});
}

/// @nodoc
class _$StateItemCopyWithImpl<$Res, $Val extends StateItem>
    implements $StateItemCopyWith<$Res> {
  _$StateItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isoCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isoCode: freezed == isoCode
          ? _value.isoCode
          : isoCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StateItemCopyWith<$Res> implements $StateItemCopyWith<$Res> {
  factory _$$_StateItemCopyWith(
          _$_StateItem value, $Res Function(_$_StateItem) then) =
      __$$_StateItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? name,
      @JsonKey(name: "iso_code") String? isoCode});
}

/// @nodoc
class __$$_StateItemCopyWithImpl<$Res>
    extends _$StateItemCopyWithImpl<$Res, _$_StateItem>
    implements _$$_StateItemCopyWith<$Res> {
  __$$_StateItemCopyWithImpl(
      _$_StateItem _value, $Res Function(_$_StateItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isoCode = freezed,
  }) {
    return _then(_$_StateItem(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isoCode: freezed == isoCode
          ? _value.isoCode
          : isoCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StateItem implements _StateItem {
  const _$_StateItem(
      {@JsonKey(name: "_id") this.id,
      this.name,
      @JsonKey(name: "iso_code") this.isoCode});

  factory _$_StateItem.fromJson(Map<String, dynamic> json) =>
      _$$_StateItemFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? name;
  @override
  @JsonKey(name: "iso_code")
  final String? isoCode;

  @override
  String toString() {
    return 'StateItem(id: $id, name: $name, isoCode: $isoCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isoCode, isoCode) || other.isoCode == isoCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, isoCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateItemCopyWith<_$_StateItem> get copyWith =>
      __$$_StateItemCopyWithImpl<_$_StateItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StateItemToJson(
      this,
    );
  }
}

abstract class _StateItem implements StateItem {
  const factory _StateItem(
      {@JsonKey(name: "_id") final String? id,
      final String? name,
      @JsonKey(name: "iso_code") final String? isoCode}) = _$_StateItem;

  factory _StateItem.fromJson(Map<String, dynamic> json) =
      _$_StateItem.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: "iso_code")
  String? get isoCode;
  @override
  @JsonKey(ignore: true)
  _$$_StateItemCopyWith<_$_StateItem> get copyWith =>
      throw _privateConstructorUsedError;
}
