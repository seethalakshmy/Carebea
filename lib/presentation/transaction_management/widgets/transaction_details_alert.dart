import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/presentation/transaction_management/widgets/custom_status_widget.dart';
import 'package:admin_580_tech/presentation/widget/custom_icon.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';

class TransactionDetailsAlert extends StatelessWidget {
  TransactionDetailsAlert({super.key});

  late BuildContext context;

  List<Step> stepperData = [
    Step(
        state: StepState.complete,
        title: SizedBox(
          width: 200,
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            title: CustomText3(
              'Refund Started',
              style: TS().gRoboto(
                  color: AppColor.black.val,
                  fontSize: FS.font16.val,
                  fontWeight: FW.w500.val),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText3(
                  'Mon,09March 2023 |  3:20PM',
                  style: TS().gRoboto(
                      color: AppColor.black.val,
                      fontSize: FS.font12.val,
                      fontWeight: FW.w400.val),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 150,
                    height: 30,
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        CustomText3(
                          "Hide Details",
                          style: TS().gRoboto(
                              color: AppColor.error.val,
                              fontSize: FS.font13.val,
                              fontWeight: FW.w400.val),
                        ),
                        Icon(
                          Icons.keyboard_arrow_up,
                          size: 20,
                          color: AppColor.error.val,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        content: Container(
          width: 350,
          height: 150,
          color: AppColor.lightGrey7.val,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("THis is working"),
              CustomSizedBox(height: 30),
              Text("THis is working"),
              CustomSizedBox(height: 30),
              Text("THis is working"),
            ],
          ),
        )),
    Step(
        title: SizedBox(
          width: 200,
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            title: CustomText3(
              'Refunded',
              style: TS().gRoboto(
                  color: AppColor.black.val,
                  fontSize: FS.font16.val,
                  fontWeight: FW.w500.val),
            ),
            subtitle: CustomText3(
              'Mon,09March 2023 |  3:20PM',
              style: TS().gRoboto(
                  color: AppColor.black.val,
                  fontSize: FS.font12.val,
                  fontWeight: FW.w400.val),
            ),
          ),
        ),
        content: Container(
          width: 350,
          height: 150,
          color: Colors.red,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("THis is working"),
              CustomSizedBox(height: 30),
              Text("THis is working"),
              CustomSizedBox(height: 30),
              Text("THis is working"),
            ],
          ),
        )),
  ];

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Container(height: 400,
      child: Wrap(
        children: [
          Responsive.isWeb(context)
              ? Row(
                  children: [_detailsWidget(), _refundDetailsWidget()],
                )
              : Container(
                  height: 480,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [_detailsWidget(), _refundDetailsWidget()],
                    ),
                  ),
                ),
        ],
      ),
    );
  }

  Row _detailRow(String detailName, String detail) {
    return Row(
      children: [
        Container(
          width: 160,
          child: CustomText3(
            detailName,
            softWrap: true,
            style: TS().gRoboto(
              fontSize:
                  Responsive.isWeb(context) ? FS.font14.val : FS.font13.val,
              fontWeight: FW.w400.val,
            ),
          ),
        ),
        detail.toLowerCase() == "completed" || detail.toLowerCase() == "cancel"
            ? Row(
                children: [
                  CustomText3(
                    ":  ",
                    softWrap: true,
                    style: TS().gRoboto(
                      fontSize: Responsive.isWeb(context)
                          ? FS.font14.val
                          : FS.font13.val,
                      fontWeight: FW.w400.val,
                    ),
                  ),
                  CustomStatusWidget(
                    isCompleted:
                        detail.toLowerCase() == "completed" ? true : false,
                    isFromDetails: true,
                  )
                ],
              )
            : CustomText3(
                ":  " + detail,
                softWrap: true,
                style: TS().gRoboto(
                  fontSize:
                      Responsive.isWeb(context) ? FS.font14.val : FS.font13.val,
                  fontWeight: FW.w400.val,
                ),
              ),
      ],
    );
  }

  Widget _headerWidget() {
    return Container(
      width: double.infinity,
      height: 68,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(5),
          topLeft: Radius.circular(5),
        ),
        color: AppColor.primaryColor.val,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText3(
            AppString.transactionDetails.val,
            style: TS().gRoboto(
              color: AppColor.white.val,
              fontWeight: FW.w500.val,
              fontSize:
                  Responsive.isWeb(context) ? FS.font22.val : FS.font18.val,
            ),
          ),
          InkWell(
            child: CustomIcon(
              icon: Icons.close,
              size: 16.5,
              color: AppColor.white.val,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }

  Widget _detailsWidget() {
    return Container(
      width: Responsive.isWeb(context)
          ? MediaQuery.of(context).size.width * .35
          : double.infinity,
      color: AppColor.white.val,
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          _detailRow("Transaction ID", "6846141845"),
          const CustomSizedBox(height: 7),
          _detailRow("Service ID", "#4400"),
          const CustomSizedBox(height: 7),
          _detailRow("Transaction Type", "ACH"),
          const CustomSizedBox(height: 7),
          _detailRow("Paid For", "Serivce Fee"),
          const CustomSizedBox(height: 7),
          _detailRow("Paid To", "ama-gi"),
          const CustomSizedBox(height: 7),
          _detailRow("Received From", "Client Name"),
          const CustomSizedBox(height: 7),
          _detailRow("Amount", "\$230"),
          const CustomSizedBox(height: 7),
          _detailRow("Date & Time", "March 4 2023 - 02:30PM"),
          const CustomSizedBox(height: 7),
          _detailRow("Status", "Completed"),
        ],
      ),
    );
  }

  Widget _refundDetailsWidget() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        color: AppColor.white.val,
      ),
      padding: const EdgeInsets.all(20),
      width: Responsive.isWeb(context)
          ? MediaQuery.of(context).size.width * .34
          : double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stepper(
            steps: stepperData,
            currentStep: 0,
            type: StepperType.vertical,
            controlsBuilder: (ctx, details) {
              return Padding(padding: EdgeInsets.zero);
            },
          ),
        ],
      ),
    );
  }
}
