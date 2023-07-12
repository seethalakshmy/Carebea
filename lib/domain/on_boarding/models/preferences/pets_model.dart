import 'package:admin_580_tech/domain/on_boarding/models/preferences/pets_type.dart';

class PetsModel {
  String name;
  PetsType? type = PetsType.BOTH;
  String? id;
  int? petsId;

  PetsModel(this.name, this.id);
}
