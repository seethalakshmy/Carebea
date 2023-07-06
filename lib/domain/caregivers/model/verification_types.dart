class VerificationTypes {
  String? title;
  int? id;
  bool isSelected = false;

  VerificationTypes(
      {required this.id, required this.title, required this.isSelected});

  VerificationTypes copyWith({String? title, int? id, bool? isSelected}) =>
      VerificationTypes(
          id: id ?? this.id,
          title: title ?? this.title,
          isSelected: isSelected ?? this.isSelected);
}
