import 'package:admin_580_tech/presentation/on_boarding/modules/preference/models/pets_type.dart';

class PreferenceLanguageModel {
  String name;
  bool isSelected = false;
  LanguageType? type;
  String id;

  PreferenceLanguageModel(this.name, this.id);
}
