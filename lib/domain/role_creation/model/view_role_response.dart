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
  bool? isDelete;
  bool? isEdit;
  bool? isView;
  List<AssignedModule>? assignedModule;

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
    if (json['assigned_module'] != null) {}
    isDelete = json['is_delete'];
    isEdit = json['is_edit'];
    isView = json['is_view'];
    if (json['assigned_module'] != null) {
      assignedModule = <AssignedModule>[];
      json['assigned_module'].forEach((v) {
        assignedModule!.add(AssignedModule.fromJson(v));
      });
    }
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

class AssignedModule {
  String? moduleId;
  String? moduleName;
  bool? read;
  bool? write;
  bool? delete;
  String? sId;

  AssignedModule(
      {this.moduleId,
      this.moduleName,
      this.read,
      this.write,
      this.delete,
      this.sId});

  AssignedModule.fromJson(Map<String, dynamic> json) {
    moduleId = json['module_id'];
    moduleName = json['module_name'];
    read = json['read'];
    write = json['write'];
    delete = json['delete'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['module_id'] = this.moduleId;
    data['module_name'] = this.moduleName;
    data['read'] = this.read;
    data['write'] = this.write;
    data['delete'] = this.delete;
    data['_id'] = this.sId;
    return data;
  }
}
