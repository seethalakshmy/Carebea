import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/presentation/widget/commonImageview.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../application/bloc/sub_profile_details/sub_profile_details_bloc.dart';
import '../../../domain/subProfile_details/model/sub_profile_detail_response.dart';
import '../../widget/alert_text_label.dart';
import '../../widget/custom_sizedbox.dart';
import '../../widget/row_combo.dart';
import 'medication.dart';

class SubProfileHealthProfile extends StatelessWidget {
  const SubProfileHealthProfile({Key? key, required this.state})
      : super(key: key);
  final SubProfileDetailState state;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ExpansionTile(
            title: AlertTextLabel(
              AppString.diagnosis.val,
              fontSize: 14,
            ),
            leading: CommonImageView(
              svgPath: IMG.diagnosis.val,
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10, // Replace with your desired item count
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            CustomText(
                              'Item $index ',
                              style: TextStyle(fontSize: 16),
                            ),
                            index < 9
                                ? Text(
                                    ' | ',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                : SizedBox.shrink()
                          ],
                        );
                      },
                    )),
              ),
            ],
          ),
          ExpansionTile(
            title: AlertTextLabel(
              AppString.diet.val,
              fontSize: 14,
            ),
            leading: CommonImageView(
              svgPath: IMG.diet.val,
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10, // Replace with your desired item count
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            CustomText(
                              'Item $index ',
                              style: TextStyle(fontSize: 16),
                            ),
                            index < 9
                                ? Text(
                                    ' | ',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                : SizedBox.shrink()
                          ],
                        );
                      },
                    )),
              ),
            ],
          ),
          ExpansionTile(
            title: AlertTextLabel(
              AppString.healthCondition.val,
              fontSize: 14,
            ),
            leading: CommonImageView(
              svgPath: IMG.health.val,
            ),
            children: [
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: _healthConditionView()),
            ],
          ),
          ExpansionTile(
            title: AlertTextLabel(
              AppString.medication.val,
              fontSize: 14,
            ),
            leading: CommonImageView(
              svgPath: IMG.medicine.val,
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Medication(),
              )
            ],
          ),
        ],
      ),
    );
  }

  RowColonCombo _foodAllergy() {
    return RowColonCombo.twoHundred(
        label: AppString.doYouHaveAnyFoodAllergies.val,
        value: "no value",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _difficultyInHearing() {
    return RowColonCombo.twoHundred(
        label: AppString.doYouHaveDifficultyInHearing.val,
        value: "no value",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _hearingAid() {
    return RowColonCombo.twoHundred(
        label: AppString.areYouUsingAnyHearingAid.val,
        value: "no value",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _difficultyInVision() {
    return RowColonCombo.twoHundred(
        label: AppString.doYouHaveDifficultyInVision.val,
        value: "no value",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _glass() {
    return RowColonCombo.twoHundred(
        label: AppString.areYouUsingAnyGlass.val,
        value: "no value",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _mentalCondition() {
    return RowColonCombo.twoHundred(
        label: AppString.mentalHealthCondition.val,
        value: "no value",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _mobility() {
    return RowColonCombo.twoHundred(
        label: AppString.mobility.val,
        value: "no value",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _allergyProblem() {
    return RowColonCombo.twoHundred(
        label: AppString.doYouHaveAnyAllergyProblem.val,
        value: "no value",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _otherAllergies() {
    return RowColonCombo.twoHundred(
        label: AppString.otherAllergies.val,
        value: "no value",
        fontSize: FS.font13PointFive.val);
  }

  Column _healthConditionView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _foodAllergy(),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _difficultyInHearing(),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _hearingAid(),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _difficultyInVision(),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _glass(),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _mentalCondition(),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _mobility(),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _allergyProblem(),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _otherAllergies(),
        CustomSizedBox(
          height: DBL.six.val,
        ),
      ],
    );
  }

  bool isLg(BuildContext context) => MediaQuery.of(context).size.width <= 1236;
}
