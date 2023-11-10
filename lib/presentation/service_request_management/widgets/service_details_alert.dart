import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/domain/service_request_management/model/service_details_response_model.dart';
import 'package:admin_580_tech/presentation/service_request_management/widgets/profile_widget.dart';
import 'package:admin_580_tech/presentation/service_request_management/widgets/rating_widget.dart';
import 'package:admin_580_tech/presentation/service_request_management/widgets/status_widget.dart';
import 'package:admin_580_tech/presentation/widget/custom_button.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/bloc/service_request_management/service_request_management_bloc.dart';
import '../../../application/bloc/transaction_management/transaction_management_bloc.dart';
import '../../../core/responsive.dart';
import '../../../core/text_styles.dart';
import '../../../generated/assets.dart';
import '../../../infrastructure/shared_preference/shared_preff_util.dart';
import '../../../infrastructure/transaction_management/transactions_repository.dart';
import '../../routes/app_router.gr.dart';
import '../../side_menu/side_menu_page.dart';
import '../../transaction_management/widgets/transaction_details_alert.dart';
import '../../widget/commonImageview.dart';
import '../../widget/common_alert_widget.dart';
import '../../widget/custom_alert_dialog_widget.dart';
import '../../widget/custom_container.dart';
import '../../widget/custom_shimmer.dart';
import '../../widget/empty_view.dart';
import '../../widget/table_loader_view.dart';
import 'cancel_request_alert_widget.dart';
import 'cancellation_widget.dart';

class ServiceDetailsAlert extends StatelessWidget {
  ServiceDetailsAlert(
      {super.key, required this.serviceBloc, required this.title});

