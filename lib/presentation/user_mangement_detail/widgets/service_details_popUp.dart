import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/core/string_extension.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/core/utility.dart';
import 'package:admin_580_tech/domain/user_management_detail/model/client_service_response.dart';
import 'package:admin_580_tech/domain/user_management_detail/model/user_detail_response.dart';
import 'package:admin_580_tech/presentation/user_mangement_detail/widgets/service_status.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';

import '../../widget/alert_text_label.dart';
import '../../widget/cached_image.dart';
import '../../widget/custom_rating_bar.dart';
import '../../widget/custom_svg.dart';
import '../../widget/row_combo.dart';

class ServiceDetailsPopUp extends StatelessWidget {
  const ServiceDetailsPopUp({
    super.key,
    required this.services,
  });

  final ClientService services;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Responsive.isWeb(context)
              ? Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomSizedBox(
                            width: isXs(context) ? 150 : 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomSvg(
                                  path: services.client?.profilePic ??
                                      IMG.profilePlaceHolder.val,
                                  width: isXs(context) ? 150 : 200,
                                  height: isXs(context) ? 125 : 175,
                                ),
                              ],
                            ),
                          ),
                          const CustomSizedBox(
                            width: 25,
                          ),
                          CustomSizedBox(
                            width: isXs3(context)
                                ? MediaQuery.of(context).size.width - 230
                                : isXs2(context)
                                    ? MediaQuery.of(context).size.width - 470
                                    : isXs(context)
                                        ? MediaQuery.of(context).size.width -
                                            635
                                        : isLg2(context)
                                            ? MediaQuery.of(context)
                                                    .size
                                                    .width -
                                                695
                                            : MediaQuery.of(context)
                                                    .size
                                                    .width -
                                                1055,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 40,
                                ),
                                CustomText(
                                  (services.client?.firstName ?? '') +
                                      (services.client?.lastName ?? ''),
                                  style: TS().gRoboto(
                                    color: AppColor.rowColor.val,
                                    fontWeight: FW.w600.val,
                                    fontSize: getFontSize(
                                      context,
                                      fontSize: FS.font19.val,
                                    ),
                                  ),
                                ),
                                CustomSizedBox(
                                  height: DBL.seventeen.val,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Wrap(
                        children: [
                          CustomSizedBox(
                            width: isXs(context) ? 150 : 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomSvg(
                                  path: services.client?.profilePic ??
                                      IMG.profilePlaceHolder.val,
                                  width: isXs(context) ? 150 : 200,
                                  height: isXs(context) ? 125 : 175,
                                ),
                              ],
                            ),
                          ),
                          const CustomSizedBox(
                            width: 25,
                          ),
                          CustomSizedBox(
                            width: isXs3(context)
                                ? MediaQuery.of(context).size.width - 230
                                : isXs2(context)
                                    ? MediaQuery.of(context).size.width - 470
                                    : isXs(context)
                                        ? MediaQuery.of(context).size.width -
                                            635
                                        : isLg2(context)
                                            ? MediaQuery.of(context)
                                                    .size
                                                    .width -
                                                695
                                            : MediaQuery.of(context)
                                                    .size
                                                    .width -
                                                1055,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 40,
                                ),
                                CustomText(
                                  (services.client?.firstName ?? '') +
                                      (services.client?.lastName ?? ''),
                                  style: TS().gRoboto(
                                    color: AppColor.rowColor.val,
                                    fontWeight: FW.w600.val,
                                    fontSize: getFontSize(
                                      context,
                                      fontSize: FS.font19.val,
                                    ),
                                  ),
                                ),
                                CustomSizedBox(
                                  height: DBL.seventeen.val,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
          const CustomSizedBox(
            height: 25,
          ),
          Row(
            children: [
              Expanded(
                child: AlertTextLabel(AppString.status.val),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .11,
              ),
              ClientStatusWidget(serviceStatus: services.status ?? 0),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: RowColonCombo.twoHundred(
                    label: AppString.serviceId.val,
                    value: services.id ?? '',
                    fontSize: FS.font13PointFive.val),
              ),
              !isLg(context)
                  ? Expanded(
                      child: _dataView(
                          label: AppString.theSuspectThingsDuringTheShift.val,
                          value: 'No value'),
                    )
                  : CustomSizedBox.shrink(),
            ],
          ),
          Row(
            children: [
              AlertTextLabel(AppString.careAmbassador.val),
              SizedBox(
                width: MediaQuery.of(context).size.width * .065,
              ),
              Flexible(
                  child: _tableRowImage(context,
                      name: (services.caregiver?.firstName?.name?.firstName ??
                              '') +
                          (services.caregiver?.lastName?.name?.lastName ?? ''),
                      imgUrl: services.caregiver?.profilePic ?? ''))
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: RowColonCombo.twoHundred(
                      label: AppString.startDateAndTime.val,
                      value: Utility.serviceDate(
                        DateTime.parse(services.startDateTime ?? ""),
                      ),
                      fontSize: FS.font13PointFive.val)),
              !isLg(context)
                  ? Expanded(
                      child: _dataView(
                          label: AppString.otherIssues.val, value: 'No value'),
                    )
                  : CustomSizedBox.shrink(),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: RowColonCombo.twoHundred(
                    label: AppString.endDateAndTime.val,
                    value: Utility.serviceDate(
                        DateTime.parse(services.endDateTime ?? "")),
                    fontSize: FS.font13PointFive.val),
              ),
              !isLg(context)
                  ? Expanded(
                      child: _dataView(
                          label: AppString.theReportedIssueByTheCg.val,
                          value: 'No value'),
                    )
                  : CustomSizedBox.shrink(),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: RowColonCombo.twoHundred(
                    label: AppString.location.val,
                    value: "no value",
                    // personalDetails.?.parseWithFormat(
                    //         dateFormat: AppString.mmDDYYY.val) ??
                    //     "",
                    fontSize: FS.font13PointFive.val),
              ),
            ],
          ),
          Row(
            children: [
              const Expanded(child: SizedBox()),
              !isLg(context)
                  ? Expanded(
                      child: Column(
                      children: [
                        RowColonCombo.threeSeventy(
                            label: AppString.serviceCompleted.val,
                            value: '',
                            list: services.caregiver?.completedServices?.tier1),
                        RowColonCombo.threeSeventy(
                            hasColon: false,
                            label: '',
                            value: '',
                            list: services.caregiver?.completedServices?.tier2),
                      ],
                    ))
                  : CustomSizedBox.shrink(),
            ],
          ),
          Row(
            children: [
              AlertTextLabel(AppString.rating.val),
              SizedBox(width: MediaQuery.of(context).size.width * .11),
              Expanded(
                  child: CustomRatingBar(rating: 0
                      // services.rating ?? 0,
                      )),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: RowColonCombo.twoHundred(
                    label: AppString.feedBack.val,
                    value: "no value",
                    fontSize: FS.font13PointFive.val),
              ),
              !isLg(context)
                  ? Expanded(
                      child: Column(
                      children: [
                        RowColonCombo.threeSeventy(
                            label: AppString.serviceInComplete.val,
                            value: '',
                            list: services
                                .caregiver?.notcompletedServices?.tier1),
                        RowColonCombo.threeSeventy(
                            hasColon: false,
                            label: '',
                            value: '',
                            list: services
                                .caregiver?.notcompletedServices?.tier2),
                      ],
                    ))
                  : CustomSizedBox.shrink(),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: RowColonCombo.twoHundred(
                    label: AppString.serviceFee.val,
                    value: '\$ ${services.totalServiceFee}',
                    fontSize: FS.font13PointFive.val),
              ),
              !isLg(context)
                  ? Expanded(child: SizedBox.shrink())
                  : CustomSizedBox.shrink(),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: RowColonCombo.twoHundred(
                    label: AppString.transactionId.val,
                    value: services.id ?? '',
                    fontSize: FS.font13PointFive.val),
              ),
              !isLg(context)
                  ? Expanded(child: SizedBox.shrink())
                  : CustomSizedBox.shrink(),
            ],
          ),
          isLg(context) ? _rightView() : CustomSizedBox.shrink(),
        ],
      ),
    );
  }

  Column _rightView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _dataView(
            label: AppString.theSuspectThingsDuringTheShift.val, value: ''),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _dataView(label: AppString.otherIssues.val, value: ''),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _dataView(label: AppString.theReportedIssueByTheCg.val, value: ''),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _dataView(
            label: AppString.serviceCompleted.val,
            value: '',
            list: services.caregiver?.completedServices?.tier1),
        _dataView(
            hasColon: false,
            label: '',
            value: '',
            list: services.caregiver?.completedServices?.tier2),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _dataView(
            label: AppString.serviceInComplete.val,
            value: '',
            list: services.caregiver?.notcompletedServices?.tier1),
        _dataView(
            label: '',
            value: '',
            hasColon: false,
            list: services.caregiver?.notcompletedServices?.tier2),
      ],
    );
  }

  Widget _tableRowImage(BuildContext context,
      {required String name, required String imgUrl}) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: CachedImage(
              height: DBL.thirty.val, width: DBL.thirty.val, imgUrl: imgUrl),
        ),
        CustomSizedBox(width: DBL.twelve.val),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSizedBox(
              height: DBL.ten.val,
            ),
            Flexible(
              child: CustomText(
                name,
                overflow: TextOverflow.visible,
                softWrap: true,
                style: TS().gRoboto(
                    fontSize: Responsive.isWeb(context)
                        ? DBL.twelve.val
                        : DBL.ten.val,
                    fontWeight: FW.w400.val,
                    color: AppColor.rowColor.val),
              ),
            ),
            CustomSizedBox(
              height: DBL.three.val,
            ),
          ],
        ),
      ],
    );
  }

  RowColonCombo _dataView(
      {required String label,
      required String value,
      List<String>? list,
      bool? hasColon}) {
    return RowColonCombo.threeSeventy(
        label: label,
        value: value,
        list: list,
        hasColon: hasColon ?? true,
        fontSize: FS.font13PointFive.val);
  }

  double getFontSize(BuildContext context, {required double fontSize}) {
    return Responsive.isLg(context) ? fontSize - 2 : fontSize;
  }

  bool isLg2(context) => MediaQuery.of(context).size.width <= 1385;

  bool isXs(context) => MediaQuery.of(context).size.width <= 990;

  bool isXs2(context) => MediaQuery.of(context).size.width <= 930;

  bool isXs3(context) => MediaQuery.of(context).size.width <= 805;

  bool isLg(BuildContext context) => MediaQuery.of(context).size.width <= 1236;
}
