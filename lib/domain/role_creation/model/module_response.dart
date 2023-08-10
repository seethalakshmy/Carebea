class ModuleResponse {
  bool? status;
  String? message;
  List<Module>? module;

  ModuleResponse({this.status, this.message, this.module});

  ModuleResponse copyWith({
    bool? status,
    String? message,
    List<Module>? module,
  }) =>
      ModuleResponse(
          status: status ?? this.status,
          message: message ?? this.message,
          module: module ?? this.module);

  ModuleResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      module = <Module>[];
      json['data'].forEach((v) {
        module!.add(Module.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (module != null) {
      data['data'] = module!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Module {
  String? id;
  String? name;
  bool isSelected = false;
  bool isView = false;
  bool isViewShow = false;
  bool isEdit = false;
  bool isEditShow = false;
  bool isDelete = false;
  bool isDeleteShow = false;

  Module(
      {this.id,
      this.name,
      this.isSelected = false,
      this.isView = false,
      this.isEdit = false,
      this.isDelete = false,
      this.isViewShow = false,
      this.isEditShow = false,
      this.isDeleteShow = false});

  Module copyWith({
    String? sId,
    String? name,
    bool? isSelected,
    bool? isView,
    bool? isEdit,
    bool? isDelete,
    bool? isViewShow,
    bool? isEditShow,
    bool? isDeleteShow,
  }) =>
      Module(
        id: sId ?? this.id,
        name: name ?? this.name,
        isSelected: isSelected ?? this.isSelected,
        isView: isView ?? this.isView,
        isEdit: isEdit ?? this.isEdit,
        isDelete: isDelete ?? this.isDelete,
        isViewShow: isViewShow ?? this.isViewShow,
        isEditShow: isEditShow ?? this.isEditShow,
        isDeleteShow: isDeleteShow ?? this.isDeleteShow,
      );

  Module.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    name = json['name'];
    isViewShow = json['read'];
    isEditShow = json['write'];
    isDeleteShow = json['delete'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['module_id'] = id;
    data['module_name'] = name;
    data['read'] = isView;
    data['delete'] = isDelete;
    data['write'] = isEdit;
    return data;
  }
}
