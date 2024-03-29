import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/core/utility.dart';
import 'package:admin_580_tech/domain/user_management_detail/model/client_service_response.dart';
import 'package:admin_580_tech/presentation/user_mangement_detail/widgets/service_status.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';

import '../../widget/alert_text_label.dart';
import '../../widget/cached_image.dart';
import '../../widget/custom_rating_bar.dart';
import '../../widget/row_combo.dart';

class ServiceDetailsPopUp extends StatelessWidget {
  const ServiceDetailsPopUp({
    super.key,
    required this.services,
  });

  final ClientServices services;

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
                            width: isXs(context) ? 150 : 250,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CachedImage(
                                  imgUrl: services.client?.profilePic,
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
                                CachedImage(
                                  imgUrl: services.client?.profilePic,
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
          services.status == 6
              ? Row(
                  children: [
                    Expanded(
                      child: AlertTextLabel(AppString.cancelReason.val),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .11,
                    ),
                    AlertTextLabel(services.cancelReason ?? '')
                  ],
                )
              : SizedBox.shrink(),
          Row(
            children: [
              AlertTextLabel(AppString.careAmbassador.val),
              SizedBox(
                width: MediaQuery.of(context).size.width * .065,
              ),
              Flexible(
                  child: _tableRowImage(context,
                      name: (services.caregiver?.firstName ?? '') +
                          (services.caregiver?.lastName ?? ''),
                      imgUrl: services.caregiver?.profilePic ?? ''))
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: RowColonCombo.twoHundred(
                      label: AppString.startDateAndTime.val,
                      value: Utility.serviceDate(
                        DateTime.parse(services.startDateTime ?? "").toLocal(),
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
                        DateTime.parse(services.endDateTime ?? "").toLocal()),
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
                    value: '',
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
                        RowColonCombo.twoHundred(
                            label: AppString.serviceCompleted.val,
                            value: '',
                            tierOneServiceList:
                                services.caregiver?.completedServices?.tier1,
                            tierTwoServiceList:
                                services.caregiver?.completedServices?.tier2),
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
                        RowColonCombo.twoHundred(
                          label: AppString.serviceInComplete.val,
                          value: '',
                          tierOneServiceList:
                              services.caregiver?.notcompletedServices?.tier1,
                          tierTwoServiceList:
                              services.caregiver?.notcompletedServices?.tier2,
                        ),
                      ],
                    ))
                  : CustomSizedBox.shrink(),
            ],
          ),
          Row(
            children: [
              Expanded(child: SizedBox()),
              !isLg(context)
                  ? Expanded(
                      child: Column(
                      children: [
                        RowColonCombo.twoHundred(
                          label: AppString.extraService.val,
                          value: '',
                          tierOneServiceList: services
                              .caregiver?.completedServices?.tier1
                              ?.where((element) => element.isExtra ?? false)
                              .toList(),
                          tierTwoServiceList: services
                              .caregiver?.completedServices?.tier2
                              ?.where((element) => element.isExtra ?? false)
                              .toList(),
                        ),
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
                    value:
                        '\$ ${Utility.formatAmount(double.tryParse(services.totalServiceFee.toString() ?? "0.0") ?? 0.0)}',
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
            serviceListOne: services.caregiver?.completedServices?.tier1,
            serviceListTwo: services.caregiver?.completedServices?.tier2),
        // _dataView(
        //     hasColon: false,
        //     label: '',
        //     value: '',
        //     serv: services.caregiver?.completedServices?.tier2),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _dataView(
            label: AppString.serviceInComplete.val,
            value: '',
            serviceListOne: services.caregiver?.notcompletedServices?.tier1,
            serviceListTwo: services.caregiver?.notcompletedServices?.tier2),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _dataView(
          label: AppString.extraService.val,
          value: '',
          serviceListOne: services.caregiver?.completedServices?.tier1
              ?.where((element) => element.isExtra ?? false)
              .toList(),
          serviceListTwo: services.caregiver?.completedServices?.tier2
              ?.where((element) => element.isExtra ?? false)
              .toList(),
        ),
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
      List<TierOne>? serviceListOne,
      List<TierTwo>? serviceListTwo,
      bool? hasColon}) {
    return RowColonCombo.twoHundred(
        label: label,
        value: value,
        tierOneServiceList: serviceListOne,
        tierTwoServiceList: serviceListTwo,
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
