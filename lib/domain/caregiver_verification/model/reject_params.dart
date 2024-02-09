class RejectionParams {
  String? userId;
  String? caregiverId;
  String? hhaRejectReason;
  String? blsRejectReason;
  String? tbRejectReason;
  String? covidRejectReason;

  RejectionParams(
      {this.userId,
      this.caregiverId,
      this.hhaRejectReason,
      this.blsRejectReason,
      this.tbRejectReason,
      this.covidRejectReason});

  RejectionParams.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    caregiverId = json['caregiver_id'];
    hhaRejectReason = json['hha_reject_reason'];
    blsRejectReason = json['bls_reject_reason'];
    tbRejectReason = json['tb_reject_reason'];
    covidRejectReason = json['covid_reject_reason'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user_id'] = userId;
    data['caregiver_id'] = caregiverId;
    if (hhaRejectReason != null && hhaRejectReason!.isNotEmpty) {
      data['hha_reject_reason'] = hhaRejectReason;
    }
    if (blsRejectReason != null && blsRejectReason!.isNotEmpty) {
      data['bls_reject_reason'] = blsRejectReason;
    }
    if (tbRejectReason != null && tbRejectReason!.isNotEmpty) {
      data['tb_reject_reason'] = tbRejectReason;
    }
    if (covidRejectReason != null && covidRejectReason!.isNotEmpty) {
      data['covid_reject_reason'] = covidRejectReason;
    }

    return data;
  }
}
