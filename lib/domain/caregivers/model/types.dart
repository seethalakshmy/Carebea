class Types {
  String? title;
  int? id;
  bool isSelected = false;

  Types({required this.id, required this.title, required this.isSelected});

  Types copyWith({String? title, int? id, bool? isSelected}) => Types(
      id: id ?? this.id,
      title: title ?? this.title,
      isSelected: isSelected ?? this.isSelected);
}
