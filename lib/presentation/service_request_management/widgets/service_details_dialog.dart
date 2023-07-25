import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/generated/assets.dart';
import 'package:admin_580_tech/presentation/service_request_management/widgets/cancellation_widget.dart';
import 'package:admin_580_tech/presentation/service_request_management/widgets/profile_widget.dart';
import 'package:admin_580_tech/presentation/service_request_management/widgets/rating_widget.dart';
import 'package:admin_580_tech/presentation/service_request_management/widgets/status_widget.dart';
import 'package:admin_580_tech/presentation/widget/commonImageview.dart';
import 'package:admin_580_tech/presentation/widget/custom_button.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../domain/service_request_management/model/service_request_response.dart';

class ServiceDetailsDialog extends StatelessWidget {
  const ServiceDetailsDialog(
      {Key? key, required this.service, required this.title})
      : super(key: key);

  final Services service;
  final String title;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 60),
          child: Container(
            constraints: BoxConstraints(
                maxHeight: size.height * 0.9, minWidth: size.width * 0.5),
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 60,
                    color: AppColor.primaryColor.val,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8, left: 20, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText("$title Service Request",
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 18)),
                          CloseButton(
                            color: Colors.white,
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ProfileWidget(
                                      imageUrl: service.client?.profile ?? "",
                                      name: service.client?.firstName ?? "",
                                      subText: 'Client'),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const CustomText('Status'),
                                      const SizedBox(
                                        width: 140,
                                      ),
                                      StatusWidget(status: title,isOngoing: service.isOngoing ?? false),
                                    ],
                                  ),
                                  _textAndSubText(
                                      text: AppString.serviceId.val,
                                      subText: service.serviceId ?? ""),
                                  if (title == AppString.canceled.val)
                                    CancellationWidget(
                                        reason: service.cancelReason ?? ""),
                                  _textAndSubText(
                                      text: AppString.startDateAndTime.val,
                                      subText: service.startDateTime ?? ""),
                                  _textAndSubText(
                                      text: AppString.endDateAndTime.val,
                                      subText: service.endDateTime ?? ""),
                                  _textAndSubText(
                                      text: AppString.location.val,
                                      subText:
                                          "${service.location?.first.address} \n ${service.location?.first.streetName}\n ${service.location?.first.stateName} \n ${service.location?.first.cityName}"),
                                  if (title == AppString.completed.val &&
                                      (service.isRated ?? false))
                                    RatingWidget(service: service),
                                  if ((service.feedback ?? "").isNotEmpty)
                                    _textAndSubText(
                                        text: AppString.feedBack.val,
                                        subText: service.feedback ?? ""),
                                  _textAndSubText(
                                      text: AppString.serviceFee.val,
                                      subText: service.serviceFee ?? ""),
                                  _textAndSubText(
                                      text: AppString.transactionId.val,
                                      subText: ""),
                                  if (title == AppString.canceled.val)
                                    if (title == AppString.canceled.val)
                                      _textAndSubText(
                                          text: AppString.cancelledBy.val,
                                          subText: service.cancelledBy ?? ""),
                                  if (title == AppString.canceled.val)
                                    _textAndSubText(
                                        text: AppString.refundStatus.val,
                                        subText: service.refundStatus ?? ""),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  title == AppString.pending.val
                                      ? const SizedBox()
                                      : ProfileWidget(
                                          imageUrl:
                                              service.decisionMaker?.profile ??
                                                  "",
                                          name: service
                                                  .decisionMaker?.firstName ??
                                              "",
                                          subText: 'Care Ambassador'),
                                  _serviceListWidget(
                                      title: 'Service Needed',
                                      servicesList:
                                          service.serviceNeeded ?? []),
                                  if (title == AppString.completed.val &&
                                      (service.caregiverReportedIssues ?? [])
                                          .isNotEmpty)
                                    _textAndSubText(
                                        text:
                                            "The suspected things during shift",
                                        subText: service
                                                .suspectedThingsDuringShift
                                                ?.join(' ') ??
                                            ''),
                                  if (title == AppString.completed.val &&
                                      (service.suspectedOtherIssues ?? "")
                                          .isNotEmpty)
                                    _textAndSubText(
                                        text: "Other Issues",
                                        subText:
                                            service.suspectedOtherIssues ?? ''),
                                  if (title == AppString.completed.val &&
                                      (service.caregiverReportedIssues ?? [])
                                          .isNotEmpty)
                                    _textAndSubText(
                                        text:
                                            "Reported issues by the care giver",
                                        subText: service.caregiverReportedIssues
                                                ?.join(' ') ??
                                            ''),
                                  if (title == AppString.completed.val &&
                                      (service.caregiverReportedOtherIssues ??
                                              "")
                                          .isNotEmpty)
                                    _textAndSubText(
                                        text: "Other Issues",
                                        subText: service
                                                .caregiverReportedOtherIssues ??
                                            ''),
                                  if (title == AppString.completed.val &&
                                      (service.serviceCompleted ?? [])
                                          .isNotEmpty)
                                    _serviceListWidget(
                                        title: 'Service Completed',
                                        servicesList:
                                            service.serviceCompleted ?? []),
                                  if (title == AppString.completed.val &&
                                      (service.serviceNotCompleted ?? [])
                                          .isNotEmpty)
                                    _serviceListWidget(
                                        title: 'Service Incomplete',
                                        servicesList:
                                            service.serviceNotCompleted ?? [])
                                ],
                              ),
                            )
                          ],
                        ),
                        if (title == AppString.pending.val ||
                            title == AppString.upcoming.val)
                          CustomButton(
                              onPressed: () {},
                              height: 45,
                              minWidth: 200,
                              color: Colors.white,
                              textColor: AppColor.primaryColor.val,
                              borderColor: AppColor.primaryColor.val,
                              text: AppString.cancelThisServiceRequest.val),
                        const SizedBox(
                          height: 20,
                        ),
                        if (title == AppString.upcoming.val)
                          CustomButton(
                            onPressed: () {},
                            height: 45,
                            minWidth: 200,
                            color: Colors.white,
                            textColor: AppColor.primaryColor.val,
                            borderColor: AppColor.primaryColor.val,
                            text: AppString.rescheduleThisServiceRequest.val,
                          ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _textAndSubText({required String text, required String subText}) {
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 180, child: CustomText(text)),
            const CustomText(':'),
            const SizedBox(
              width: 8,
            ),
            CustomText(subText)
          ],
        ),
      ],
    );
  }

  Widget _serviceListWidget(
      {required String title, required List<String> servicesList}) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 150, child: CustomText(title)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: servicesList
                  .map((e) => Row(
                        children: [
                          CommonImageView(svgPath: Assets.iconsIcTick),
                          const SizedBox(
                            width: 10,
                          ),
                          CustomText(e)
                        ],
                      ))
                  .toList(),
            )
          ],
        ),
      ],
    );
  }
}