  final ServiceRequestManagementBloc serviceBloc;
  final String title;
  final TextEditingController controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: serviceBloc,
      child: BlocBuilder<ServiceRequestManagementBloc,
          ServiceRequestManagementState>(
        bloc: serviceBloc,
        builder: (context, state) {
          return SizedBox(
            height: Responsive.isWeb(context)
                ? MediaQuery.of(context).size.height
                : MediaQuery.of(context).size.height * 1.5,
            child: serviceBloc.state.isDetailsLoading ?? false
                ? const TableLoaderView()
                : serviceBloc.serviceDetailsList.isEmpty
                    ? EmptyView(
                        title: AppString.noDataFound.val,
                      )
                    : Padding(
                        padding: EdgeInsets.all(DBL.twenty.val),
                        child: SingleChildScrollView(
                          child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.start,
                            alignment: WrapAlignment.center,
                            runSpacing: DBL.twenty.val,
                            spacing: DBL.twenty.val,
                            children: [
                              CustomSizedBox(
                                width: DBL.sixHundred.val,
                                child: _clientViewWidget(context),
                              ),
                              !Responsive.isWeb(context)
                                  ? Divider(
                                      color: AppColor.lightGrey.val,
                                      thickness: DBL.two.val,
                                    )
                                  : const CustomSizedBox(),
                              CustomSizedBox(
                                width: DBL.sixHundred.val,
                                child: _caViewWidget(context),
                              ),
                              /*if (title == AppString.pending.val ||
                                  title == AppString.upcoming.val)
                                BlocBuilder<ServiceRequestManagementBloc,
                                    ServiceRequestManagementState>(
                                  builder: (context, state) {
                                    var service =
                                        serviceBloc.serviceDetailsList[0];
                                    return CustomButton(
                                        onPressed: () {
                                          _cancelServiceRequestPopup(
                                            context,
                                            service,
                                          );
                                        },
                                        height: DBL.fortyFive.val,
                                        minWidth: DBL.twoHundred.val,
                                        color: AppColor.white.val,
                                        textColor: AppColor.primaryColor.val,
                                        borderColor: AppColor.primaryColor.val,
                                        text: AppString
                                            .cancelThisServiceRequest.val);
                                  },
                                ),*/
                            ],
                          ),
                        ),
                      ),
          );
        },
      ),
    );
  }

  _clientViewWidget(BuildContext context) {
    var service = serviceBloc.serviceDetailsList[0];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _profileWidget(service, context),
        _subClientNameWidget(context, service),
        CustomSizedBox(height: DBL.ten.val),
        _statusShowingWidget(context, service),
        CustomSizedBox(height: DBL.ten.val),
        _clientDetailsWidget(context, service),
        CustomSizedBox(height: DBL.ten.val),
        title == AppString.completed.val
            ? _ratingViewWidget(service)
            : const CustomSizedBox(),
        CustomSizedBox(height: DBL.ten.val),
        _transactionDetailsWidget(service, context)
      ],
    );
  }

  ProfileWidget _profileWidget(
      ServiceDetailsData service, BuildContext context) {
    return ProfileWidget(
      // width: DBL.threeFifty.val,
      imageUrl: service.parentProPic ?? "",
      name:
          "${service.parentName!.firstName ?? ""} ${service.parentName!.lastName ?? ""}",
      subText: AppString.client.val,
      onNameTap: () {
        Navigator.pop(context);
        autoTabRouter
            ?.navigate(UserManagementDetailRoute(id: service.parentId ?? ""));
      },
    );
  }

  Column _ratingViewWidget(ServiceDetailsData service) {
    String reviewByClient = "";
    num ratingByClient = 0;
    String reviewByCa = "";
    num ratingByCa = 0;
    if (service.caregiverInfo != null) {
      if (service.caregiverInfo!.review!.isNotEmpty) {
        for (int i = 0; i < service.caregiverInfo!.review!.length; i++) {
          if ((service.caregiverInfo!.review![i].serviceId ?? "") ==
              (service.serviceId ?? "")) {
            reviewByClient = service.caregiverInfo!.review![i].review ?? "";
            ratingByClient = service.caregiverInfo!.review![i].rating ?? 0;
          }
        }
      }
      if (service.caregiverInfo!.reviewByCg!.isNotEmpty) {
        for (int i = 0; i < service.caregiverInfo!.reviewByCg!.length; i++) {
          if ((service.caregiverInfo!.reviewByCg![i].serviceId ?? "") ==
              (service.serviceId ?? "")) {
            reviewByCa = service.caregiverInfo!.reviewByCg![i].review ?? "";
            ratingByCa = service.caregiverInfo!.reviewByCg![i].rating ?? 0;
          }
        }
      }
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title == AppString.completed.val && (service.isRated ?? false)
            ? RatingWidget(
                rater: AppString.client.val,
                feedback: reviewByClient,
                rating:
                    double.tryParse(ratingByClient.toString()) ?? DBL.zero.val)
            : _rateNowButton(onPressed: () {}, title: AppString.rateTheCa.val),
        CustomSizedBox(height: DBL.ten.val),
        title == AppString.completed.val && (service.isRatedByCg ?? false)
            ? RatingWidget(
                rater: AppString.careAmbassador.val,
                feedback: reviewByCa,
                rating: double.tryParse(ratingByCa.toString()) ?? DBL.zero.val)
            : _rateNowButton(
                onPressed: () {}, title: AppString.rateTheClient.val)
      ],
    );
  }

  Container _rateNowButton(
      {required String title, required Function() onPressed}) {
    return Container(
      // width: DBL.fiveFifty.val,
      padding: EdgeInsets.symmetric(
          vertical: DBL.ten.val, horizontal: DBL.oneThirty.val),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(DBL.eight.val),
          border:
              Border.all(color: AppColor.lightGrey.val, width: DBL.one.val)),
      child: CustomButton(
        onPressed: onPressed,
        text: title,
        color: AppColor.white.val,
        textColor: AppColor.primaryColor.val,
        padding: EdgeInsets.all(DBL.twenty.val),
      ),
    );
  }

  _subClientNameWidget(BuildContext context, ServiceDetailsData service) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
        autoTabRouter?.navigate(
            ClientSubProfileDetailsRoute(id: service.profileId ?? ""));
      },
      child: Container(
        // width: DBL.fiveFifty.val,
        padding: EdgeInsets.only(
            left: DBL.ten.val, right: DBL.ten.val, bottom: DBL.ten.val),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(DBL.eight.val),
            border:
                Border.all(color: AppColor.lightGrey.val, width: DBL.one.val)),
        child: _textAndSubText(
            text: AppString.clientName.val,
            subText:
                "${service.clientName!.firstName ?? ""} ${service.clientName!.lastName ?? ""}",
            context: context),
      ),
    );
  }

  _statusShowingWidget(BuildContext context, ServiceDetailsData service) {
    return Container(
      // width: DBL.fiveFifty.val,
      padding: EdgeInsets.all(DBL.ten.val),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(DBL.eight.val),
          border:
              Border.all(color: AppColor.lightGrey.val, width: DBL.one.val)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(AppString.status.val),
              SizedBox(width: DBL.oneForty.val),
              StatusWidget(
                status: title,
                isOngoing: false,
                onStartPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext buildContext) {
                      return BlocBuilder<ServiceRequestManagementBloc,
                          ServiceRequestManagementState>(
                        builder: (context, state) {
                          return CommonAlertWidget(
                            controller: controller,
                            isLoading: state.isStartServiceLoading,
                            heading: AppString.startService.val,
                            label: AppString.areYouSureStartServiceRequest.val,
                            onTapYes: () {
                              context.read<ServiceRequestManagementBloc>().add(
                                  ServiceRequestManagementEvent.startService(
                                      userId: SharedPreffUtil().getAdminId,
                                      serviceId: service.serviceId ?? "",
                                      context: context));
                            },
                          );
                        },
                      );
                    },
                  );
                },
              ),
              title == AppString.upcoming.val
                  ? SizedBox(width: DBL.ten.val)
                  : const CustomSizedBox(),
              title == AppString.upcoming.val
                  ? CustomText(
                      serviceBloc.generateDaysLeft(service.serviceDate ?? ""),
                      style: TS().gRoboto(
                          color: AppColor.red2.val, fontWeight: FW.w500.val),
                    )
                  : const CustomSizedBox()
            ],
          ),
          _textAndSubText(
              context: context,
              text: AppString.serviceId.val,
              subText: service.bookingId ?? ""),
          if (title == AppString.canceled.val)
            CancellationWidget(reason: service.reasonForCancellation ?? ""),
        ],
      ),
    );
  }

  Container _clientDetailsWidget(
      BuildContext context, ServiceDetailsData service) {
    return Container(
      // width: DBL.fiveFifty.val,
      padding: EdgeInsets.all(DBL.ten.val),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(DBL.eight.val),
          border:
              Border.all(color: AppColor.lightGrey.val, width: DBL.one.val)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _textAndSubText(
              context: context,
              text: AppString.startDateAndTime.val,
              subText: serviceBloc
                  .generateFormattedDate(service.startDateTime ?? "")),
          _textAndSubText(
              context: context,
              text: AppString.endDateAndTime.val,
              subText:
                  serviceBloc.generateFormattedDate(service.endDateTime ?? "")),
          _textAndSubText(
              context: context,
              text: AppString.location.val,
              subText: service.address != null
                  ? service.address!.locationTag!.replaceAll(",", ",\n")
                  : ""),
        ],
      ),
    );
  }

  Container _issuesShowingWidget(
      BuildContext context, ServiceDetailsData service) {
    String suspectedThingDuringShift = "";
    String reportIssueByCg = "";
    if (service.suspectedThingDuringShift!.isNotEmpty) {
      suspectedThingDuringShift =
          "* ${service.suspectedThingDuringShift!.join("\n* ")}";
      print("suspected list : $suspectedThingDuringShift");
    }
    if (service.reportIssueByCg!.isNotEmpty) {
      reportIssueByCg = "* ${service.reportIssueByCg!.join("\n* ")}";
      print("cg report list : $reportIssueByCg");
    }
    return Container(
      // width: DBL.fiveFifty.val,
      margin: EdgeInsets.only(bottom: DBL.ten.val),
      padding: EdgeInsets.all(DBL.ten.val),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(DBL.eight.val),
          border:
              Border.all(color: AppColor.lightGrey.val, width: DBL.one.val)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _textAndSubText(
              context: context,
              text: AppString.suspectedThings.val,
              subText: suspectedThingDuringShift),
          _textAndSubText(
              context: context,
              text: AppString.otherIssues.val,
              subText: service.suspectedThingDuringShiftDesc ?? ""),
          _textAndSubText(
              context: context,
              text: AppString.reportedIssuesByCareAmbassador.val,
              subText: reportIssueByCg),
          _textAndSubText(
              context: context,
              text: AppString.otherIssues.val,
              subText: service.reportIssueByCgDesc ?? ""),
        ],
      ),
    );
  }

  _caViewWidget(BuildContext context) {
    List<String> completedServices = [];
    List<String> neededServices = [];
    List<String> extraServices = [];
    List<String> notCompletedServices = [];
    var service = serviceBloc.serviceDetailsList[0];
    if (service.completedServices != null) {
      for (int i = 0;
          i < service.completedServices!.completedTier1!.length;
          i++) {
        if (service.completedServices!.completedTier1![i].isExtra == false) {
          completedServices
              .add(service.completedServices!.completedTier1![i].service ?? "");
        } else {
          extraServices
              .add(service.completedServices!.completedTier1![i].service ?? "");
        }
      }
      for (int i = 0;
          i < service.completedServices!.completedTier2!.length;
          i++) {
        if (service.completedServices!.completedTier2![i].isExtra == false) {
          completedServices
              .add(service.completedServices!.completedTier2![i].service ?? "");
        } else {
          extraServices
              .add(service.completedServices!.completedTier2![i].service ?? "");
        }
      }
    }
    if (service.notCompletedServices != null) {
      for (int i = 0;
          i < service.notCompletedServices!.notCompletedTier1!.length;
          i++) {
        if (service.notCompletedServices!.notCompletedTier1![i].isExtra ==
            false) {
          notCompletedServices.add(
              service.notCompletedServices!.notCompletedTier1![i].service ??
                  "");
        } else {
          extraServices.add(
              service.notCompletedServices!.notCompletedTier1![i].service ??
                  "");
        }
      }
      for (int i = 0;
          i < service.notCompletedServices!.notCompletedTier2!.length;
          i++) {
        if (service.notCompletedServices!.notCompletedTier2![i].isExtra ==
            false) {
          notCompletedServices.add(
              service.notCompletedServices!.notCompletedTier2![i].service ??
                  "");
        } else {
          extraServices.add(
              service.notCompletedServices!.notCompletedTier2![i].service ??
                  "");
        }
      }
    }
    if (service.services != null) {
      for (int i = 0; i < service.services!.servicesTier1!.length; i++) {
        neededServices.add(service.services!.servicesTier1![i].service ?? "");
      }
      for (int i = 0; i < service.services!.servicesTier2!.length; i++) {
        neededServices.add(service.services!.servicesTier2![i].service ?? "");
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title == AppString.pending.val
            ? const SizedBox()
            : ProfileWidget(
                // width: DBL.threeFifty.val,
                imageUrl: service.caregiverProPic ?? "",
                name:
                    "${service.caregiverInfo!.name!.firstName ?? ""} ${service.caregiverInfo!.name!.lastName ?? ""}",
                subText: AppString.careAmbassador.val,
                onNameTap: () {
                  Navigator.pop(context);
                  autoTabRouter?.navigate(
                      CareGiverProfileRoute(id: service.caregiverId));
                },
              ),
        if (title == AppString.completed.val && (service.services != null))
          _issuesShowingWidget(context, service),
        if (title != AppString.completed.val && (service.services != null))
          _serviceShowingWidget(
              onTap: () {
                serviceBloc.add(
                    ServiceRequestManagementEvent.showOrHideNeededServices(
                        isShowing: !serviceBloc.state.isShowingNeededServices));
                serviceBloc.add(const ServiceRequestManagementEvent
                    .showOrHideCompletedServices(isShowing: false));
                serviceBloc.add(const ServiceRequestManagementEvent
                    .showOrHideIncompleteServices(isShowing: false));
                serviceBloc.add(
                    const ServiceRequestManagementEvent.showOrHideExtraServices(
                        isShowing: false));
              },
              isShowing: serviceBloc.state.isShowingNeededServices,
              title: AppString.serviceNeeded.val,
              servicesList: neededServices),
        if (title == AppString.completed.val &&
            (service.completedServices != null))
          _serviceShowingWidget(
              onTap: () {
                serviceBloc.add(
                    ServiceRequestManagementEvent.showOrHideCompletedServices(
                        isShowing:
                            !serviceBloc.state.isShowingCompletedServices));
                serviceBloc.add(const ServiceRequestManagementEvent
                    .showOrHideNeededServices(isShowing: false));
                serviceBloc.add(const ServiceRequestManagementEvent
                    .showOrHideIncompleteServices(isShowing: false));
                serviceBloc.add(
                    const ServiceRequestManagementEvent.showOrHideExtraServices(
                        isShowing: false));
              },
              isShowing: serviceBloc.state.isShowingCompletedServices,
              title: AppString.serviceCompleted.val,
              servicesList: completedServices),
        if (title == AppString.completed.val &&
            (service.completedServices != null))
          _serviceShowingWidget(
              onTap: () {
                serviceBloc.add(
                    ServiceRequestManagementEvent.showOrHideIncompleteServices(
                        isShowing:
                            !serviceBloc.state.isShowingIncompleteServices));
                serviceBloc.add(const ServiceRequestManagementEvent
                    .showOrHideNeededServices(isShowing: false));
                serviceBloc.add(const ServiceRequestManagementEvent
                    .showOrHideCompletedServices(isShowing: false));
                serviceBloc.add(
                    const ServiceRequestManagementEvent.showOrHideExtraServices(
                        isShowing: false));
              },
              isShowing: serviceBloc.state.isShowingIncompleteServices,
              title: AppString.serviceInComplete.val,
              servicesList: notCompletedServices),
        if (title == AppString.completed.val &&
            (service.completedServices != null) &&
            extraServices.isNotEmpty)
          _serviceShowingWidget(
              onTap: () {
                serviceBloc.add(
                    ServiceRequestManagementEvent.showOrHideExtraServices(
                        isShowing: !serviceBloc.state.isShowingExtraServices));
                serviceBloc.add(const ServiceRequestManagementEvent
                    .showOrHideNeededServices(isShowing: false));
                serviceBloc.add(const ServiceRequestManagementEvent
                    .showOrHideCompletedServices(isShowing: false));
                serviceBloc.add(const ServiceRequestManagementEvent
                    .showOrHideIncompleteServices(isShowing: false));
              },
              isShowing: serviceBloc.state.isShowingExtraServices,
              title: AppString.extraService.val,
              servicesList: extraServices),
        title == "Canceled"
            ? _replacementDetailsWidget(context, service)
            : SizedBox.shrink(),
        CustomSizedBox(height: DBL.ten.val),
        _serviceTimelineWidget(
            isShowing: serviceBloc.state.isShowingTimeline, service: service)
      ],
    );
  }

  Container _replacementDetailsWidget(
      BuildContext context, ServiceDetailsData service) {
    return Container(
      // width: DBL.fiveFifty.val,
      padding: EdgeInsets.only(
          left: DBL.ten.val, right: DBL.ten.val, bottom: DBL.ten.val),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(DBL.eight.val),
          border:
              Border.all(color: AppColor.lightGrey.val, width: DBL.one.val)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _textAndSubText(
              text: AppString.caReplacementStatus.val,
              subText: service.replacementStatus == "1"
                  ? "Replacement Found"
                  : "Replacement Not Found",
              context: context),
          service.replacementStatus == "2"
              ? InkWell(
                  onTap: () {
                    /*autoTabRouter
                ?.navigate(CareGiverDetailRoute(id: ""));*/
                  },
                  child: _textAndSubText(
                      text: AppString.replacedCaName.val,
                      subText: service.replacedServiceId ?? '',
                      context: context),
                )
              : const CustomSizedBox(),
        ],
      ),
    );
  }

  Widget _textAndSubText(
      {required String text,
      required String subText,
      double? height,
      required BuildContext context}) {
    return Column(
      children: [
        SizedBox(height: height ?? DBL.sixteen.val),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: DBL.oneEighty.val, child: CustomText(text)),
            const CustomText(':'),
            SizedBox(width: DBL.eight.val),
            CustomText(
              subText,
              width: Responsive.isMobile(context)
                  ? DBL.oneFifty.val
                  : Responsive.isMobile(context) || Responsive.isTablet(context)
                      ? MediaQuery.of(context).size.width * 0.3
                      : MediaQuery.of(context).size.width * 0.2,
            )
          ],
        ),
      ],
    );
  }

  _transactionDetailsWidget(ServiceDetailsData service, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            serviceBloc.add(
                ServiceRequestManagementEvent.showOrHideTransactionDetails(
                    isShowing: !serviceBloc.state.isShowingTransactionDetails));
          },
          child: Container(
            // width: DBL.fiveFifty.val,
            padding: EdgeInsets.all(DBL.ten.val),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(DBL.eight.val),
                topLeft: Radius.circular(DBL.eight.val),
                bottomRight: Radius.circular(
                    serviceBloc.state.isShowingTransactionDetails
                        ? DBL.zero.val
                        : DBL.eight.val),
                bottomLeft: Radius.circular(
                    serviceBloc.state.isShowingTransactionDetails
                        ? DBL.zero.val
                        : DBL.eight.val),
              ),
              border:
                  Border.all(color: AppColor.lightGrey.val, width: DBL.one.val),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                    title == AppString.canceled.val
                        ? AppString.refundDetails.val
                        : AppString.transactionDetails.val,
                    style: TS().gRoboto(
                        fontSize: FS.font14.val, fontWeight: FW.w400.val)),
                serviceBloc.state.isShowingTransactionDetails
                    ? const Icon(Icons.keyboard_arrow_down_rounded)
                    : const Icon(Icons.keyboard_arrow_right_rounded)
              ],
            ),
          ),
        ),
        serviceBloc.state.isShowingTransactionDetails
            ? title == AppString.canceled.val
                ? _refundDetailsData(service, context)
                : _transactionDetailsData(service, context)
            : const CustomSizedBox(),
        CustomSizedBox(height: DBL.thirty.val)
      ],
    );
  }

  _transactionDetailsData(ServiceDetailsData service, BuildContext context) {
    return Container(
      // width: DBL.fiveFifty.val,
      padding: EdgeInsets.all(DBL.ten.val),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(DBL.ten.val),
            bottomRight: Radius.circular(DBL.ten.val)),
        border: Border.all(color: AppColor.lightGrey.val, width: DBL.one.val),
      ),
      child: Column(
        children: [
          _textAndSubText(
              context: context,
              height: DBL.eight.val,
              text: AppString.serviceFee.val,
              subText: '\$ ${service.serviceFee.toString()}'),
          _textAndSubText(
              context: context,
              height: DBL.eight.val,
              text: AppString.transportationFee.val,
              subText: '\$ ${service.travelingCharge ?? ""}'),
          title == AppString.completed.val
              ? _textAndSubText(
                  context: context,
                  height: DBL.eight.val,
                  text: AppString.tip.val,
                  subText: '\$ ${service.tip.toString()}')
              : const CustomSizedBox(),
          title == AppString.completed.val
              ? _textAndSubText(
                  context: context,
                  height: DBL.eight.val,
                  text: AppString.extraServiceCharge.val,
                  subText: '\$ ${service.extraServiceFee ?? ""}')
              : const CustomSizedBox(),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return CustomAlertDialogWidget(
                    heading: AppString.transactionManagement.val,
                    child: TransactionDetailsAlert(
                        transactionBloc: TransactionManagementBloc(
                            TransactionsRepository())),
                  );
                },
              );
            },
            child: _textAndSubText(
                context: context,
                height: DBL.eight.val,
                text: AppString.transactionId.val,
                subText: service.serviceFeeTransactionId ?? ""),
          ),
        ],
      ),
    );
  }

  _refundDetailsData(ServiceDetailsData service, BuildContext context) {
    return Container(
      // width: DBL.fiveFifty.val,
      padding: EdgeInsets.all(DBL.ten.val),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(DBL.ten.val),
            bottomRight: Radius.circular(DBL.ten.val)),
        border: Border.all(color: AppColor.lightGrey.val, width: DBL.one.val),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _textAndSubText(
              context: context,
              height: DBL.eight.val,
              text: AppString.canceledBy.val,
              subText: service.canceledBy ?? ""),
          _textAndSubText(
              context: context,
              height: DBL.eight.val,
              text: AppString.refundEligibility.val,
              subText: service.refundDetails!.isNotEmpty ? "Yes" : "No"),
          _textAndSubText(
              context: context,
              height: DBL.eight.val,
              text: AppString.amount.val,
              subText: '\$ ${service.refundDetails?.first.price ?? ''}'),
          CustomSizedBox(height: DBL.ten.val),
          _refundStatusWidget(context, service),
          _textAndSubText(
              context: context,
              height: DBL.eight.val,
              text: AppString.transactionId.val,
              subText: service.serviceFeeTransactionId ?? ""),
        ],
      ),
    );
  }

  _refundStatusWidget(BuildContext context, ServiceDetailsData service) {
    return Container(
      padding: EdgeInsets.all(DBL.two.val),
      // width: DBL.threeFifty.val,
      decoration: BoxDecoration(
          color: AppColor.lightGrey.val.withOpacity(0.5),
          borderRadius: BorderRadius.circular(DBL.eight.val)),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              serviceBloc.add(
                  ServiceRequestManagementEvent.showOrHideRefundDetails(
                      isShowing: !serviceBloc.state.isShowingRefundDetails));
            },
            child: Container(
              padding: EdgeInsets.all(DBL.ten.val),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(DBL.eight.val),
                  color: AppColor.white.val),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(AppString.refundStatus.val),
                  serviceBloc.state.isShowingRefundDetails
                      ? const Icon(Icons.keyboard_arrow_down_rounded)
                      : const Icon(Icons.keyboard_arrow_right_rounded)
                ],
              ),
            ),
          ),
          serviceBloc.state.isShowingRefundDetails
              ? CustomSizedBox(height: DBL.ten.val)
              : const CustomSizedBox(),
          serviceBloc.state.isShowingRefundDetails
              ? Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomSizedBox(width: DBL.twenty.val),
                          Column(
                            children: [
                              index == 0
                                  ? CustomSizedBox(height: DBL.five.val)
                                  : Container(
                                      height: DBL.five.val,
                                      width: DBL.one.val,
                                      color: AppColor.darkGrey.val,
                                    ),
                              CircleAvatar(
                                radius: DBL.five.val,
                                backgroundColor: AppColor.darkGrey.val,
                              ),
                              service.refundDetails!.first.statusHistory!
                                          .length ==
                                      index + 1
                                  ? const CustomSizedBox()
                                  : Container(
                                      width: DBL.one.val,
                                      height: DBL.fifty.val,
                                      color: AppColor.darkGrey.val,
                                    )
                            ],
                          ),
                          CustomSizedBox(width: DBL.ten.val),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                service.refundDetails!.first
                                        .statusHistory![index].title ??
                                    "",
                                style: TS().gRoboto(
                                    fontSize: FS.font14.val,
                                    fontWeight: FW.w500.val,
                                    color: service.refundDetails!.first
                                                .statusHistory![index].status ==
                                            1
                                        ? AppColor.amber.val
                                        : service
                                                    .refundDetails!
                                                    .first
                                                    .statusHistory![index]
                                                    .status ==
                                                2
                                            ? AppColor.green.val
                                            : AppColor.red.val),
                              ),
                              CustomText(
                                  serviceBloc.generateFormattedDate(
                                    service.refundDetails!.first
                                            .statusHistory![index].date ??
                                        "",
                                  ),
                                  style: TS().gRoboto(
                                      fontSize: FS.font13.val,
                                      fontWeight: FW.w400.val,
                                      color: AppColor.lightGrey5.val)),
                            ],
                          ),
                        ],
                      );
                    },
                    itemCount:
                        service.refundDetails!.first.statusHistory!.length,
                  ),
                )
              : const CustomSizedBox()
        ],
      ),
    );
  }

  _serviceShowingWidget(
      {required Function() onTap,
      required bool isShowing,
      required String title,
      required List<String> servicesList}) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      InkWell(
        onTap: onTap,
        child: Container(
          // width: DBL.fiveFifty.val,
          padding: EdgeInsets.all(DBL.ten.val),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(DBL.eight.val),
              topLeft: Radius.circular(DBL.eight.val),
              bottomRight:
                  Radius.circular(isShowing ? DBL.zero.val : DBL.eight.val),
              bottomLeft:
                  Radius.circular(isShowing ? DBL.zero.val : DBL.eight.val),
            ),
            border:
                Border.all(color: AppColor.lightGrey.val, width: DBL.one.val),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(title,
                  style: TS().gRoboto(
                      fontSize: FS.font14.val, fontWeight: FW.w400.val)),
              isShowing
                  ? const Icon(Icons.keyboard_arrow_down_rounded)
                  : const Icon(Icons.keyboard_arrow_right_rounded)
            ],
          ),
        ),
      ),
      isShowing
          ? _serviceDetails(servicesList: servicesList)
          : const CustomSizedBox(),
      CustomSizedBox(height: DBL.ten.val)
    ]);
  }

  _serviceDetails({required List<String> servicesList}) {
    return Container(
      // width: DBL.fiveFifty.val,
      padding: EdgeInsets.all(DBL.ten.val),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(DBL.ten.val),
            bottomRight: Radius.circular(DBL.ten.val)),
        border: Border.all(color: AppColor.lightGrey.val, width: DBL.one.val),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: servicesList
            .map((e) => Padding(
                  padding: EdgeInsets.only(bottom: DBL.ten.val),
                  child: Row(
                    children: [
                      CommonImageView(svgPath: Assets.iconsIcTick),
                      CustomSizedBox(width: DBL.ten.val),
                      CustomText(e)
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }

  _cancelServiceRequestPopup(
    BuildContext context,
    ServiceDetailsData services,
  ) {
    showDialog(
      context: context,
      builder: (BuildContext buildContext) {
        return Form(
          key: _formKey,
          child: BlocBuilder<ServiceRequestManagementBloc,
              ServiceRequestManagementState>(
            builder: (context, state) {
              return CancelRequestAlertWidget(
                controller: controller,
                isLoading: state.isCancelLoading,
                heading: AppString.cancelThisServiceRequest.val,
                label: AppString.areYouSureCancelServiceRequest.val,
                serviceBloc: serviceBloc,
                onTapYes: () {
                  if (_formKey.currentState!.validate()) {
                    context.read<ServiceRequestManagementBloc>().add(
                        ServiceRequestManagementEvent.cancelService(
                            userId: SharedPreffUtil().getAdminId,
                            serviceId: services.serviceId ?? "",
                            description: controller.text.trim(),
                            context: context));
                  }
                },
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return AppString.emptyReason.val;
                  }
                  return null;
                },
              );
            },
          ),
        );
      },
    );
  }

  _serviceTimelineWidget(
      {required bool isShowing, required ServiceDetailsData service}) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            serviceBloc.add(ServiceRequestManagementEvent.showOrHideTimeline(
                isShowing: !serviceBloc.state.isShowingTimeline));
          },
          child: Container(
            // width: DBL.fiveFifty.val,
            height: DBL.fifty.val,
            padding: EdgeInsets.only(left: DBL.ten.val, right: DBL.ten.val),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(DBL.eight.val),
                    topRight: Radius.circular(DBL.eight.val),
                    bottomLeft: isShowing
                        ? Radius.circular(DBL.zero.val)
                        : Radius.circular(DBL.eight.val),
                    bottomRight: isShowing
                        ? Radius.circular(DBL.zero.val)
                        : Radius.circular(DBL.eight.val)),
                border: Border.all(
                    color: AppColor.lightGrey.val, width: DBL.one.val)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(AppString.serviceTimeline.val),
                isShowing
                    ? const Icon(Icons.keyboard_arrow_down_rounded)
                    : const Icon(Icons.keyboard_arrow_right_rounded)
              ],
            ),
          ),
        ),
        isShowing
            ? Container(
                // width: DBL.fiveFifty.val,
                padding: EdgeInsets.all(DBL.ten.val),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(DBL.eight.val),
                        bottomRight: Radius.circular(DBL.eight.val),
                        topLeft: isShowing
                            ? Radius.circular(DBL.zero.val)
                            : Radius.circular(DBL.eight.val),
                        topRight: isShowing
                            ? Radius.circular(DBL.zero.val)
                            : Radius.circular(DBL.eight.val)),
                    border: Border.all(
                        color: AppColor.lightGrey.val, width: DBL.one.val)),
                child: ListView.builder(
                    itemCount: service.serviceHistory!.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: DBL.twenty.val),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                      backgroundColor: AppColor.green2.val,
                                      maxRadius: DBL.seven.val),
                                  CustomContainer(
                                      width: DBL.one.val,
                                      height: DBL.eighty.val,
                                      color: AppColor.lightGrey.val)
                                ],
                              ),
                            ),
                            CustomSizedBox(height: DBL.twenty.val),
                            Padding(
                              padding: EdgeInsets.only(left: DBL.twenty.val),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                      service.serviceHistory![index].title ??
                                          "",
                                      style: TS().gRoboto(
                                          color: AppColor.darkGrey.val,
                                          fontSize: FS.font15.val,
                                          fontWeight: FW.w500.val)),
                                  CustomText(
                                      serviceBloc.generateFormattedDate(
                                          service.serviceHistory![index].time ??
                                              ""),
                                      style: TS().gRoboto(
                                          color: AppColor.lightGrey5.val,
                                          fontSize: FS.font13.val,
                                          fontWeight: FW.w400.val)),
                                  /*CustomText("completed date : 10/09/2023",
                                      style: TS().gRoboto(
                                          color: AppColor.lightGrey5.val,
                                          fontSize: FS.font13.val,
                                          fontWeight: FW.w400.val)),*/
                                ],
                              ),
                            )
                          ]);
                    }),
              )
            : const CustomSizedBox()
      ],
    );
  }
}
