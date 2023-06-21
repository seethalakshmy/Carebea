import 'package:flutter/material.dart';

import '../../../core/enum.dart';
import '../../widget/custom_container.dart';
import '../../widget/custom_sizedbox.dart';
import '../../widget/header_view.dart';
import '../../widget/row_combo.dart';

class CaregiverPersonalDetailsView extends StatelessWidget {
  const CaregiverPersonalDetailsView({Key? key}) : super(key: key);

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: RowColonCombo.twoHundred(
                  label: AppString.dob.val,
                  value: "01/05/1985",
                  fontSize: FS.font13PointFive.val),
            ),
            !isLg(context)
                ? Expanded(
                    child: _mobileNumberView(),
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
                  label: AppString.gender.val,
                  value: "Male",
                  fontSize: FS.font13PointFive.val),
            ),
            !isLg(context)
                ? Expanded(
                    child: _alterNativeMobileNumberView(),
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
                  value: "Apartment #20 ",
                  fontSize: FS.font13PointFive.val),
            ),
            !isLg(context)
                ? Expanded(
                    child: _emailView(),
                  )
                : CustomSizedBox.shrink(),
          ],
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.city.val,
            value: "New York",
            fontSize: FS.font13PointFive.val),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.street.val,
            value: "495 Grove Street ",
            fontSize: FS.font13PointFive.val),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.zip.val,
            value: "08601",
            fontSize: FS.font13PointFive.val),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.state.val,
            value: "New Jersey ",
            fontSize: FS.font13PointFive.val),
        isLg(context)
            ? CustomSizedBox(
                height: DBL.six.val,
              )
            : CustomSizedBox.shrink(),
        isLg(context) ? _rightView() : CustomSizedBox.shrink(),
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
            value: "Passport",
            fontSize: FS.font13PointFive.val),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.docNumber.val,
            value: "U123456789",
            fontSize: FS.font13PointFive.val),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.expiryDate.val,
            value: "05/12/2031",
            fontSize: FS.font13PointFive.val),
        CustomSizedBox(
          height: DBL.six.val,
        ),
      ],
    );
  }

  RowColonCombo _emailView() {
    return RowColonCombo.twoHundred(
        label: AppString.email.val,
        value: "josephgeorge@gmail.com",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _alterNativeMobileNumberView() {
    return RowColonCombo.twoHundred(
        label: AppString.alternativeMobileNumber.val,
        value: "14845691319",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _mobileNumberView() {
    return RowColonCombo.twoHundred(
        label: AppString.mobileNumber.val,
        value: "14845691319",
        fontSize: FS.font13PointFive.val);
  }

  Column _rightView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _mobileNumberView(),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _alterNativeMobileNumberView(),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _emailView(),
        CustomSizedBox(
          height: DBL.six.val,
        ),
      ],
    );
  }

  bool isLg(BuildContext context) => MediaQuery.of(context).size.width <= 1236;
}
