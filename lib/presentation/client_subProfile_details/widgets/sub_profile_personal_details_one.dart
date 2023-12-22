import 'package:flutter/material.dart';

import '../../../application/bloc/sub_profile_details/sub_profile_details_bloc.dart';
import '../../../core/enum.dart';
import '../../../core/string_extension.dart';
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
    PersonalDetails1? personalDetails = state.response?.data?.personalDetails;
    DocumentDetails2? documentDetails = state.response?.data?.documentDetails;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: RowColonCombo.twoHundred(
                  label: AppString.dob.val,
                  value: personalDetails?.dob?.parseWithFormat(
                          dateFormat: AppString.mmDDYYY.val) ??
                      "",
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
                  value: state.response?.data?.address
                          ?.where((element) => element.isDefault == true)
                          .first
                          .address ??
                      '',
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
                  value: state.response?.data?.address
                          ?.where((element) => element.isDefault == true)
                          .first
                          .streetName ??
                      '',
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
                  value: state.response?.data?.address
                          ?.where((element) => element.isDefault == true)
                          .first
                          .cityName ??
                      '',
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
                  value: state.response?.data?.address
                          ?.where((element) => element.isDefault == true)
                          .first
                          .stateName ??
                      '',
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
                  value: state.response?.data?.address
                          ?.where((element) => element.isDefault == true)
                          .first
                          .zipCode ??
                      '',
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

  RowColonCombo _emailView(PersonalDetails1? personalDetails) {
    return RowColonCombo.twoHundred(
        label: AppString.email.val,
        value: personalDetails?.email ?? "",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _alterNativeMobileNumberView(
      PersonalDetails1? personalDetails) {
    return RowColonCombo.twoHundred(
        label: AppString.alternativeMobileNumber.val,
        value: personalDetails?.alternativeNumber ?? '',
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _mobileNumberView(PersonalDetails1? personalDetails) {
    return RowColonCombo.twoHundred(
        label: AppString.mobileNumber.val,
        value: personalDetails?.mobile ?? "",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _heightView(PersonalDetails1? personalDetails) {
    return RowColonCombo.twoHundred(
        label: AppString.height.val,
        value: personalDetails?.height ?? "",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _weightView(PersonalDetails1? personalDetails) {
    return RowColonCombo.twoHundred(
        label: AppString.weight.val,
        value: personalDetails?.weight ?? "",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _genderView(PersonalDetails1? personalDetails) {
    return RowColonCombo.twoHundred(
        label: AppString.gender.val,
        value: personalDetails?.gender.toString() ?? "",
        fontSize: FS.font13PointFive.val);
  }

  Column _rightView(PersonalDetails1? personalDetails) {
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
