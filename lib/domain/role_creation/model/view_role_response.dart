class ViewRoleResponse {
  bool? status;
  String? message;
  Data? data;

  ViewRoleResponse({this.status, this.message, this.data});

  ViewRoleResponse.fromJson(Map<String, dynamic> json) {
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
  String? id;
  String? name;
  List<String>? assignedModule;
  bool? isDelete;
  bool? isEdit;
  bool? isView;

  Data(
      {this.id,
      this.name,
      this.assignedModule,
      this.isDelete,
      this.isEdit,
      this.isView});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    if (json['assigned_module'] != null) {
      assignedModule = json['assigned_module'].cast<String>();
    }
    isDelete = json['is_delete'];
    isEdit = json['is_edit'];
    isView = json['is_view'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['assigned_module'] = assignedModule;
    data['is_delete'] = isDelete;
    data['is_edit'] = isEdit;
    data['is_view'] = isView;
    return data;
  }
}
