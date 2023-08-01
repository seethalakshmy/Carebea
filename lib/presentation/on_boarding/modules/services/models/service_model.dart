class ServiceModel {
  final String name;
  final num? type;
  final String id;
  bool selected;

  ServiceModel(
      {required this.name,
      required this.type,
      required this.id,
      this.selected = false});
}
