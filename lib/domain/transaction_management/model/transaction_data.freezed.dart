// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionData _$TransactionDataFromJson(Map<String, dynamic> json) {
  return _TransactionData.fromJson(json);
}

/// @nodoc
mixin _$TransactionData {
  List<Transactions>? get transactions => throw _privateConstructorUsedError;
  num? get totalCount => throw _privateConstructorUsedError;
  num? get offset => throw _privateConstructorUsedError;
  num? get actualLimit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionDataCopyWith<TransactionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDataCopyWith<$Res> {
  factory $TransactionDataCopyWith(
          TransactionData value, $Res Function(TransactionData) then) =
      _$TransactionDataCopyWithImpl<$Res, TransactionData>;
  @useResult
  $Res call(
      {List<Transactions>? transactions,
      num? totalCount,
      num? offset,
      num? actualLimit});
}

/// @nodoc
class _$TransactionDataCopyWithImpl<$Res, $Val extends TransactionData>
    implements $TransactionDataCopyWith<$Res> {
  _$TransactionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = freezed,
    Object? totalCount = freezed,
    Object? offset = freezed,
    Object? actualLimit = freezed,
  }) {
    return _then(_value.copyWith(
      transactions: freezed == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transactions>?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as num?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as num?,
      actualLimit: freezed == actualLimit
          ? _value.actualLimit
          : actualLimit // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionDataCopyWith<$Res>
    implements $TransactionDataCopyWith<$Res> {
  factory _$$_TransactionDataCopyWith(
          _$_TransactionData value, $Res Function(_$_TransactionData) then) =
      __$$_TransactionDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Transactions>? transactions,
      num? totalCount,
      num? offset,
      num? actualLimit});
}

/// @nodoc
class __$$_TransactionDataCopyWithImpl<$Res>
    extends _$TransactionDataCopyWithImpl<$Res, _$_TransactionData>
    implements _$$_TransactionDataCopyWith<$Res> {
  __$$_TransactionDataCopyWithImpl(
      _$_TransactionData _value, $Res Function(_$_TransactionData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = freezed,
    Object? totalCount = freezed,
    Object? offset = freezed,
    Object? actualLimit = freezed,
  }) {
    return _then(_$_TransactionData(
      transactions: freezed == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transactions>?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as num?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as num?,
      actualLimit: freezed == actualLimit
          ? _value.actualLimit
          : actualLimit // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_TransactionData implements _TransactionData {
  const _$_TransactionData(
      {final List<Transactions>? transactions,
      this.totalCount,
      this.offset,
      this.actualLimit})
      : _transactions = transactions;

  factory _$_TransactionData.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionDataFromJson(json);

  final List<Transactions>? _transactions;
  @override
  List<Transactions>? get transactions {
    final value = _transactions;
    if (value == null) return null;
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final num? totalCount;
  @override
  final num? offset;
  @override
  final num? actualLimit;

  @override
  String toString() {
    return 'TransactionData(transactions: $transactions, totalCount: $totalCount, offset: $offset, actualLimit: $actualLimit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionData &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.actualLimit, actualLimit) ||
                other.actualLimit == actualLimit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_transactions),
      totalCount,
      offset,
      actualLimit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionDataCopyWith<_$_TransactionData> get copyWith =>
      __$$_TransactionDataCopyWithImpl<_$_TransactionData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionDataToJson(
      this,
    );
  }
}

abstract class _TransactionData implements TransactionData {
  const factory _TransactionData(
      {final List<Transactions>? transactions,
      final num? totalCount,
      final num? offset,
      final num? actualLimit}) = _$_TransactionData;

  factory _TransactionData.fromJson(Map<String, dynamic> json) =
      _$_TransactionData.fromJson;

  @override
  List<Transactions>? get transactions;
  @override
  num? get totalCount;
  @override
  num? get offset;
  @override
  num? get actualLimit;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionDataCopyWith<_$_TransactionData> get copyWith =>
      throw _privateConstructorUsedError;
}
