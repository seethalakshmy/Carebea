import 'package:admin_580_tech/core/custom_snackbar.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/string_extension.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/generated/assets.dart';
import 'package:admin_580_tech/presentation/service_request_management/widgets/cancellation_widget.dart';
import 'package:admin_580_tech/presentation/service_request_management/widgets/profile_widget.dart';
import 'package:admin_580_tech/presentation/service_request_management/widgets/rating_widget.dart';
import 'package:admin_580_tech/presentation/service_request_management/widgets/status_widget.dart';
import 'package:admin_580_tech/presentation/widget/cached_image.dart';
import 'package:admin_580_tech/presentation/widget/commonImageview.dart';
import 'package:admin_580_tech/presentation/widget/custom_button.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_form.dart';
import 'package:admin_580_tech/presentation/widget/custom_padding.dart';
import 'package:admin_580_tech/presentation/widget/custom_rating_bar.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_svg.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/bloc/service_request_management/service_request_management_bloc.dart';
import '../../../domain/service_request_management/model/service_request_response.dart';
import '../../widget/custom_alert_dialog_widget.dart';
import '../../widget/custom_text_field.dart';

class ServiceDetailsDialog extends StatefulWidget {
  const ServiceDetailsDialog(
      {Key? key, required this.service, required this.title})
      : super(key: key);

  final Services service;
  final String title;

  @override
  State<ServiceDetailsDialog> createState() => _ServiceDetailsDialogState();
}

