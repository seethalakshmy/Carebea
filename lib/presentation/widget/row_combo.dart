import 'package:flutter/material.dart';

import '../../core/enum.dart';
import '../../domain/subProfile_details/model/sub_profile_detail_response.dart';
import '../../domain/user_management_detail/model/client_service_response.dart';
import 'alert_text_label.dart';

class RowColonCombo extends StatelessWidget {
  const RowColonCombo({
    super.key,
    required this.label,
    required this.value,
    this.list,
    this.petList,
    this.tierOneServiceList,
    this.tierTwoServiceList,
    this.fontSize,
    this.color,
    this.valueColor,
    this.onValueTap,
    this.width,
    this.customWidthLg1,
    this.needUnderLine = false,
    this.hasColon = true,
    this.fontWeight,
    this.valueFlex,
    this.needComma,
  });

  final String value;
  final bool hasColon;
  final List<dynamic>? list;
  final List<TierOne>? tierOneServiceList;
  final List<TierTwo>? tierTwoServiceList;
  final List<Pet>? petList;
  final String label;
  final Color? color;
  final Color? valueColor;
  final double? fontSize;
  final double? width;
  final double? customWidthLg1;
  final Function()? onValueTap;
  final bool? needUnderLine;
  final bool? needComma;
  final int? valueFlex;

  final FontWeight? fontWeight;

  RowColonCombo.twoHundred({
    super.key,
    this.list,
    this.petList,
    required this.label,
    required this.value,
    this.color,
    this.valueColor,
    this.onValueTap,
    this.fontSize,
    this.fontWeight,
    this.customWidthLg1,
    this.needUnderLine = false,
    this.hasColon = true,
    this.tierOneServiceList,
    this.tierTwoServiceList,
    this.valueFlex,
    this.needComma,
  }) : width = DBL.twoHundred.val;

  RowColonCombo.threeEighty(
      {super.key,
      this.list,
      this.petList,
      required this.value,
      required this.label,
      this.color,
      this.valueColor,
      this.onValueTap,
      this.fontSize,
      this.fontWeight,
      this.customWidthLg1,
      this.needUnderLine = false,
      this.hasColon = true,
      this.tierOneServiceList,
      this.valueFlex,
      this.tierTwoServiceList,
      this.needComma})
      : width = DBL.threeEighty.val;

  RowColonCombo.threeSeventy(
      {super.key,
      this.list,
      this.petList,
      required this.value,
      required this.label,
      this.color,
      this.valueColor,
      this.onValueTap,
      this.fontSize,
      this.fontWeight,
      this.customWidthLg1,
      this.needUnderLine = false,
      this.hasColon = true,
      this.tierOneServiceList,
      this.valueFlex,
      this.tierTwoServiceList,
      this.needComma})
      : width = DBL.threeSeventeen.val;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.start,
      children: [
        AlertTextLabel(
          label,
          isCustomWidth: true,
          customWidth: width,
          customWidthLg1: customWidthLg1,
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
        ),
        hasColon
            ? AlertTextLabel(
                AppString.colon.val,
                isRequiredSpace: true,
                color: color,
                fontWeight: fontWeight,
                fontSize: fontSize,
              )
            : const SizedBox.shrink(),
        InkWell(
          onTap: onValueTap,
          child: AlertTextLabel(
            value,
            color: color ?? valueColor,
            needUnderLine: needUnderLine,
            fontWeight: fontWeight,
            fontSize: fontSize,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: list
                  ?.map(
                    (e) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AlertTextLabel(
                          e,
                          color: color,
                          fontWeight: fontWeight,
                          fontSize: fontSize,
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  )
                  .toList() ??
              [],
        ),
        RichText(
          text: TextSpan(style: const TextStyle(fontSize: 12), children: [
            ...List.generate(
                tierOneServiceList?.length ?? 0,
                (index) => TextSpan(
                    text: '${tierOneServiceList![index].serviceName},')),
            ...List.generate(
                tierTwoServiceList?.length ?? 0,
                (index) => TextSpan(
                    text: '${tierTwoServiceList![index].serviceName},'))
          ]),
        ),
      ],
    );
  }
}
