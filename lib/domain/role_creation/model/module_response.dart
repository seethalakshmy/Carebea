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
    if (this.module != null) {
      data['data'] = this.module!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Module {
  String? sId;
  String? name;
  bool isSelected = false;

  Module({this.sId, this.name, this.isSelected = false});

  Module copyWith({
    String? sId,
    String? name,
    bool? isSelected,
  }) =>
      Module(
          sId: sId ?? this.sId,
          name: name ?? this.name,
          isSelected: isSelected ?? this.isSelected);

  Module.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    data['is_selected'] = isSelected;
    return data;
  }
}
