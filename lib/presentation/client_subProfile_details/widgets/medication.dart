import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widget/custom_sizedbox.dart';
import '../../widget/row_combo.dart';

class Medication extends StatelessWidget {
  const Medication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 10,
                height: 20,
                color: AppColor.primaryColor.val,
              ),
              SizedBox(
                width: 5,
              ),
              CustomText(
                AppString.medicationDetails.val,
                style: TextStyle(color: AppColor.primaryColor.val),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (BuildContext context, index) {
                return Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColor.lightGrey.val)),
                      child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                              width: 500, child: _medicationDetailsView())),
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                );
              },
              scrollDirection: Axis.horizontal,
              itemCount: 2,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                width: 10,
                height: 20,
                color: AppColor.primaryColor.val,
              ),
              SizedBox(
                width: 5,
              ),
              CustomText(
                AppString.medicationDetails.val,
                style: TextStyle(color: AppColor.primaryColor.val),
              )
            ],
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (BuildContext context, index) {
                return Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColor.lightGrey.val)),
                      child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child:
                              SizedBox(width: 500, child: _drugDetailsView())),
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                );
              },
              scrollDirection: Axis.horizontal,
              itemCount: 2,
            ),
          ),
        ],
      ),
    );
  }

  RowColonCombo _drugName() {
    return RowColonCombo.twoHundred(
        label: AppString.drugName.val,
        value: "no value",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _dosage() {
    return RowColonCombo.twoHundred(
        label: AppString.dosage.val,
        value: "no value",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _frequency() {
    return RowColonCombo.twoHundred(
        label: AppString.frequency.val,
        value: "no value",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _expirationDate() {
    return RowColonCombo.twoHundred(
        label: AppString.expirationDate.val,
        value: "no value",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _prescribingDoctor() {
    return RowColonCombo.twoHundred(
        label: AppString.prescribingDoctor.val,
        value: "no value",
        fontSize: FS.font13PointFive.val);
  }

  Column _medicationDetailsView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _drugName(),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _dosage(),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _frequency(),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _expirationDate(),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _prescribingDoctor()
      ],
    );
  }

  Column _drugDetailsView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _drugName(),
      ],
    );
  }

  bool isLg(BuildContext context) => MediaQuery.of(context).size.width <= 1236;
}
