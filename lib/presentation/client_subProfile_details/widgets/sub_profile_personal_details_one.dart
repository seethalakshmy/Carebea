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

class SubProfilePersonalDetailsOneView extends StatelessWidget {
  const SubProfilePersonalDetailsOneView({Key? key, required this.state})
      : super(key: key);
  final SubProfileDetailState state;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: EdgeInsets.symmetric(
          horizontal: DBL.twentyFive.val, vertical: DBL.twentyFive.val),
      color: AppColor.white.val,
      child: SingleChildScrollView(
        child: _topView(context),
      ),
    );
  }

  Column _topView(BuildContext context) {
    SubProfilePersonalDetails? personalDetails =
        state.response?.data?.personalDetails;
    SubProfileDocumentDetails? documentDetails =
        state.response?.data?.documentDetails;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: RowColonCombo.twoHundred(
                  label: AppString.dob.val,
                  value: "1",
                  // personalDetails.?.parseWithFormat(
                  //         dateFormat: AppString.mmDDYYY.val) ??
                  //     "",
                  fontSize: FS.font13PointFive.val),
            ),
            !isLg(context)
                ? Expanded(
                    child: _heightView(personalDetails),
                  )
                : CustomSizedBox.shrink(),
          ],
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        Row(
          children: [
            Expanded(
              child: RowColonCombo.twoHundred(
                  label: AppString.addressLine1.val,
                  value: "1",
                  // personalDetails?.addressLine ?? "",
                  fontSize: FS.font13PointFive.val),
            ),
            !isLg(context)
                ? Expanded(
                    child: _weightView(personalDetails),
                  )
                : CustomSizedBox.shrink(),
          ],
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        Row(
          children: [
            Expanded(
              child: RowColonCombo.twoHundred(
                  label: AppString.street.val,
                  value: "no value",
                  fontSize: FS.font13PointFive.val),
            ),
            !isLg(context)
                ? Expanded(
                    child: _genderView(personalDetails),
                  )
                : CustomSizedBox.shrink(),
          ],
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        Row(
          children: [
            Expanded(
              child: RowColonCombo.twoHundred(
                  label: AppString.city.val,
                  value: personalDetails?.city ?? "",
                  // personalDetails?.street ?? "",
                  fontSize: FS.font13PointFive.val),
            ),
            !isLg(context)
                ? Expanded(
                    child: _mobileNumberView(personalDetails),
                  )
                : CustomSizedBox.shrink(),
          ],
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        Row(
          children: [
            Expanded(
              child: RowColonCombo.twoHundred(
                  label: AppString.state.val,
                  value: personalDetails?.state ?? "",
                  // personalDetails?.zip ?? "",
                  fontSize: FS.font13PointFive.val),
            ),
            !isLg(context)
                ? Expanded(
                    child: _alterNativeMobileNumberView(personalDetails),
                  )
                : CustomSizedBox.shrink(),
          ],
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        Row(
          children: [
            Expanded(
              child: RowColonCombo.twoHundred(
                  label: AppString.zip.val,
                  value: "no value",
                  fontSize: FS.font13PointFive.val),
            ),
            !isLg(context)
                ? Expanded(
                    child: _emailView(personalDetails),
                  )
                : CustomSizedBox.shrink(),
          ],
        ),
        isLg(context) ? _rightView(personalDetails) : CustomSizedBox.shrink(),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        Divider(
          color: AppColor.dividerColor4.val,
        ),
        CustomSizedBox(
          height: DBL.three.val,
        ),
        HeaderView(
          title: AppString.documentDetails.val,
          color: AppColor.matBlack3.val,
          fontSize: FS.font18.val,
          topPadding: DBL.zero.val,
          sidePadding: DBL.zero.val,
        ),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.documentUploaded.val,
            value: documentDetails?.documentUploaded ?? "",
            fontSize: FS.font13PointFive.val),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.docNumber.val,
            value: documentDetails?.doumentNumber ?? "",
            fontSize: FS.font13PointFive.val),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.expiryDate.val,
            value: documentDetails?.expiryDate
                    ?.parseWithFormat(dateFormat: AppString.mmDDYYY.val) ??
                "",
            fontSize: FS.font13PointFive.val),
        CustomSizedBox(
          height: DBL.six.val,
        ),
      ],
    );
  }

  RowColonCombo _emailView(SubProfilePersonalDetails? personalDetails) {
    return RowColonCombo.twoHundred(
        label: AppString.email.val,
        value: personalDetails?.email ?? "",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _alterNativeMobileNumberView(
      SubProfilePersonalDetails? personalDetails) {
    return RowColonCombo.twoHundred(
        label: AppString.alternativeMobileNumber.val,
        value: "no value",
        // personalDetails?.alternativeMobileNumber ?? "",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _mobileNumberView(SubProfilePersonalDetails? personalDetails) {
    return RowColonCombo.twoHundred(
        label: AppString.mobileNumber.val,
        value: personalDetails?.mobile ?? "",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _heightView(SubProfilePersonalDetails? personalDetails) {
    return RowColonCombo.twoHundred(
        label: AppString.height.val,
        value: personalDetails?.height ?? "",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _weightView(SubProfilePersonalDetails? personalDetails) {
    return RowColonCombo.twoHundred(
        label: AppString.weight.val,
        value: personalDetails?.weight ?? "",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _genderView(SubProfilePersonalDetails? personalDetails) {
    return RowColonCombo.twoHundred(
        label: AppString.gender.val,
        value: personalDetails?.gender.toString() ?? "",
        fontSize: FS.font13PointFive.val);
  }

  Column _rightView(SubProfilePersonalDetails? personalDetails) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _genderView(personalDetails),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _weightView(personalDetails),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _genderView(personalDetails),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _mobileNumberView(personalDetails),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _alterNativeMobileNumberView(personalDetails),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _emailView(personalDetails),
        CustomSizedBox(
          height: DBL.six.val,
        ),
      ],
    );
  }

  bool isLg(BuildContext context) => MediaQuery.of(context).size.width <= 1236;
}
