class LoginResponse {
  bool? status;
  String? message;
  Data? data;

  LoginResponse({this.status, this.message, this.data});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    if (data != null) {
      map['data'] = data!.toJson();
    }
    return map;
  }
}

class Data {
  String? accessToken;
  String? refreshToken;
  String? userId;
  Permissions? permissions;

  Data({this.accessToken, this.refreshToken, this.userId});

  Data.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    refreshToken = json['refresh_token'];
    userId = json['user_id'];
    permissions = json['permissions'] != null
        ? Permissions.fromJson(json['permissions'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['access_token'] = accessToken;
    data['refresh_token'] = refreshToken;
    data['user_id'] = userId;
    if (permissions != null) {
      data['permissions'] = permissions!.toJson();
    }
    return data;
  }
}

class Permissions {
  Privilege? careAmbassador;
  Privilege? client;
  Privilege? role;
  Privilege? admin;
  Privilege? transactions;
  Privilege? services;

  Permissions(
      {this.careAmbassador,
      this.client,
      this.role,
      this.admin,
      this.transactions,
      this.services});

  Permissions.fromJson(Map<String, dynamic> json) {
    careAmbassador = json['careambassador'] != null
        ? Privilege.fromJson(json['careambassador'])
        : null;
    client = json['client'] != null ? Privilege.fromJson(json['client']) : null;
    role = json['role'] != null ? Privilege.fromJson(json['role']) : null;
    admin = json['admin'] != null ? Privilege.fromJson(json['admin']) : null;
    transactions = json['transactions'] != null
        ? Privilege.fromJson(json['transactions'])
        : null;
    services =
        json['services'] != null ? Privilege.fromJson(json['services']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (careAmbassador != null) {
      data['careambassador'] = careAmbassador!.toJson();
    }
    if (client != null) {
      data['client'] = client!.toJson();
    }
    if (role != null) {
      data['role'] = role!.toJson();
    }
    if (admin != null) {
      data['admin'] = admin!.toJson();
    }
    if (transactions != null) {
      data['transactions'] = transactions!.toJson();
    }
    if (services != null) {
      data['services'] = services!.toJson();
    }
    return data;
  }
}

class Privilege {
  bool? view;
  bool? edit;
  bool? delete;

  Privilege({this.view, this.edit, this.delete});

  Privilege.fromJson(Map<String, dynamic> json) {
    view = json['view'];
    edit = json['edit'];
    delete = json['delete'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['view'] = view;
    data['edit'] = edit;
    data['delete'] = delete;
    return data;
  }
}
