import 'package:admin_580_tech/domain/subProfile_details/model/sub_profile_details_model.dart';
import 'package:flutter/material.dart';

import '../../core/enum.dart';
import '../../domain/user_management_detail/model/client_service_response.dart';
import 'alert_text_label.dart';
import 'custom_text.dart';

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
      this.tierTwoServiceList})
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
      this.tierTwoServiceList})
      : width = DBL.threeSeventeen.val;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
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
        Expanded(
          child: InkWell(
            onTap: onValueTap,
            child: AlertTextLabel(
              value,
              color: color ?? valueColor,
              needUnderLine: needUnderLine,
              fontWeight: fontWeight,
              fontSize: fontSize,
            ),
          ),
        ),
        Flexible(
          child: Wrap(
            children: list
                    ?.map(
                      (e) => AlertTextLabel(
                        e,
                        color: color,
                        fontWeight: fontWeight,
                        fontSize: fontSize,
                      ),
                    )
                    .toList() ??
                [],
          ),
        ),
        Flexible(
          child: Wrap(
            children: tierOneServiceList
                    ?.map(
                      (e) => AlertTextLabel(
                        e.serviceName ?? '',
                        color: color,
                        fontWeight: fontWeight,
                        fontSize: fontSize,
                      ),
                    )
                    .toList() ??
                [],
          ),
        ),
        Flexible(
          child: Wrap(
            children: tierTwoServiceList
                    ?.map(
                      (e) => AlertTextLabel(
                        e.serviceName ?? '',
                        color: color,
                        fontWeight: fontWeight,
                        fontSize: fontSize,
                      ),
                    )
                    .toList() ??
                [],
          ),
        )
      ],
    );
  }
}
