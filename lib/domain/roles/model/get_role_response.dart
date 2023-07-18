class GetRoleResponse {
  bool? status;
  String? message;
  Data? data;

  GetRoleResponse({this.status, this.message, this.data});

  GetRoleResponse copyWith({bool? status, String? message, Data? data}) =>
      GetRoleResponse(
        message: message ?? this.message,
        status: status ?? this.status,
        data: data ?? this.data,
      );

  GetRoleResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<Role>? role;
  int? totalCount;
  int? offset;
  int? actualLimit;

  Data({this.role, this.totalCount, this.offset, this.actualLimit});

  Data copyWith(
          {List<Role>? role, int? totalCount, int? offset, int? actualLimit}) =>
      Data(
          role: role ?? this.role,
          actualLimit: actualLimit ?? this.actualLimit,
          offset: offset ?? this.offset,
          totalCount: totalCount ?? this.totalCount);

  Data.fromJson(Map<String, dynamic> json) {
    if (json['result'] != null) {
      role = <Role>[];
      json['result'].forEach((v) {
        role!.add(Role.fromJson(v));
      });
    }
    totalCount = json['totalCount'];
    offset = json['offset'];
    actualLimit = json['actualLimit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (role != null) {
      data['result'] = role!.map((v) => v.toJson()).toList();
    }
    data['totalCount'] = totalCount;
    data['offset'] = offset;
    data['actualLimit'] = actualLimit;
    return data;
  }
}

class Role {
  String? id;
  String? name;
  List<String>? assignedModule;
  int? status;
  bool? isDelete;
  bool? isEdit;
  bool? isView;
  bool isSelected = false;

  Role({
    this.id,
    this.name,
    this.assignedModule,
    this.status,
    this.isDelete,
    this.isEdit,
    this.isView,
    this.isSelected = false,
  });

  Role.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    if (json['assigned_module'] != null) {
      assignedModule = json['assigned_module'].cast<String>();
    }
    status = json['status'];
    isDelete = json['is_delete'] ?? false;
    isEdit = json['is_edit'] ?? false;
    isView = json['is_view'] ?? false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['status'] = status;
    data['is_delete'] = isDelete;
    data['is_edit'] = isEdit;
    data['is_view'] = isView;
    return data;
  }
}