class _ServiceDetailsDialogState extends State<ServiceDetailsDialog> {
  final TextEditingController dateController = TextEditingController();
  TextEditingController fromTimeController = TextEditingController();
  TextEditingController toTimeController = TextEditingController();
  TimeOfDay? fromTime;
  TimeOfDay? toTime;
  final _formKey = GlobalKey<FormState>();

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
                          CustomText("${widget.title} Service Request",
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
                                      imageUrl:
                                          widget.service.client?.profile ?? "",
                                      name: widget.service.client?.firstName ??
                                          "",
                                      subText: 'Client'),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const CustomText('Status'),
                                      const SizedBox(
                                        width: 140,
                                      ),
                                      StatusWidget(
                                          status: widget.title,
                                          isOngoing: widget.service.isOngoing ??
                                              false),
                                    ],
                                  ),
                                  _textAndSubText(
                                      text: AppString.serviceId.val,
                                      subText: widget.service.serviceId ?? ""),
                                  if (widget.title == AppString.canceled.val)
                                    CancellationWidget(
                                        reason:
                                            widget.service.cancelReason ?? ""),
                                  _textAndSubText(
                                      text: AppString.startDateAndTime.val,
                                      subText:
                                          widget.service.startDateTime ?? ""),
                                  _textAndSubText(
                                      text: AppString.endDateAndTime.val,
                                      subText:
                                          widget.service.endDateTime ?? ""),
                                  _textAndSubText(
                                      text: AppString.location.val,
                                      subText:
                                          "${widget.service.location?.first.address} \n ${widget.service.location?.first.streetName}\n ${widget.service.location?.first.stateName} \n ${widget.service.location?.first.cityName}"),
                                  if (widget.title == AppString.completed.val &&
                                      (widget.service.isRated ?? false))
                                    RatingWidget(service: widget.service),
                                  if ((widget.service.feedback ?? "")
                                      .isNotEmpty)
                                    _textAndSubText(
                                        text: AppString.feedBack.val,
                                        subText: widget.service.feedback ?? ""),
                                  _textAndSubText(
                                      text: AppString.serviceFee.val,
                                      subText: widget.service.serviceFee ?? ""),
                                  _textAndSubText(
                                      text: AppString.transactionId.val,
                                      subText: ""),
                                  if (widget.title == AppString.canceled.val)
                                    if (widget.title == AppString.canceled.val)
                                      _textAndSubText(
                                          text: AppString.cancelledBy.val,
                                          subText:
                                              widget.service.cancelledBy ?? ""),
                                  if (widget.title == AppString.canceled.val)
                                    _textAndSubText(
                                        text: AppString.refundStatus.val,
                                        subText:
                                            widget.service.refundStatus ?? ""),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  widget.title == AppString.pending.val
                                      ? const SizedBox()
                                      : ProfileWidget(
                                          imageUrl: widget.service.decisionMaker
                                                  ?.profile ??
                                              "",
                                          name: widget.service.decisionMaker
                                                  ?.firstName ??
                                              "",
                                          subText: 'Care Ambassador'),
                                  _serviceListWidget(
                                      title: 'Service Needed',
                                      servicesList:
                                          widget.service.serviceNeeded ?? []),
                                  if (widget.title == AppString.completed.val &&
                                      (widget.service.caregiverReportedIssues ??
                                              [])
                                          .isNotEmpty)
                                    _textAndSubText(
                                        text:
                                            "The suspected things during shift",
                                        subText: widget.service
                                                .suspectedThingsDuringShift
                                                ?.join(' ') ??
                                            ''),
                                  if (widget.title == AppString.completed.val &&
                                      (widget.service.suspectedOtherIssues ??
                                              "")
                                          .isNotEmpty)
                                    _textAndSubText(
                                        text: "Other Issues",
                                        subText: widget
                                                .service.suspectedOtherIssues ??
                                            ''),
                                  if (widget.title == AppString.completed.val &&
                                      (widget.service.caregiverReportedIssues ??
                                              [])
                                          .isNotEmpty)
                                    _textAndSubText(
                                        text:
                                            "Reported issues by the care giver",
                                        subText: widget
                                                .service.caregiverReportedIssues
                                                ?.join(' ') ??
                                            ''),
                                  if (widget.title == AppString.completed.val &&
                                      (widget.service
                                                  .caregiverReportedOtherIssues ??
                                              "")
                                          .isNotEmpty)
                                    _textAndSubText(
                                        text: "Other Issues",
                                        subText: widget.service
                                                .caregiverReportedOtherIssues ??
                                            ''),
                                  if (widget.title == AppString.completed.val &&
                                      (widget.service.serviceCompleted ?? [])
                                          .isNotEmpty)
                                    _serviceListWidget(
                                        title: 'Service Completed',
                                        servicesList:
                                            widget.service.serviceCompleted ??
                                                []),
                                  if (widget.title == AppString.completed.val &&
                                      (widget.service.serviceNotCompleted ?? [])
                                          .isNotEmpty)
                                    _serviceListWidget(
                                        title: 'Service Incomplete',
                                        servicesList: widget
                                                .service.serviceNotCompleted ??
                                            [])
                                ],
                              ),
                            )
                          ],
                        ),
                        if (widget.title == AppString.pending.val ||
                            widget.title == AppString.upcoming.val)
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
                        if (widget.title == AppString.upcoming.val)
                          BlocBuilder<ServiceRequestManagementBloc,
                              ServiceRequestManagementState>(
                            builder: (context, state) {
                              return CustomButton(
                                onPressed: () {
                                  /// for matching list
                                  // _matchingListView(context);
                                  /// for other views
                                  // showDialog(
                                  //     context: context,
                                  //     builder: (BuildContext context) {
                                  //       return Dialog(
                                  //         child: CustomContainer.decoration(
                                  //           height: 510,
                                  //           width: 600,
                                  //           decoration: BoxDecoration(
                                  //             color: AppColor.white.val,
                                  //             shape: BoxShape.rectangle,
                                  //           ),
                                  //           // child: rescheduleView(context, state)
                                  //           // child: loaderView()
                                  //           // child: availableCaregiverView()
                                  //           // child:
                                  //           //     _notAvailableCaregiversView()
                                  //           child: _matchingListView(context),
                                  //         ),
                                  //       );
                                  //     });
                                },
                                height: 45,
                                minWidth: 200,
                                color: Colors.white,
                                textColor: AppColor.primaryColor.val,
                                borderColor: AppColor.primaryColor.val,
                                text:
                                    AppString.rescheduleThisServiceRequest.val,
                              );
                            },
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

  Column _notAvailableCaregiversView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomSizedBox(
          height: DBL.twenty.val,
        ),
        CustomSvg(
          path: IMG.notAvailableCaregivers.val,
          height: DBL.twoHundred.val,
          width: DBL.twoHundred.val,
        ),
        CustomSizedBox(
          height: DBL.thirty.val,
        ),
        CustomText(
          AppString.caregiverNotAvailable.val,
          textAlign: TextAlign.center,
          style: TS().gRoboto(
              fontWeight: FW.w500.val,
              color: AppColor.primaryColor.val,
              fontSize: FS.font19.val),
        ),
        CustomSizedBox(
          height: DBL.thirty.val,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _cancelButton(),
            CustomSizedBox(
              width: DBL.ten.val,
            ),
            _proceedButton(),
          ],
        )
      ],
    );
  }

  CustomButton _cancelButton() {
    return CustomButton(
      text: AppString.cancel.val,
      onPressed: () {
        Navigator.pop(context);
      },
      color: AppColor.white.val,
      borderRadius: DBL.five.val,
      borderColor: AppColor.primaryColor.val,
      hoverColor: AppColor.offWhite.val.withOpacity(0.2),
      textStyle: TS().gRoboto(
          fontWeight: FW.w500.val,
          color: AppColor.primaryColor.val,
          fontSize: FS.font16.val),
      padding: EdgeInsets.symmetric(
          horizontal: DBL.fortyFive.val, vertical: DBL.fifteen.val),
    );
  }

  CustomButton _proceedButton() {
    return CustomButton(
      text: AppString.proceed.val,
      onPressed: () {},
      borderRadius: DBL.five.val,
      textStyle: TS().gRoboto(
          fontWeight: FW.w500.val,
          color: AppColor.white.val,
          fontSize: FS.font16.val),
      padding: EdgeInsets.symmetric(
          horizontal: DBL.fortyFive.val, vertical: DBL.fifteen.val),
    );
  }

  availableCaregiverView() {
    return SingleChildScrollView(
      child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: DBL.hundred.val,
          ),
          child: Column(
            children: [
              CustomSizedBox(
                height: DBL.fifty.val,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white, // Container background color.
                    borderRadius: BorderRadius.circular(
                        8.0), // Add rounded corners if needed.
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(
                            0.2), // Light grey shadow color with low opacity.
                        spreadRadius: 2.0, // The spread radius of the shadow.
                        blurRadius: 4.0, // The blur radius of the shadow.
                        offset: const Offset(0, 2), // The offset of the shadow.
                      ),
                    ]),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: DBL.fifteen.val, vertical: DBL.fifteen.val),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CachedImage(
                                imgUrl: "",
                                isCircle: true,
                                circleRadius: DBL.fifty.val,
                              ),
                              CustomSizedBox(
                                width: DBL.fifteen.val,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    "John Joseph",
                                    style: TS().gRoboto(
                                        fontWeight: FW.w500.val,
                                        color: AppColor.black.val,
                                        fontSize: FS.font18.val),
                                  ),
                                  CustomSizedBox(
                                    height: DBL.three.val,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomRatingBar(rating: 4),
                                      CustomSizedBox(
                                        width: DBL.five.val,
                                      ),
                                      CustomText("(230)")
                                    ],
                                  ),
                                  CustomSizedBox(
                                    height: DBL.twenty.val,
                                  ),
                                  CustomButton(
                                    text: AppString.viewProfile.val,
                                    color: AppColor.red.val,
                                    borderRadius: DBL.three.val,
                                    hoverColor:
                                        AppColor.red2.val.withOpacity(0.4),
                                    onPressed: () {},
                                  )
                                ],
                              )
                            ],
                          ),
                          CustomText(
                            "100% Match",
                            style: TS().gRoboto(
                                fontSize: FS.font18.val,
                                color: AppColor.darkGreen.val,
                                fontWeight: FW.w500.val),
                          )
                        ],
                      ),
                      CustomSizedBox(
                        height: DBL.twenty.val,
                      ),
                      CustomText(
                        "Service fee - \$30",
                        style: TS().gRoboto(
                            fontWeight: FW.w500.val,
                            color: AppColor.primaryColor.val,
                            fontSize: FS.font16.val),
                      ),
                      CustomSizedBox(
                        height: DBL.ten.val,
                      ),
                      CustomText(
                        "Distance - 3miles away from your location",
                        style: TS().gRoboto(
                            fontWeight: FW.w500.val,
                            color: AppColor.primaryColor.val,
                            fontSize: FS.font16.val),
                      ),
                      CustomSizedBox(
                        height: DBL.twelve.val,
                      ),
                      CustomText(
                        "John Joseph is a dedicated and truthful caregiver .He has 2years of total experience .",
                        style: TS().gRoboto(
                            fontWeight: FW.w400.val,
                            color: AppColor.matBlack2.val,
                            fontSize: FS.font16.val),
                      ),
                      CustomSizedBox(
                        height: DBL.twentyFive.val,
                      ),
                      Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: CustomButton(
                          text: AppString.assign.val,
                          onPressed: () {},
                          borderRadius: DBL.twenty.val,
                          padding: EdgeInsets.symmetric(
                              horizontal: DBL.seventy.val,
                              vertical: DBL.twenty.val),
                          textStyle: TS().gRoboto(
                              fontSize: FS.font16.val,
                              color: AppColor.white.val,
                              fontWeight: FW.w600.val),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              CustomSizedBox(
                height: DBL.fifteen.val,
              ),
              CustomText(
                AppString.congrats.val,
                style: TS().gRoboto(
                    fontWeight: FW.w500.val,
                    color: AppColor.primaryColor.val,
                    fontSize: FS.font20.val),
              ),
              CustomSizedBox(
                height: DBL.five.val,
              ),
              CustomText(
                AppString.caregiverAvailable.val,
                style: TS().gRoboto(
                    fontWeight: FW.w500.val,
                    color: AppColor.primaryColor.val,
                    fontSize: FS.font16.val),
              )
            ],
          )),
    );
  }

  loaderView() {
    return CustomPadding.symmetric(
      horizontal: DBL.eighty.val,
      vertical: DBL.eighty.val,
      child: Column(
        children: [
          CustomSizedBox(
            height: DBL.oneEighty.val,
            width: DBL.oneEighty.val,
            child: CircularProgressIndicator(
              strokeWidth: DBL.twenty.val,
              color: AppColor.primaryColor.val,
              backgroundColor: AppColor.blue2.val.withOpacity(.2),
            ),
          ),
          CustomSizedBox(
            height: DBL.fifty.val,
          ),
          CustomText(
            AppString.rescheduleWaiting.val,
            textAlign: TextAlign.center,
            style: TS().gRoboto(
                fontSize: FS.font21.val,
                color: AppColor.primaryColor.val,
                fontWeight: FW.w500.val),
          )
        ],
      ),
    );
  }

  rescheduleView(BuildContext context, ServiceRequestManagementState state) {
    return CustomPadding.symmetric(
      horizontal: DBL.hundred.val,
      child: CForm(
        formKey: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSizedBox(
              height: DBL.seventy.val,
            ),
            titleView(),
            CustomSizedBox(
              height: DBL.twentyFive.val,
            ),
            CustomText(AppString.selectDate.val),
            CustomSizedBox(
              height: DBL.four.val,
            ),
            _buildDatePicker(context, state),
            CustomSizedBox(
              height: DBL.fifteen.val,
            ),
            Row(
              children: [
                fromTimePicker(),
                CustomSizedBox(
                  width: DBL.twenty.val,
                ),
                toTimePicker(),
              ],
            ),
            CustomSizedBox(
              height: DBL.ninetyTwo.val,
            ),
            saveButton()
          ],
        ),
      ),
    );
  }

  CustomText titleView() {
    return CustomText(
      AppString.enterYourNewDateAndTime.val,
      style: TS().gRoboto(
          fontWeight: FW.w500.val,
          color: AppColor.black.val,
          fontSize: FS.font22.val),
    );
  }

  CustomButton saveButton() {
    return CustomButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {}
      },
      text: AppString.save.val,
      minWidth: DBL.fourHundred.val,
      height: DBL.sixty.val,
      textStyle: TS().gRoboto(
        fontWeight: FW.w600.val,
        color: AppColor.white.val,
        fontSize: FS.font18.val,
      ),
    );
  }

  CTextField _buildDatePicker(
      BuildContext context, ServiceRequestManagementState state) {
    return CTextField(
      width: DBL.fourHundred.val,
      isReadOnly: true,
      controller: dateController,
      validator: (value) {
        if (value!.isEmpty) {
          return AppString.emptyDate.val;
        }
        return null;
      },
      onTap: () {
        _selectDate(context, state);
      },
      onChanged: (val) {},
      textInputAction: TextInputAction.next,
      keyBoardType: TextInputType.text,
      suffixIcon: CustomSvg(
        width: DBL.twentyFive.val,
        height: DBL.twentyFive.val,
        path: IMG.calenderOutLine.val,
      ),
    );
  }

  fromTimePicker() {
    return BlocBuilder<ServiceRequestManagementBloc,
        ServiceRequestManagementState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(AppString.startTime.val),
            CustomSizedBox(
              height: DBL.four.val,
            ),
            CTextField(
              controller: fromTimeController,
              width: DBL.oneNinety.val,
              isReadOnly: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return AppString.emptyStartTime.val;
                }
                return null;
              },
              onTap: () {
                _selectFromTime(context, state);
              },
              onChanged: (val) {},
              textInputAction: TextInputAction.next,
              keyBoardType: TextInputType.text,
              suffixIcon: CustomSvg(
                width: DBL.twentyFive.val,
                height: DBL.twentyFive.val,
                path: IMG.clock.val,
              ),
            ),
          ],
        );
      },
    );
  }

  toTimePicker() {
    return BlocBuilder<ServiceRequestManagementBloc,
        ServiceRequestManagementState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(AppString.endTime.val),
            CustomSizedBox(
              height: DBL.four.val,
            ),
            CTextField(
              controller: toTimeController,
              width: DBL.oneNinety.val,
              isReadOnly: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return AppString.emptyEndTime.val;
                }
                return null;
              },
              onTap: () {
                if (state.fromTime == null) {
                  CSnackBar.showError(context,
                      msg: AppString.youShouldSelectStartTime.val);
                } else {
                  _selectToTime(context, state);
                }
              },
              onChanged: (val) {},
              textInputAction: TextInputAction.next,
              keyBoardType: TextInputType.text,
              suffixIcon: CustomSvg(
                width: DBL.twentyFive.val,
                height: DBL.twentyFive.val,
                path: IMG.clock.val,
              ),
            )
          ],
        );
      },
    );
  }

  Future<void> _selectDate(
      BuildContext context, ServiceRequestManagementState state) async {
    final DateTime currentDate = DateTime.now();
    showDatePicker(
      context: context,
      initialDate: state.selectedDate,
      firstDate: currentDate,
      lastDate: currentDate.add(const Duration(days: 365)),
    ).then((value) {
      if (value != null && value != state.selectedDate) {
        context
            .read<ServiceRequestManagementBloc>()
            .add(ServiceRequestManagementEvent.setDate(value));
        dateController.text =
            value.toString().parseWithFormat(dateFormat: AppString.mmDDYYY.val);
        FocusScope.of(context).unfocus();
      }
    });
  }

  // Function to show the time picker dialog for from-time.
  Future<void> _selectFromTime(
      BuildContext context, ServiceRequestManagementState state) async {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value) {
      if (value != null) {
        context
            .read<ServiceRequestManagementBloc>()
            .add(ServiceRequestManagementEvent.setFromTime(value));
        fromTimeController.text = value.format(context);
        toTimeController.clear();
        FocusScope.of(context).unfocus();
        print('Time is :: ${state.fromTime}'); // Clear to-
      }
    });
  }

  // Function to show the time picker dialog for to-time.
  Future<void> _selectToTime(
      BuildContext context, ServiceRequestManagementState state) async {
    showTimePicker(
      context: context,
      initialTime: state.fromTime ?? TimeOfDay.now(),
    ).then((value) {
      if (value != null) {
        toTimeController.text = value.format(context);
        FocusScope.of(context).unfocus();
      }
    });
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

  _matchingListView(BuildContext context) {
    showGeneralDialog(
      context: context,
      pageBuilder: (BuildContext buildContext, Animation animation,
          Animation secondaryAnimation) {
        return CustomAlertDialogWidget(
            backgroundColor: AppColor.backgroundColor.val,
            width: 1200,
            height: 600,
            heading: AppString.matchingList.val,
            child: CustomPadding.symmetric(
              horizontal: DBL.twenty.val,
              vertical: DBL.twenty.val,
              child: ListView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, index) {
                    return CustomPadding.symmetric(
                      horizontal: DBL.fifteen.val,
                      vertical: DBL.ten.val,
                      child: CustomContainer.decoration(
                        padding: EdgeInsets.symmetric(
                            horizontal: DBL.ten.val, vertical: DBL.ten.val),
                        decoration: BoxDecoration(
                            color: AppColor.white.val,
                            borderRadius: BorderRadius.circular(DBL.five.val)),
                        child: Row(
                          children: [
                            CustomSizedBox(
                              width: DBL.threeHundred.val,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CachedImage(
                                    imgUrl: "",
                                    isCircle: true,
                                    circleRadius: DBL.fifty.val,
                                  ),
                                  CustomSizedBox(
                                    width: DBL.fifteen.val,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                        "John Joseph",
                                        style: TS().gRoboto(
                                            fontWeight: FW.w500.val,
                                            color: AppColor.black.val,
                                            fontSize: FS.font16.val),
                                      ),
                                      CustomSizedBox(
                                        height: DBL.three.val,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomRatingBar(rating: 4),
                                          CustomSizedBox(
                                            width: DBL.five.val,
                                          ),
                                          CustomText("(230)")
                                        ],
                                      ),
                                      CustomSizedBox(
                                        height: DBL.twenty.val,
                                      ),
                                      CustomButton(
                                        text: AppString.viewProfile.val,
                                        color: AppColor.red.val,
                                        borderRadius: DBL.three.val,
                                        hoverColor:
                                            AppColor.red2.val.withOpacity(0.4),
                                        onPressed: () {},
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            CustomSizedBox(
                              width: DBL.ten.val,
                            ),
                            CustomSizedBox(
                              width: 600,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    "Service fee - \$30",
                                    style: TS().gRoboto(
                                        fontWeight: FW.w500.val,
                                        color: AppColor.primaryColor.val,
                                        fontSize: FS.font15.val),
                                  ),
                                  CustomSizedBox(
                                    height: DBL.ten.val,
                                  ),
                                  CustomText(
                                    "Distance - 3miles away from your location",
                                    style: TS().gRoboto(
                                        fontWeight: FW.w500.val,
                                        color: AppColor.primaryColor.val,
                                        fontSize: FS.font15.val),
                                  ),
                                  CustomSizedBox(
                                    height: DBL.ten.val,
                                  ),
                                  CustomText(
                                    "John Joseph is a dedicated and truthful caregiver .He has 2years of total experience .",
                                    style: TS().gRoboto(
                                        fontWeight: FW.w400.val,
                                        color: AppColor.matBlack2.val,
                                        fontSize: FS.font15.val),
                                  ),
                                ],
                              ),
                            ),
                            CustomSizedBox(
                              width: 200,
                              child: Column(
                                children: [
                                  CustomText(
                                    "100% Match",
                                    style: TS().gRoboto(
                                        fontSize: FS.font15.val,
                                        color: AppColor.darkGreen.val,
                                        fontWeight: FW.w500.val),
                                  ),
                                  CustomSizedBox(
                                    height: DBL.three.val,
                                  ),
                                  CustomButton(
                                    text: AppString.assign.val,
                                    onPressed: () {},
                                    borderRadius: DBL.twenty.val,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: DBL.forty.val,
                                        vertical: DBL.fifteen.val),
                                    textStyle: TS().gRoboto(
                                        fontSize: FS.font15.val,
                                        color: AppColor.white.val,
                                        fontWeight: FW.w600.val),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ));
      },
    );
  }
}
