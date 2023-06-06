class Transactions {
  String? transactionId;
  String? serviceId;
  String? transactionType;
  String? paidFor;
  String? paidTo;
  String? receivedFrom;
  String? amount;
  String? dateTime;
  String? status;

  Transactions(
      {this.transactionId,
      this.serviceId,
      this.transactionType,
      this.paidFor,
      this.paidTo,
      this.receivedFrom,
      this.amount,
      this.dateTime,
      this.status});

  Transactions copyWith(
          {String? transactionId,
          String? serviceId,
          String? transactionType,
          String? paidFor,
          String? paidTo,
          String? receivedFrom,
          String? amount,
          String? dateTime,
          String? status}) =>
      Transactions(
          transactionId: transactionId ?? this.transactionId,
          serviceId: serviceId ?? this.serviceId,
          transactionType: transactionType ?? this.transactionType,
          paidFor: paidFor ?? this.paidFor,
          paidTo: paidTo ?? this.paidTo,
          receivedFrom: receivedFrom ?? this.receivedFrom,
          amount: amount ?? this.amount,
          dateTime: dateTime ?? this.dateTime,
          status: status ?? this.status);
  Transactions.fromJson(Map<String, dynamic> json){
    transactionId=json['transaction_id'];
    serviceId=json['service_id'];
    transactionType=json['transaction_type'];
    paidFor=json['paid_for'];
    paidTo=json['paid_to'];
    receivedFrom=json['received_from'];
    amount=json['amount'];
    dateTime=json['date_time'];
    status=json['status'];
  }
  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = <String, dynamic>{};
    data['transaction_id']=transactionId;
    data['service_id']=serviceId;
    data['transaction_type']=transactionType;
    data['paid_for']=paidFor;
    data['paid_to']=paidTo;
    data['received_from']=receivedFrom;
    data['amount']=amount;
    data['date_time']=dateTime;
    data['status']=status;
    return data;
  }
}
