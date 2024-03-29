// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transactions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Transactions _$TransactionsFromJson(Map<String, dynamic> json) {
  return _Transactions.fromJson(json);
}

/// @nodoc
mixin _$Transactions {
  @JsonKey(name: "service_id")
  String? get serviceId => throw _privateConstructorUsedError;
  @JsonKey(name: "serviceId")
  String? get serviceIdPublic => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get transactionId => throw _privateConstructorUsedError;
  @JsonKey(name: "uniqueId")
  String? get transactionIdPublic => throw _privateConstructorUsedError;
  @JsonKey(name: "transactionType")
  String? get transactionType => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_time')
  String? get dateTime => throw _privateConstructorUsedError;
  @JsonKey(name: "receiverName")
  String? get paidTo => throw _privateConstructorUsedError;
  @JsonKey(name: "payerName")
  String? get receivedFrom => throw _privateConstructorUsedError;
  @JsonKey(name: "paid_for")
  String? get paidFor => throw _privateConstructorUsedError;
  String? get amount => throw _privateConstructorUsedError;
  String? get cardNumber => throw _privateConstructorUsedError;
  Name? get name => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;
  Status? get status => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionsCopyWith<Transactions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsCopyWith<$Res> {
  factory $TransactionsCopyWith(
          Transactions value, $Res Function(Transactions) then) =
      _$TransactionsCopyWithImpl<$Res, Transactions>;
  @useResult
  $Res call(
      {@JsonKey(name: "service_id") String? serviceId,
      @JsonKey(name: "serviceId") String? serviceIdPublic,
      @JsonKey(name: "_id") String? transactionId,
      @JsonKey(name: "uniqueId") String? transactionIdPublic,
      @JsonKey(name: "transactionType") String? transactionType,
      @JsonKey(name: 'date_time') String? dateTime,
      @JsonKey(name: "receiverName") String? paidTo,
      @JsonKey(name: "payerName") String? receivedFrom,
      @JsonKey(name: "paid_for") String? paidFor,
      String? amount,
      String? cardNumber,
      Name? name,
      String? user,
      Status? status,
      String? id});

  $NameCopyWith<$Res>? get name;
  $StatusCopyWith<$Res>? get status;
}

/// @nodoc
class _$TransactionsCopyWithImpl<$Res, $Val extends Transactions>
    implements $TransactionsCopyWith<$Res> {
  _$TransactionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceId = freezed,
    Object? serviceIdPublic = freezed,
    Object? transactionId = freezed,
    Object? transactionIdPublic = freezed,
    Object? transactionType = freezed,
    Object? dateTime = freezed,
    Object? paidTo = freezed,
    Object? receivedFrom = freezed,
    Object? paidFor = freezed,
    Object? amount = freezed,
    Object? cardNumber = freezed,
    Object? name = freezed,
    Object? user = freezed,
    Object? status = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      serviceId: freezed == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceIdPublic: freezed == serviceIdPublic
          ? _value.serviceIdPublic
          : serviceIdPublic // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionIdPublic: freezed == transactionIdPublic
          ? _value.transactionIdPublic
          : transactionIdPublic // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionType: freezed == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      paidTo: freezed == paidTo
          ? _value.paidTo
          : paidTo // ignore: cast_nullable_to_non_nullable
              as String?,
      receivedFrom: freezed == receivedFrom
          ? _value.receivedFrom
          : receivedFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      paidFor: freezed == paidFor
          ? _value.paidFor
          : paidFor // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      cardNumber: freezed == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameCopyWith<$Res>? get name {
    if (_value.name == null) {
      return null;
    }

    return $NameCopyWith<$Res>(_value.name!, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $StatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TransactionsCopyWith<$Res>
    implements $TransactionsCopyWith<$Res> {
  factory _$$_TransactionsCopyWith(
          _$_Transactions value, $Res Function(_$_Transactions) then) =
      __$$_TransactionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "service_id") String? serviceId,
      @JsonKey(name: "serviceId") String? serviceIdPublic,
      @JsonKey(name: "_id") String? transactionId,
      @JsonKey(name: "uniqueId") String? transactionIdPublic,
      @JsonKey(name: "transactionType") String? transactionType,
      @JsonKey(name: 'date_time') String? dateTime,
      @JsonKey(name: "receiverName") String? paidTo,
      @JsonKey(name: "payerName") String? receivedFrom,
      @JsonKey(name: "paid_for") String? paidFor,
      String? amount,
      String? cardNumber,
      Name? name,
      String? user,
      Status? status,
      String? id});

  @override
  $NameCopyWith<$Res>? get name;
  @override
  $StatusCopyWith<$Res>? get status;
}

