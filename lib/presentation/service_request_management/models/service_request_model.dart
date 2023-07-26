class ServiceRequestModel {
  String serviceId;
  String decisionMakerId;
  String decisionMakerName;
  String clientName;
  String clientId;
  String service;
  String startDateAndTime;
  String endDateAndTime;
  String noOfMatchingShown;
  String serviceFee;
  String extraFee;
  String tip;
  String refund;
  String cancelledBy;

  ServiceRequestModel(
      this.serviceId,
      this.decisionMakerId,
      this.decisionMakerName,
      this.clientName,
      this.clientId,
      this.service,
      this.startDateAndTime,
      this.endDateAndTime,
      this.noOfMatchingShown,
      this.serviceFee,
      this.extraFee,
      this.tip,
      this.refund,
      this.cancelledBy
      );
}
