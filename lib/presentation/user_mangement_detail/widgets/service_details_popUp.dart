import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/presentation/transaction_management/widgets/custom_status_widget.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../domain/transaction_management/model/transaction_details_response.dart';
import '../../caregiver_detail/widgets/svg_text.dart';
import '../../widget/custom_svg.dart';

class ServiceDetailsPopUp extends StatelessWidget {
  const ServiceDetailsPopUp({
    super.key,
    // required this.transactionBloc
  });

  // final TransactionManagementBloc transactionBloc;

  @override
  Widget build(BuildContext context) {
    // return BlocProvider<TransactionManagementBloc>(
    //   create: (context) => transactionBloc,
    //   child: BlocBuilder<TransactionManagementBloc, TransactionManagementState>(
    //     bloc: transactionBloc,
    //     builder: (context, state) {
    //       return SizedBox(
    //         height: 480,
    //         child: transactionBloc.state.isDetailsLoading
    //             ? const CustomShimmerWidget.rectangular(height: double.infinity)
    //             :
    return Wrap(
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
                                path: IMG.profilePlaceHolder.val,
                                width: isXs(context) ? 150 : 200,
                                height: isXs(context) ? 125 : 175,
                              ),

                              ///Todo change later
                              // CustomSizedBox(
                              //   height: DBL.forty.val,
                              // ),
                              // Row(
                              //     mainAxisAlignment:
                              //         MainAxisAlignment
                              //             .spaceBetween,
                              //     children: [
                              //       CustomText3(
                              //         AppString.profileCompletion.val,
                              //         style: TS().gRoboto(
                              //             fontWeight: FW.w500.val,
                              //             fontSize: getFontSize(
                              //               context,
                              //               fontSize:
                              //                   FS.font14.val,
                              //             ),
                              //             color: AppColor
                              //                 .lightGrey4.val),
                              //       ),
                              //       CustomSizedBox(
                              //         width: DBL.five.val,
                              //       ),
                              //       CustomText3(
                              //         response.user
                              //                 ?.profileCompletion ??
                              //             "",
                              //         style: TS().gRoboto(
                              //             fontWeight: FW.w500.val,
                              //             fontSize: getFontSize(
                              //               context,
                              //               fontSize:
                              //                   FS.font14.val,
                              //             ),
                              //             color: AppColor
                              //                 .primaryColor.val),
                              //       )
                              //     ]),
                              // CustomSizedBox(
                              //   height: DBL.thirteen.val,
                              // ),
                              // LinearPercentIndicator(
                              //   padding: const EdgeInsets.all(0),
                              //   barRadius:
                              //       const Radius.circular(10),
                              //   width:
                              //       isXs(context) ? 150.0 : 200.0,
                              //   lineHeight: 6.0,
                              //   percent: 0.5,
                              //   progressColor:
                              //       AppColor.green2.val,
                              // ),
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
                                      ? MediaQuery.of(context).size.width - 635
                                      : isLg2(context)
                                          ? MediaQuery.of(context).size.width -
                                              695
                                          : MediaQuery.of(context).size.width -
                                              1055,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 40,
                              ),
                              CustomText(
                                "test",
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

                  // _refundWidget(transactionBloc.state)
                ],
              )
            : SizedBox(
                height: 480,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _detailsWidget(context),
                      // _refundWidget(transactionBloc.state)
                    ],
                  ),
                ),
              ),
      ],
    );
  }

  Row _detailRow(String detailName, String detail, TransactionDetailsData? item,
      BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 160,
          child: CustomText(
            detailName,
            softWrap: true,
            style: TS().gRoboto(
              fontSize:
                  Responsive.isWeb(context) ? FS.font14.val : FS.font13.val,
              fontWeight: FW.w400.val,
            ),
          ),
        ),
        item?.status!.id == 1 || item?.status!.id == 2
            ? Row(
                children: [
                  CustomText(
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
                    statusName: item!.status!.name!,
                    isCompleted: item.status!.id == 1 || item.status!.id == 2,
                    isFromDetails: true,
                  )
                ],
              )
            : CustomText(
                ":  $detail",
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

  Widget _detailsWidget(BuildContext context) {
    return Container(
      width: Responsive.isWeb(context)
          ? MediaQuery.of(context).size.width * .35
          : double.infinity,
      color: AppColor.white.val,
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          _detailRow("Transaction ID", "", null, context),
          const CustomSizedBox(height: 7),
          _detailRow("Service ID", "", null, context),
          const CustomSizedBox(height: 7),
          _detailRow("Transaction Type", "", null, context),
          const CustomSizedBox(height: 7),
          _detailRow("Paid For", "", null, context),
          const CustomSizedBox(height: 7),
          _detailRow("Paid To", "", null, context),
          const CustomSizedBox(height: 7),
          _detailRow("Received From", "", null, context),
          const CustomSizedBox(height: 7),
          _detailRow("Amount", "", null, context),
          const CustomSizedBox(height: 7),
          // _detailRow(
          //     "Date & Time",
          //     transactionBloc.formatDateToMonthName(
          //         transactionBloc.transactionDetailsData.dateTime ??
          //             "0000-00-00T00:00:00.000Z"),
          //     null,
          //     context),
          const CustomSizedBox(height: 7),
          // _detailRow(
          //     "Status",
          //      "",
          //     transactionBloc.transactionDetailsData,
          //     context),
        ],
      ),
    );
  }

  double getFontSize(BuildContext context, {required double fontSize}) {
    return Responsive.isLg(context) ? fontSize - 2 : fontSize;
  }

  bool isLg2(context) => MediaQuery.of(context).size.width <= 1385;

  bool isXs(context) => MediaQuery.of(context).size.width <= 990;

  bool isXs2(context) => MediaQuery.of(context).size.width <= 930;

  bool isXs3(context) => MediaQuery.of(context).size.width <= 805;
}
