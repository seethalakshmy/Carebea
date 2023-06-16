import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/presentation/widget/alert_text_label.dart';
import 'package:admin_580_tech/presentation/widget/cached_image.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_listview_builder.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:admin_580_tech/presentation/widget/rectangle_border.dart';
import 'package:admin_580_tech/presentation/widget/row_combo.dart';
import 'package:admin_580_tech/presentation/widget/table_status_box.dart';
import 'package:flutter/material.dart';

import 'custom_svg.dart';

class ServiceDetailReportsView extends StatelessWidget {
  const ServiceDetailReportsView({
    Key? key,
    required this.suspectedOtherIssue,
    required this.reportedOtherIssue,
    required this.suspectedIssues,
    required this.reportedIssues,
  }) : super(key: key);
  final String suspectedOtherIssue;
  final List<String> reportedIssues;

  final List<String> suspectedIssues;
  final String reportedOtherIssue;

  @override
  Widget build(BuildContext context) {
    return RectangleBorder(
      child: Column(
        children: [
          _suspectedView(context),
          CustomSizedBox(
            height: DBL.ten.val,
          ),
          RowColonCombo(
            label: AppString.otherIssues.val,
            value: suspectedOtherIssue,
            isNotChangeWidth: false,
          ),
          CustomSizedBox(
            height: DBL.ten.val,
          ),
          _reportedIssueView(context),
          CustomSizedBox(
            height: DBL.ten.val,
          ),
          RowColonCombo(
            label: AppString.otherIssues.val,
            value: reportedOtherIssue,
            isNotChangeWidth: false,
          ),
        ],
      ),
    );
  }

  Row _reportedIssueView(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AlertTextLabel(
          AppString.reportedIssuesByCareAmbassador.val,
          isNotChangeWidth: false,
          isCustomWidth: true,
        ),
        reportedIssues.isNotEmpty
            ? _reportedIssueListView(context)
            : CustomSizedBox.shrink()
      ],
    );
  }

  ///todo to set dynamic listview height depends on content height
  CustomSizedBox _reportedIssueListView(BuildContext context) {
    return CustomSizedBox(
      height: DBL.seventy.val,
      width: isXs(context) ? DBL.oneTwenty.val : DBL.twoHundred.val,
      child: CustomListViewBuilder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: reportedIssues.length,
        itemBuilder: (context, index) {
          return CustomText("${index + 1}. ${reportedIssues[index]}",
              style: TS().gRoboto(
                  color: AppColor.matBlack3.val, fontWeight: FW.w400.val));
        },
      ),
    );
  }

  Row _suspectedView(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AlertTextLabel(AppString.suspectedThings.val,
            isCustomWidth: true, isNotChangeWidth: false),
        suspectedIssues.isNotEmpty
            ? _buildSuspectedListView(context)
            : CustomSizedBox.shrink()
      ],
    );
  }

  ///todo to set dynamic listview height depends on content height
  CustomSizedBox _buildSuspectedListView(BuildContext context) {
    return CustomSizedBox(
      height: DBL.seventy.val,
      width: isXs(context) ? DBL.oneTwenty.val : DBL.twoHundred.val,
      child: CustomListViewBuilder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: suspectedIssues.length,
        itemBuilder: (context, index) {
          return CustomText("${index + 1}. ${suspectedIssues[index]}",
              style: TS().gRoboto(
                  color: AppColor.matBlack3.val, fontWeight: FW.w400.val));
        },
      ),
    );
  }

  bool isXs(BuildContext context) => MediaQuery.of(context).size.width <= 600;
}
