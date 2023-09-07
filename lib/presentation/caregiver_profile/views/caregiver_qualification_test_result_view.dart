import 'package:admin_580_tech/application/bloc/caregiver-profile/caregiver_profile_bloc.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/string_extension.dart';
import 'package:admin_580_tech/domain/caregiver_profile/model/caregiver_profile_response.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/row_combo.dart';
import 'package:flutter/material.dart';

import '../../widget/custom_container.dart';

class CaregiverQualificationAndTestResultView extends StatelessWidget {
  const CaregiverQualificationAndTestResultView({Key? key, required this.state})
      : super(key: key);
  final CareGiverProfileState state;

  @override
  Widget build(BuildContext context) {
    QualificationAndTest? qualificationAndTest =
        state.response?.data?.qualificationAndTest;
    return CustomContainer(
      padding: EdgeInsets.symmetric(
          horizontal: DBL.twentyFive.val, vertical: DBL.twentyFive.val),
      color: AppColor.white.val,
      child: SingleChildScrollView(
        child: Column(
          children: [
            titleView(
                label: AppString.hhaDocument.val,
                value: qualificationAndTest?.isHhaDocument ?? ""),
            CustomSizedBox(height: DBL.eight.val),
            _subTitleVIew(
                label: AppString.docNumber.val,
                value: qualificationAndTest?.hhaDocumnetNumber ?? ""),
            CustomSizedBox(height: DBL.eight.val),
            _subTitleVIew(
                label: AppString.expiryDate.val,
                value: qualificationAndTest?.hhaExpiry
                        ?.parseWithFormat(dateFormat: AppString.mmDDYYY.val) ??
                    ""),
            CustomSizedBox(
              height: DBL.eighteen.val,
            ),
            titleView(
                label: AppString.bLSCPRAndFirstAidCertification.val,
                value: qualificationAndTest?.isBlsFirstAidCertification ?? ""),
            CustomSizedBox(height: DBL.eight.val),
            _subTitleVIew(
                label: AppString.docNumber.val,
                value: qualificationAndTest?.blsDocumnetNumber ?? ""),
            CustomSizedBox(height: DBL.eight.val),
            _subTitleVIew(
                label: AppString.expiryDate.val,
                value: qualificationAndTest?.blsExpiry
                        ?.parseWithFormat(dateFormat: AppString.mmDDYYY.val) ??
                    ""),
            CustomSizedBox(
              height: DBL.eighteen.val,
            ),
            titleView(
                label: AppString.tBAndPPDTest.val,
                value: qualificationAndTest?.isTbPpdTest ?? ""),
            CustomSizedBox(height: DBL.eight.val),
            _subTitleVIew(
                label: AppString.takenDate.val,
                value: qualificationAndTest?.tbTakenDate
                        ?.parseWithFormat(dateFormat: AppString.mmDDYYY.val) ??
                    ""),
            CustomSizedBox(height: DBL.eight.val),
            _subTitleVIew(
                label: AppString.result.val,
                value: qualificationAndTest?.tbResult ?? ""),
            CustomSizedBox(
              height: DBL.eighteen.val,
            ),
            titleView(
                label: AppString.covid19Vaccination.val,
                value: qualificationAndTest?.isCovidVaccinated ?? ""),
            CustomSizedBox(height: DBL.eight.val),
            _subTitleVIew(
                label: AppString.takenDate.val,
                value: qualificationAndTest?.vaccinTakenDate
                        ?.parseWithFormat(dateFormat: AppString.mmDDYYY.val) ??
                    ""),
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
        fontSize: FS.font13PointFive.val,
      ),
    );
  }

  RowColonCombo titleView({required String label, required String value}) {
    return RowColonCombo.threeEighty(
      label: label,
      value: value,
      color: AppColor.label7.val,
      fontSize: FS.font13PointFive.val,
      fontWeight: FW.w500.val,
    );
  }
}
