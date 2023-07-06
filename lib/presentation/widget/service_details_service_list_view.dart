import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/presentation/widget/alert_text_label.dart';
import 'package:admin_580_tech/presentation/widget/custom_listview_builder.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:admin_580_tech/presentation/widget/rectangle_border.dart';
import 'package:admin_580_tech/presentation/widget/row_combo.dart';
import 'package:flutter/material.dart';

import 'custom_svg.dart';

class ServiceDetailServiceListView extends StatelessWidget {
  const ServiceDetailServiceListView({
    Key? key,
    required this.status,
    required this.inCompletedReason,
    required this.inCompletedServices,
    required this.serviceNeeded,
    required this.completedServices,
  }) : super(key: key);
  final int status;
  final List<String> completedServices;
  final List<String> inCompletedServices;
  final List<String> serviceNeeded;
  final String inCompletedReason;

  @override
  Widget build(BuildContext context) {
    return RectangleBorder(
      child: Column(
        children: [
          status == Status.completed.val
              ? Column(
                  children: [
                    _serviceCompletedView(context),
                    CustomSizedBox(
                      height: DBL.ten.val,
                    ),
                    _serviceUncompletedView(context),
                    _serviceUnCompletedReason(),
                  ],
                )
              : _serviceNeededView(context),
        ],
      ),
    );
  }

  Row _serviceNeededView(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AlertTextLabel(
          customWidth: DBL.threeEighty.val,
          AppString.serviceNeeded.val,
          isCustomWidth: true,
        ),
        serviceNeeded.isNotEmpty
            ? _buildNeededServiceListView(context)
            : CustomSizedBox.shrink()
      ],
    );
  }

  ///todo to set dynamic listview height depends on content height
  CustomSizedBox _buildNeededServiceListView(BuildContext context) {
    return CustomSizedBox(
      height: DBL.seventy.val,
      width: isXs(context) ? DBL.oneTwenty.val : DBL.twoHundred.val,
      child: CustomListViewBuilder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: serviceNeeded.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              CustomSvg(path: IMG.tick.val),
              SizedBox(
                width: DBL.fifteen.val,
              ),
              Flexible(
                fit: FlexFit.loose,
                child: CustomText(serviceNeeded[index],
                    style: TS().gRoboto(
                        color: AppColor.matBlack3.val,
                        fontWeight: FW.w400.val)),
              ),
            ],
          );
        },
      ),
    );
  }

  _serviceUnCompletedReason() {
    return RowColonCombo.threeEighty(
        value: inCompletedReason, label: AppString.reasonForInCompletion.val);
  }

  Row _serviceUncompletedView(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AlertTextLabel(
          customWidth: DBL.threeEighty.val,
          AppString.serviceInCompleted.val,
          isCustomWidth: true,
        ),
        inCompletedServices.isNotEmpty
            ? CustomSizedBox(
                height: DBL.seventy.val,
                width: isXs(context) ? DBL.oneTwenty.val : DBL.twoHundred.val,
                child: _buildUnCompletedListView(),
              )
            : CustomSizedBox.shrink(),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
      ],
    );
  }

  ///todo to set dynamic listview height depends on content height
  CustomListViewBuilder _buildUnCompletedListView() {
    return CustomListViewBuilder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: inCompletedServices.length,
      itemBuilder: (context, index) {
        return Row(
          children: [
            CustomSvg(path: IMG.tick.val),
            SizedBox(
              width: DBL.fifteen.val,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: CustomText(inCompletedServices[index],
                  style: TS().gRoboto(
                      color: AppColor.matBlack3.val, fontWeight: FW.w400.val)),
            ),
          ],
        );
      },
    );
  }

  Row _serviceCompletedView(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AlertTextLabel(
          customWidth: DBL.threeEighty.val,
          AppString.serviceCompleted.val,
          isCustomWidth: true,
        ),
        completedServices.isNotEmpty
            ? buildCompletedServiceListView(context)
            : CustomSizedBox.shrink()
      ],
    );
  }

  ///todo to set dynamic listview height depends on content height
  CustomSizedBox buildCompletedServiceListView(BuildContext context) {
    return CustomSizedBox(
      height: DBL.seventy.val,
      width: isXs(context) ? DBL.oneTwenty.val : DBL.twoHundred.val,
      child: CustomListViewBuilder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: completedServices.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              CustomSvg(path: IMG.tick.val),
              SizedBox(
                width: DBL.fifteen.val,
              ),
              Flexible(
                fit: FlexFit.loose,
                child: CustomText(completedServices[index],
                    style: TS().gRoboto(
                        color: AppColor.matBlack3.val,
                        fontWeight: FW.w400.val)),
              ),
            ],
          );
        },
      ),
    );
  }

  bool isXs(BuildContext context) => MediaQuery.of(context).size.width <= 600;
}
