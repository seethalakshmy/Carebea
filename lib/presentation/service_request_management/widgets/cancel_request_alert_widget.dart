import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/bloc/service_request_management/service_request_management_bloc.dart';
import '../../../core/enum.dart';
import '../../../core/text_styles.dart';
import '../../on_boarding/modules/qualification_details/widgets/yes_no_radio_button_widget.dart';
import '../../widget/custom_alert_dialog_widget.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_sizedbox.dart';
import '../../widget/custom_text.dart';
import '../../widget/custom_text_field.dart';

class CancelRequestAlertWidget extends StatelessWidget {
  const CancelRequestAlertWidget({
    super.key,
    required this.label,
    required this.onTapYes,
    this.isLoading = false,
    required this.heading,
    this.controller,
    this.validator,
    required this.serviceBloc,
  });

  final String heading;
  final String label;
  final Function onTapYes;
  final bool isLoading;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final ServiceRequestManagementBloc serviceBloc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(100.0),
      child: CustomAlertDialogWidget(
        heading: heading,
        height: 320,
        child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: DBL.twentyFive.val,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomSizedBox(height: DBL.fifteen.val),
                CustomText(
                  label,
                  style: TS().gRoboto(
                      fontSize: FS.font17.val,
                      color: AppColor.black.val,
                      fontWeight: FW.w400.val),
                ),
                CustomSizedBox(height: DBL.twenty.val),
                reasonField(),
                CustomSizedBox(height: DBL.ten.val),
                _whoRequestCancelRadioWidget(),
                CustomSizedBox(height: DBL.thirty.val),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    _noButton(context),
                    CustomSizedBox(
                      width: DBL.ten.val,
                    ),
                    _yesButton(context),
                  ],
                )
              ],
            )),
      ),
    );
  }

  CustomButton _noButton(BuildContext context) {
    return CustomButton(
      text: AppString.no.val,
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
          horizontal: DBL.thirtyFive.val, vertical: DBL.eighteen.val),
    );
  }

  CustomButton _yesButton(BuildContext context) {
    return CustomButton(
      text: AppString.yes.val,
      isLoading: isLoading,
      onPressed: () {
        onTapYes();
      },
      borderRadius: DBL.five.val,
      textStyle: TS().gRoboto(
          fontWeight: FW.w500.val,
          color: AppColor.white.val,
          fontSize: FS.font16.val),
      padding: EdgeInsets.symmetric(
          horizontal: DBL.thirtyFive.val, vertical: DBL.eighteen.val),
    );
  }

  reasonField() {
    return CTextField(
      width: 350,
      controller: controller,
      borderColor: AppColor.lightBlue3.val,
      hintText: AppString.enterTheReason.val,
      maxLines: INT.two.val,
      hintStyle: TS().gRoboto(
          fontSize: FS.font15.val,
          fontWeight: FW.w400.val,
          color: AppColor.black.val),
      fillColor: AppColor.lightBlue3.val,
      validator: validator,
    );
  }

  _whoRequestCancelRadioWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(AppString.whoRequestedToCancel.val,
            style: TS().gRoboto(
                fontWeight: FW.w400.val,
                color: AppColor.black.val,
                fontSize: FS.font17.val)),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 20.0),
          child: BlocProvider.value(
            value: serviceBloc,
            child: BlocBuilder<ServiceRequestManagementBloc,
                ServiceRequestManagementState>(
              builder: (context, state) {
                return YesNoRadioButtonWidget(
                  yesLabel: AppString.client.val,
                  noLabel: AppString.careAmbassador.val,
                  onChanged: (val) {
                    serviceBloc.add(ServiceRequestManagementEvent
                        .whoRequestedCancelRadioButton(whoRequested: val ?? 0));
                  },
                  groupValue: state.whoRequestedCancel,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
