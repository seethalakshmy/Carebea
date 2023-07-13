class CommonResponse {
  bool? status;
  String? message;

  CommonResponse({
    this.status,
    this.message,
  });

  CommonResponse.fromJson(Map<String, dynamic> json) {
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
