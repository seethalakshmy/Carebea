import 'package:admin_580_tech/application/bloc/sub_profile_details/sub_profile_details_bloc.dart';
import 'package:admin_580_tech/core/string_extension.dart';
import 'package:admin_580_tech/domain/caregiver_profile/model/caregiver_profile_response.dart';
import 'package:flutter/material.dart';

import '../../../core/enum.dart';
import '../../../domain/subProfile_details/model/sub_profile_detail_response.dart';
import '../../widget/custom_container.dart';
import '../../widget/custom_sizedbox.dart';
import '../../widget/header_view.dart';
import '../../widget/row_combo.dart';

class SubProfilePersonalDetailsTwoView extends StatelessWidget {
  const SubProfilePersonalDetailsTwoView({Key? key, required this.state})
      : super(key: key);
  final SubProfileDetailState state;

  @override
  Widget build(BuildContext context) {
    SubProfilePersonalDetails? personalDetails =
        state.response?.data?.personalDetails;
    return CustomContainer(
      padding: EdgeInsets.symmetric(
          horizontal: DBL.twentyFive.val, vertical: DBL.twentyFive.val),
      color: AppColor.white.val,
      child: SingleChildScrollView(
        child: _rightView(personalDetails),
      ),
    );
  }

  RowColonCombo _dnrView(SubProfilePersonalDetails? personalDetails) {
    return RowColonCombo.threeSeventy(
        label: AppString.doYouHaveDNR.val,
        value: "no value",
        // personalDetails?.alternativeMobileNumber ?? "",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _advanceDirectiveView(
      SubProfilePersonalDetails? personalDetails) {
    return RowColonCombo.threeSeventy(
        label: AppString.doYouHaveAnAdvanceDirective.val,
        value: 'no value',
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _smokerView(SubProfilePersonalDetails? personalDetails) {
    return RowColonCombo.threeSeventy(
        label: AppString.isThereASmokerInHouse.val,
        value: 'no value',
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _languageView(SubProfilePersonalDetails? personalDetails) {
    return RowColonCombo.threeSeventy(
        label: AppString.languagesKnown.val,
        value: 'no value',
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _petsView(SubProfilePersonalDetails? personalDetails) {
    return RowColonCombo.threeSeventy(
        label: AppString.doYouHavePets.val,
        value: 'no value',
        fontSize: FS.font13PointFive.val);
  }

  Column _rightView(SubProfilePersonalDetails? personalDetails) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _petsView(personalDetails),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _languageView(personalDetails),
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
