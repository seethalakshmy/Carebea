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
import '../../../core/responsive.dart';
import '../../../core/text_styles.dart';
import '../../../generated/assets.dart';
import '../../../infrastructure/shared_preference/shared_preff_util.dart';
import '../../routes/app_router.gr.dart';
import '../../side_menu/side_menu_page.dart';
import '../../widget/commonImageview.dart';
import '../../widget/common_alert_widget.dart';
import '../../widget/custom_shimmer.dart';
import '../../widget/empty_view.dart';
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
    return BlocProvider<ServiceRequestManagementBloc>(
      create: (context) => serviceBloc,
      child: BlocBuilder<ServiceRequestManagementBloc,
          ServiceRequestManagementState>(
        bloc: serviceBloc,
        builder: (context, state) {
          return SizedBox(
            height: Responsive.isWeb(context)
                ? MediaQuery.of(context).size.height
                : MediaQuery.of(context).size.height * 1.5,
            child: serviceBloc.state.isDetailsLoading ?? false
                ? const CustomShimmerWidget.rectangular(height: double.infinity)
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
                              if (title == AppString.pending.val ||
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
                                ),
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
        _statusShowingWidget(context, service),
        CustomSizedBox(height: DBL.ten.val),
        _clientDetailsWidget(context, service),
        CustomSizedBox(height: DBL.ten.val),
        _ratingViewWidget(service),
        CustomSizedBox(height: DBL.ten.val),
        _transactionDetailsWidget(service, context)
      ],
    );
  }

  ProfileWidget _profileWidget(
      ServiceDetailsData service, BuildContext context) {
    return ProfileWidget(
      width: DBL.threeFifty.val,
      imageUrl: service.clientProPic ?? "",
      name:
          "${service.clientName!.firstName ?? ""} ${service.clientName!.lastName ?? ""}",
      subText: AppString.client.val,
      onNameTap: () {
        Navigator.pop(context);
        autoTabRouter
            ?.navigate(UserManagementDetailRoute(id: service.profileId ?? ""));
      },
    );
  }

  Column _ratingViewWidget(ServiceDetailsData service) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title == AppString.completed.val && (service.isRated ?? false)
            ? RatingWidget(
                rater: AppString.client.val,
                feedback:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
                rating: double.tryParse(service.caregiverRating.toString()) ??
                    DBL.zero.val)
            : _rateNowButton(onPressed: () {}, title: AppString.rateTheCa.val),
        CustomSizedBox(height: DBL.ten.val),
        title == AppString.completed.val && (service.isRatedByCg ?? false)
            ? RatingWidget(
                rater: AppString.careAmbassador.val,
                feedback:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
                rating: double.tryParse(service.caregiverRating.toString()) ??
                    DBL.zero.val)
            : _rateNowButton(
                onPressed: () {}, title: AppString.rateTheClient.val)
      ],
    );
  }

  Container _rateNowButton(
      {required String title, required Function() onPressed}) {
    return Container(
      width: DBL.fiveFifty.val,
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

  _statusShowingWidget(BuildContext context, ServiceDetailsData service) {
    return Container(
      width: DBL.fiveFifty.val,
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
                      '3 days left',
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
      width: DBL.fiveFifty.val,
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
              subText: service.startTime ?? ""),
          _textAndSubText(
              context: context,
              text: AppString.endDateAndTime.val,
              subText: service.endTime ?? ""),
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
    return Container(
      width: DBL.fiveFifty.val,
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
              subText:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry"),
          _textAndSubText(
              context: context,
              text: AppString.otherIssues.val,
              subText:
                  "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters"),
          _textAndSubText(
              context: context,
              text: AppString.reportedIssuesByCareAmbassador.val,
              subText:
                  "1. It is a long established fact that\n2. a reader will be distracted.\n3. by the readable content of a page when looking at its layout."),
          _textAndSubText(
              context: context,
              text: AppString.otherIssues.val,
              subText:
                  "reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters"),
        ],
      ),
    );
  }

  _caViewWidget(BuildContext context) {
    List<String> completedServices = [];
    List<String> neededServices = [];
    List<String> extraServices = [];
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
                width: DBL.threeFifty.val,
                imageUrl: service.caregiverProPic ?? "",
                name:
                    "${service.caregiverInfo!.name!.firstName ?? ""} ${service.caregiverInfo!.name!.firstName ?? ""}",
                subText: AppString.careAmbassador.val,
                onNameTap: () {
                  Navigator.pop(context);
                  autoTabRouter
                      ?.navigate(CareGiverDetailRoute(id: service.profileId));
                },
              ),
        if (title != AppString.completed.val && (service.services != null))
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

        /*if (title == AppString.completed.val &&
            (service.caregiverReportedIssues ?? []).isNotEmpty)
          _textAndSubText(context:context,
              text: "The suspected things during shift",
              subText:
                  service.suspectedThingsDuringShift?.join(' ') ?? ''),*/
        /*if (title == AppString.completed.val &&
            (service.suspectedOtherIssues ?? "").isNotEmpty)
          _textAndSubText(context:context,
              text: "Other Issues",
              subText: service.suspectedOtherIssues ?? ''),*/
        /*if (title == AppString.completed.val &&
            (service.caregiverReportedIssues ?? []).isNotEmpty)
          _textAndSubText(context:context,
              text: "Reported issues by the care giver",
              subText: service.caregiverReportedIssues?.join(' ') ?? ''),*/
        /*if (title == AppString.completed.val &&
            (service.caregiverReportedOtherIssues ?? "").isNotEmpty)
          _textAndSubText(context:context,
              text: "Other Issues",
              subText: service.caregiverReportedOtherIssues ?? ''),*/
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
              servicesList: neededServices),
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
      ],
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
            width: DBL.fiveFifty.val,
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
      width: DBL.fiveFifty.val,
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
              subText: service.serviceFee.toString()),
          _textAndSubText(
              context: context,
              height: DBL.eight.val,
              text: AppString.transportationFee.val,
              subText: service.travelingCharge ?? ""),
          _textAndSubText(
              context: context,
              height: DBL.eight.val,
              text: AppString.tip.val,
              subText: service.tip.toString()),
          _textAndSubText(
              context: context,
              height: DBL.eight.val,
              text: AppString.extraServiceCharge.val,
              subText: service.extraServiceFee ?? ""),
          _textAndSubText(
              context: context,
              height: DBL.eight.val,
              text: AppString.transactionId.val,
              subText: service.serviceFeeTransactionId ?? ""),
        ],
      ),
    );
  }

  _refundDetailsData(ServiceDetailsData service, BuildContext context) {
    return Container(
      width: DBL.fiveFifty.val,
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
              text: AppString.canceledBy.val,
              subText: "lorem ipsum telum"),
          _textAndSubText(
              context: context,
              height: DBL.eight.val,
              text: AppString.refundEligibility.val,
              subText: "Yes"),
          _textAndSubText(
              context: context,
              height: DBL.eight.val,
              text: AppString.refundStatus.val,
              subText: "Completed"),
          _textAndSubText(
              context: context,
              height: DBL.eight.val,
              text: AppString.transactionId.val,
              subText: service.serviceFeeTransactionId ?? ""),
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
          width: DBL.fiveFifty.val,
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
      width: DBL.fiveFifty.val,
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
              return CommonAlertWidget(
                controller: controller,
                isLoading: state.isCancelLoading,
                isTextField: true,
                heading: AppString.cancelThisServiceRequest.val,
                label: AppString.areYouSureCancelServiceRequest.val,
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
}
