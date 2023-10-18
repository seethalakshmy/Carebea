import 'package:admin_580_tech/application/bloc/sub_profile_details/sub_profile_details_bloc.dart';
import 'package:admin_580_tech/presentation/client_subProfile_details/widgets/pet_list.dart';
import 'package:flutter/material.dart';

import '../../../core/enum.dart';
import '../../../domain/subProfile_details/model/sub_profile_detail_response.dart';
import '../../widget/alert_text_label.dart';
import '../../widget/custom_container.dart';
import '../../widget/custom_sizedbox.dart';
import '../../widget/row_combo.dart';

class SubProfilePersonalDetailsTwoView extends StatelessWidget {
  const SubProfilePersonalDetailsTwoView({Key? key, required this.state})
      : super(key: key);
  final SubProfileDetailState state;

  @override
  Widget build(BuildContext context) {
    PersonalDetails2? personalDetails = state.response?.data?.personalDetails2;
    List<String>? languages = state.response?.data?.languages;
    String? pets = state.response?.data?.pets?.havePets.toString();
    List<Pet>? petList = state.response?.data?.pets?.pet;
    return CustomContainer(
      padding: EdgeInsets.symmetric(
          horizontal: DBL.twentyFive.val, vertical: DBL.twentyFive.val),
      color: AppColor.white.val,
      child: SingleChildScrollView(
        child:
            _rightView(personalDetails, languages ?? [], pets, petList ?? []),
      ),
    );
  }

  RowColonCombo _dnrView(PersonalDetails2? personalDetails) {
    return RowColonCombo.threeSeventy(
        label: AppString.doYouHaveDNR.val,
        value: personalDetails?.haveDnr ?? '',
        // personalDetails?.alternativeMobileNumber ?? "",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _advanceDirectiveView(PersonalDetails2? personalDetails) {
    return RowColonCombo.threeSeventy(
        label: AppString.doYouHaveAnAdvanceDirective.val,
        value: personalDetails?.haveAnAdvanceDirective ?? '',
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _smokerView(PersonalDetails2? personalDetails) {
    return RowColonCombo.threeSeventy(
        label: AppString.isThereASmokerInHouse.val,
        value: personalDetails?.isSmokerInHousehold ?? '',
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _languageView(List<String>? languages) {
    return RowColonCombo.threeSeventy(
        label: AppString.languagesKnown.val,
        value: '',
        list: languages ?? [],
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _petsView(String? pets, List<Pet> petList) {
    return RowColonCombo.threeSeventy(
        label: AppString.doYouHavePets.val,
        value: pets == 'true' ? 'Yes' : 'No',
        petList: petList,
        fontSize: FS.font13PointFive.val);
  }

  PetListView _petListView(List<Pet> petList) {
    return PetListView(
      label: '',
      value: '',
      petList: petList,
    );
  }

  Column _rightView(PersonalDetails2? personalDetails, List<String>? languages,
      String? pets, List<Pet> petList) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _petsView(pets, petList),
        _petListView(petList),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _languageView(languages ?? []),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _smokerView(personalDetails),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _advanceDirectiveView(personalDetails),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _dnrView(personalDetails),
      ],
    );
  }

  bool isLg(BuildContext context) => MediaQuery.of(context).size.width <= 1236;
}
