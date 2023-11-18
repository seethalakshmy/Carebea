import 'package:flutter/material.dart';

import '../../../core/enum.dart';
import '../../../domain/subProfile_details/model/sub_profile_detail_response.dart';
import '../../widget/alert_text_label.dart';

class PetListView extends StatelessWidget {
  const PetListView({
    super.key,
    required this.label,
    required this.value,
    this.list,
    this.petList,
    this.fontSize,
    this.color,
    this.width,
    this.customWidthLg1,
    this.fontWeight,
  });

  final String value;
  final List<dynamic>? list;
  final List<Pet>? petList;
  final String label;
  final Color? color;
  final double? fontSize;
  final double? width;
  final double? customWidthLg1;

  final FontWeight? fontWeight;
  PetListView.twoHundred({
    super.key,
    this.list,
    this.petList,
    required this.label,
    required this.value,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.customWidthLg1,
  }) : width = DBL.twoHundred.val;

  PetListView.threeEighty({
    super.key,
    this.list,
    this.petList,
    required this.value,
    required this.label,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.customWidthLg1,
  }) : width = DBL.threeEighty.val;

  PetListView.threeSeventy({
    super.key,
    this.list,
    this.petList,
    required this.value,
    required this.label,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.customWidthLg1,
  }) : width = DBL.threeSeventeen.val;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 370),
      child: Wrap(
        children: petList
                ?.map(
                  (e) => Wrap(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .01,
                      ),
                      Container(
                        // height: 20,
                        width: MediaQuery.of(context).size.width * .1,
                        decoration: BoxDecoration(
                            color: e.area == 1
                                ? AppColor.indoor.val
                                : e.area == 2
                                    ? AppColor.outdoor.val
                                    : AppColor.both.val,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Wrap(
                            children: [
                              AlertTextLabel(
                                e.name ?? '',
                                color: color,
                                fontWeight: fontWeight,
                                fontSize: fontSize,
                              ),
                              AlertTextLabel(
                                e.area == 1
                                    ? "(Indoor)"
                                    : e.area == 2
                                        ? "(Outdoor)"
                                        : "(Both)",
                                color: color,
                                fontWeight: fontWeight,
                                fontSize: fontSize,
                              ),
                            ],
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   width: 20,
                      // )
                    ],
                  ),
                )
                .toList() ??
            [],
      ),
    );
  }
}
