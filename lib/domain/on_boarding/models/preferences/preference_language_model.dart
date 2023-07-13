import 'package:admin_580_tech/domain/on_boarding/models/preferences/pets_type.dart';

class PreferenceLanguageModel {
  String name;
  bool isSelected = false;
  LanguageType? type;
  String id;

  PreferenceLanguageModel(this.name, this.id);
}
