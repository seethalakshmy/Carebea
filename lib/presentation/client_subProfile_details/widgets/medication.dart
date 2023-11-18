import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/domain/subProfile_details/model/sub_profile_detail_response.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utility.dart';
import '../../widget/alert_text_label.dart';
import '../../widget/custom_sizedbox.dart';
import '../../widget/row_combo.dart';

class MedicationWidget extends StatelessWidget {
  MedicationWidget({Key? key, this.medication}) : super(key: key);

  List<Medication>? medication;
  HealthMedicalConditions? healthMedicalConditions;

  @override
  Widget build(BuildContext context) {
    print('medication ${medication?.length}');
    print('drug ${healthMedicalConditions?.toJson()}');
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                return Wrap(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColor.lightGrey.val)),
                      child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                              width: 500,
                              child: _medicationDetailsView(
                                  data: medication?[index]))),
                    ),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                );
              },
              scrollDirection: Axis.horizontal,
              itemCount: medication?.length ?? 0,
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
                AppString.allergicDrugs.val,
                style: TextStyle(color: AppColor.primaryColor.val),
              )
            ],
          ),
          Wrap(
            children: healthMedicalConditions?.drugs
                    ?.map(
                      (e) => Container(
                        color: Colors.red,
                        // height: 20,
                        width: 100,

                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Row(
                            children: [
                              AlertTextLabel(
                                e ?? '',
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList() ??
                [],
          )
          // SizedBox(
          //   height: 200,
          //   child: ListView.builder(
          //     shrinkWrap: true,
          //     itemBuilder: (BuildContext context, index) {
          //       return Row(
          //         children: [
          //           Container(
          //             decoration: BoxDecoration(
          //                 border: Border.all(color: AppColor.lightGrey.val)),
          //             child: Padding(
          //                 padding: const EdgeInsets.all(10.0),
          //                 child: SizedBox(
          //                     width: 500,
          //                     child: _drugDetailsView(data: data?.drugs?[index]))),
          //           ),
          //           SizedBox(
          //             width: 10,
          //           )
          //         ],
          //       );
          //     },
          //     scrollDirection: Axis.horizontal,
          //     itemCount: data?.drugs?.length ?? 0,
          //   ),
          // ),
        ],
      ),
    );
  }

  RowColonCombo _drugName(String? data) {
    return RowColonCombo.twoHundred(
        label: AppString.drugName.val,
        value: data ?? '',
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _dosage(Medication? data) {
    return RowColonCombo.twoHundred(
        label: AppString.dosage.val,
        value: data?.dosage ?? '',
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _frequency(Medication? data) {
    return RowColonCombo.twoHundred(
        label: AppString.frequency.val,
        value: data?.freequency ?? '',
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _expirationDate(Medication? data) {
    return RowColonCombo.twoHundred(
        label: AppString.expirationDate.val,
        value: Utility.dateConverter(
            date: data?.expirationDate ?? '',
            currentFormat: 'dd/mm/yyyy',
            convertToFormat: 'mm/dd/yyyy'),
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _prescribingDoctor(Medication? data) {
    return RowColonCombo.twoHundred(
        label: AppString.prescribingDoctor.val,
        value: data?.prescribingDoctor ?? '',
        fontSize: FS.font13PointFive.val);
  }

  Column _medicationDetailsView({Medication? data}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _drugName(data?.drugName),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _dosage(data),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _frequency(data),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _expirationDate(data),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _prescribingDoctor(data)
      ],
    );
  }

  Column _drugDetailsView({HealthMedicalConditions? data}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _drugName(data?.drugs?.single),
      ],
    );
  }

  bool isLg(BuildContext context) => MediaQuery.of(context).size.width <= 1236;
}
