class CommonResponseUse {
  bool? status;
  String? message;

  CommonResponseUse({
    this.status,
    this.message,
  });

  CommonResponseUse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    return map;
  }
}