/// @nodoc
class __$$_TransactionsCopyWithImpl<$Res>
    extends _$TransactionsCopyWithImpl<$Res, _$_Transactions>
    implements _$$_TransactionsCopyWith<$Res> {
  __$$_TransactionsCopyWithImpl(
      _$_Transactions _value, $Res Function(_$_Transactions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceId = freezed,
    Object? serviceIdPublic = freezed,
    Object? transactionId = freezed,
    Object? transactionIdPublic = freezed,
    Object? transactionType = freezed,
    Object? dateTime = freezed,
    Object? paidTo = freezed,
    Object? receivedFrom = freezed,
    Object? paidFor = freezed,
    Object? amount = freezed,
    Object? cardNumber = freezed,
    Object? name = freezed,
    Object? user = freezed,
    Object? status = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_Transactions(
      serviceId: freezed == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceIdPublic: freezed == serviceIdPublic
          ? _value.serviceIdPublic
          : serviceIdPublic // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionIdPublic: freezed == transactionIdPublic
          ? _value.transactionIdPublic
          : transactionIdPublic // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionType: freezed == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      paidTo: freezed == paidTo
          ? _value.paidTo
          : paidTo // ignore: cast_nullable_to_non_nullable
              as String?,
      receivedFrom: freezed == receivedFrom
          ? _value.receivedFrom
          : receivedFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      paidFor: freezed == paidFor
          ? _value.paidFor
          : paidFor // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      cardNumber: freezed == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_Transactions implements _Transactions {
  const _$_Transactions(
      {@JsonKey(name: "service_id") this.serviceId,
      @JsonKey(name: "serviceId") this.serviceIdPublic,
      @JsonKey(name: "_id") this.transactionId,
      @JsonKey(name: "uniqueId") this.transactionIdPublic,
      @JsonKey(name: "transactionType") this.transactionType,
      @JsonKey(name: 'date_time') this.dateTime,
      @JsonKey(name: "receiverName") this.paidTo,
      @JsonKey(name: "payerName") this.receivedFrom,
      @JsonKey(name: "paid_for") this.paidFor,
      this.amount,
      this.cardNumber,
      this.name,
      this.user,
      this.status,
      this.id});

  factory _$_Transactions.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionsFromJson(json);

  @override
  @JsonKey(name: "service_id")
  final String? serviceId;
  @override
  @JsonKey(name: "serviceId")
  final String? serviceIdPublic;
  @override
  @JsonKey(name: "_id")
  final String? transactionId;
  @override
  @JsonKey(name: "uniqueId")
  final String? transactionIdPublic;
  @override
  @JsonKey(name: "transactionType")
  final String? transactionType;
  @override
  @JsonKey(name: 'date_time')
  final String? dateTime;
  @override
  @JsonKey(name: "receiverName")
  final String? paidTo;
  @override
  @JsonKey(name: "payerName")
  final String? receivedFrom;
  @override
  @JsonKey(name: "paid_for")
  final String? paidFor;
  @override
  final String? amount;
  @override
  final String? cardNumber;
  @override
  final Name? name;
  @override
  final String? user;
  @override
  final Status? status;
  @override
  final String? id;

  @override
  String toString() {
    return 'Transactions(serviceId: $serviceId, serviceIdPublic: $serviceIdPublic, transactionId: $transactionId, transactionIdPublic: $transactionIdPublic, transactionType: $transactionType, dateTime: $dateTime, paidTo: $paidTo, receivedFrom: $receivedFrom, paidFor: $paidFor, amount: $amount, cardNumber: $cardNumber, name: $name, user: $user, status: $status, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Transactions &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.serviceIdPublic, serviceIdPublic) ||
                other.serviceIdPublic == serviceIdPublic) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.transactionIdPublic, transactionIdPublic) ||
                other.transactionIdPublic == transactionIdPublic) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.paidTo, paidTo) || other.paidTo == paidTo) &&
            (identical(other.receivedFrom, receivedFrom) ||
                other.receivedFrom == receivedFrom) &&
            (identical(other.paidFor, paidFor) || other.paidFor == paidFor) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      serviceId,
      serviceIdPublic,
      transactionId,
      transactionIdPublic,
      transactionType,
      dateTime,
      paidTo,
      receivedFrom,
      paidFor,
      amount,
      cardNumber,
      name,
      user,
      status,
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionsCopyWith<_$_Transactions> get copyWith =>
      __$$_TransactionsCopyWithImpl<_$_Transactions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionsToJson(
      this,
    );
  }
}

abstract class _Transactions implements Transactions {
  const factory _Transactions(
      {@JsonKey(name: "service_id") final String? serviceId,
      @JsonKey(name: "serviceId") final String? serviceIdPublic,
      @JsonKey(name: "_id") final String? transactionId,
      @JsonKey(name: "uniqueId") final String? transactionIdPublic,
      @JsonKey(name: "transactionType") final String? transactionType,
      @JsonKey(name: 'date_time') final String? dateTime,
      @JsonKey(name: "receiverName") final String? paidTo,
      @JsonKey(name: "payerName") final String? receivedFrom,
      @JsonKey(name: "paid_for") final String? paidFor,
      final String? amount,
      final String? cardNumber,
      final Name? name,
      final String? user,
      final Status? status,
      final String? id}) = _$_Transactions;

  factory _Transactions.fromJson(Map<String, dynamic> json) =
      _$_Transactions.fromJson;

  @override
  @JsonKey(name: "service_id")
  String? get serviceId;
  @override
  @JsonKey(name: "serviceId")
  String? get serviceIdPublic;
  @override
  @JsonKey(name: "_id")
  String? get transactionId;
  @override
  @JsonKey(name: "uniqueId")
  String? get transactionIdPublic;
  @override
  @JsonKey(name: "transactionType")
  String? get transactionType;
  @override
  @JsonKey(name: 'date_time')
  String? get dateTime;
  @override
  @JsonKey(name: "receiverName")
  String? get paidTo;
  @override
  @JsonKey(name: "payerName")
  String? get receivedFrom;
  @override
  @JsonKey(name: "paid_for")
  String? get paidFor;
  @override
  String? get amount;
  @override
  String? get cardNumber;
  @override
  Name? get name;
  @override
  String? get user;
  @override
  Status? get status;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionsCopyWith<_$_Transactions> get copyWith =>
      throw _privateConstructorUsedError;
}
