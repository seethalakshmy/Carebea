import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/core/utility.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';

import '../../domain/subscription/model/subscription_model.dart';
import '../routes/app_router.gr.dart';
import '../side_menu/side_menu_page.dart';
import '../widget/cached_image.dart';
import '../widget/custom_alert_dialog_widget.dart';
import '../widget/row_combo.dart';

class SubscriptionDetailScreen extends StatelessWidget {
  const SubscriptionDetailScreen({
    super.key,
    required this.item,
  });

  final SubscriptionResult item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
                                  onTap: () {
                                    showGeneralDialog(
                                      barrierDismissible: true,
                                      barrierLabel: "",
                                      context: context,
                                      pageBuilder: (BuildContext buildContext,
                                          Animation animation,
                                          Animation secondaryAnimation) {
                                        return CustomAlertDialogWidget(
                                            showHeading: false,
                                            width: 700,
                                            heading: "",
                                            child: CachedImage(
                                              fit: BoxFit.contain,
                                              imgUrl: item.profile,
                                            ));
                                      },
                                    );
                                  },
                                  imgUrl: item.profile,
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
                                InkWell(
                                  onTap: () {
                                    debugPrint('statusssss ${item.status}');
                                    Navigator.pop(context);
                                    autoTabRouter?.navigate(
                                        ClientSubProfileDetailsRoute(
                                            id: item.id));
                                  },
                                  child: Row(
                                    children: [
                                      CustomText(
                                        (item.name?.firstName ?? '') +
                                            (item.name?.lastName ?? ''),
                                        style: TS().gRoboto(
                                          color: AppColor.rowColor.val,
                                          fontWeight: FW.w600.val,
                                          needUnderLine: true,
                                          fontSize: getFontSize(
                                            context,
                                            fontSize: FS.font19.val,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      CustomText(
                                          item.status == false
                                              ? AppString
                                                  .deletedCareRecipient.val
                                              : '',
                                          style: TS().gRoboto(
                                              color: AppColor.red.val,
                                              fontWeight: FW.w600.val,
                                              fontSize: getFontSize(
                                                context,
                                                fontSize: FS.font19.val,
                                              ))),
                                    ],
                                  ),
                                ),
                                CustomText(
                                  item.email ?? '',
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
                                  imgUrl: item.profile,
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
                                  (item.name?.firstName ?? '') +
                                      (item.name?.lastName ?? ''),
                                  style: TS().gRoboto(
                                    color: AppColor.rowColor.val,
                                    fontWeight: FW.w600.val,
                                    fontSize: getFontSize(
                                      context,
                                      fontSize: FS.font19.val,
                                    ),
                                  ),
                                ),
                                CustomText(
                                  item.email ?? '',
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
          RowColonCombo.twoHundred(
              label: AppString.subscriptionId.val,
              value: item.subscriptionDetails?.subscriptionId ?? '',
              fontSize: FS.font13PointFive.val),
          CustomSizedBox(
            height: DBL.seventeen.val,
          ),

          RowColonCombo.twoHundred(
              label: AppString.startDateAndTime.val,
              value: Utility.serviceDate(
                DateTime.parse(item.subscriptionDetails?.startedAt ?? "")
                    .toLocal(),
              ),
              fontSize: FS.font13PointFive.val),
          CustomSizedBox(
            height: DBL.seventeen.val,
          ),
          RowColonCombo.twoHundred(
              label: AppString.subscriptionType.val,
              value: item.subscriptionDetails?.type == '1'
                  ? 'Monthly'
                  : item.subscriptionDetails?.type == '2'
                      ? 'Semi Annual'
                      : 'Annual',
              valueColor: item.subscriptionDetails?.type == '1'
                  ? AppColor.blue.val
                  : item.subscriptionDetails?.type == '2'
                      ? AppColor.red.val
                      : AppColor.green.val,
              fontSize: FS.font13PointFive.val),
          CustomSizedBox(
            height: DBL.seventeen.val,
          ),

          RowColonCombo.twoHundred(
              label: AppString.subscriptionFee.val,
              value: item.subscriptionDetails?.subscriptionPlanFee ?? "",
              fontSize: FS.font13PointFive.val),
          CustomSizedBox(
            height: DBL.seventeen.val,
          ),

          RowColonCombo.twoHundred(
              label: AppString.endDateAndTime.val,
              value: Utility.serviceDate(
                  DateTime.parse(item.subscriptionDetails?.expiry ?? "")
                      .toLocal()),
              fontSize: FS.font13PointFive.val),
          CustomSizedBox(
            height: DBL.seventeen.val,
          ),

          RowColonCombo.twoHundred(
              label: AppString.renewalDate.val,
              value: item.subscriptionDetails?.monthlyExpire ?? '',
              fontSize: FS.font13PointFive.val),
          CustomSizedBox(
            height: DBL.seventeen.val,
          ),
          RowColonCombo.twoHundred(
              label: AppString.subscriptionStatus.val,
              value: item.subscriptionDetails?.isActive == true
                  ? AppString.active.val
                  : AppString.inActive.val,
              valueColor: item.subscriptionDetails?.isActive == true
                  ? AppColor.green.val
                  : AppColor.red.val,
              fontSize: FS.font13PointFive.val),

          // isLg(context) ? _rightView() : CustomSizedBox.shrink(),
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

  bool isLg(BuildContext context) => MediaQuery.of(context).size.width <= 1236;
}
