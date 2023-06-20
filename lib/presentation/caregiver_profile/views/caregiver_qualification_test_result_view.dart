import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/row_combo.dart';
import 'package:flutter/material.dart';

import '../../widget/custom_container.dart';

class CaregiverQualificationAndTestResultView extends StatelessWidget {
  const CaregiverQualificationAndTestResultView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: EdgeInsets.symmetric(
          horizontal: DBL.twentyFive.val, vertical: DBL.twentyFive.val),
      color: AppColor.white.val,
      child: SingleChildScrollView(
        child: Column(
          children: [
            titleView(label: AppString.hhaDocument.val, value: "Yes"),
            CustomSizedBox(height: DBL.eight.val),
            _subTitleVIew(label: AppString.docNumber.val, value: "U123456789"),
            CustomSizedBox(height: DBL.eight.val),
            _subTitleVIew(label: AppString.expiryDate.val, value: "05/12/2031"),
            CustomSizedBox(
              height: DBL.eighteen.val,
            ),
            titleView(
                label: AppString.bLSCPRAndFirstAidCertification.val,
                value: "Yes"),
            CustomSizedBox(height: DBL.eight.val),
            _subTitleVIew(label: AppString.docNumber.val, value: "U123456789"),
            CustomSizedBox(height: DBL.eight.val),
            _subTitleVIew(label: AppString.expiryDate.val, value: "05/12/2031"),
            CustomSizedBox(
              height: DBL.eighteen.val,
            ),
            titleView(label: AppString.tBAndPPDTest.val, value: "Yes"),
            CustomSizedBox(height: DBL.eight.val),
            _subTitleVIew(label: AppString.takenDate.val, value: "05/12/2031"),
            CustomSizedBox(height: DBL.eight.val),
            _subTitleVIew(label: AppString.result.val, value: "Negative"),
            CustomSizedBox(
              height: DBL.eighteen.val,
            ),
            titleView(label: AppString.covid19Vaccination.val, value: "Yes"),
            CustomSizedBox(height: DBL.eight.val),
            _subTitleVIew(label: AppString.takenDate.val, value: "05/12/2031"),
            CustomSizedBox(height: DBL.eight.val),
          ],
        ),
      ),
    );
  }

  Padding _subTitleVIew({required String label, required String value}) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: RowColonCombo.threeSeventy(
        label: label,
        value: value,
      ),
    );
  }

  RowColonCombo titleView({required String label, required String value}) {
    return RowColonCombo.threeEighty(
      label: label,
      value: value,
      color: AppColor.label7.val,
      fontWeight: FW.w500.val,
    );
  }
}
