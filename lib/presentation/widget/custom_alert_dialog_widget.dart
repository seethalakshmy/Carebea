import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/presentation/widget/custom_icon.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';

import 'custom_sizedbox.dart';

class CustomAlertDialogWidget extends StatelessWidget {
  const CustomAlertDialogWidget(
      {super.key,
      required this.heading,
      required this.child,
      this.height,
      this.backgroundColor,
      this.width,
      this.mainAxisAlignment,
      this.showHeading = true,
      this.onCloseTap,
      this.crossAxisAlignment});

  final String heading;
  final Widget child;
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;
  final bool? showHeading;
  final Function()? onCloseTap;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      alignment: AlignmentDirectional.center,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(DBL.ten.val),
      ),
      elevation: DBL.zero.val,
      backgroundColor: Colors.transparent,
      child: Wrap(
        children: [
          showHeading!
              ? _headerWidget(context, heading)
              : const CustomSizedBox(),
          Container(
            width: width ?? double.infinity,
            height: height ?? 550,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(DBL.five.val),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: DBL.ten.val,
                  offset: Offset(DBL.zero.val, DBL.ten.val),
                ),
              ],
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  showHeading!
                      ? const CustomSizedBox()
                      : Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0, right: 20.0, bottom: 20.0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: InkWell(
                              onTap: onCloseTap ??
                                  () {
                                    Navigator.pop(context);
                                  },
                              child: CustomIcon(
                                icon: Icons.close,
                                size: DBL.twenty.val,
                                color: AppColor.black.val,
                              ),
                            ),
                          ),
                        ),
                  Center(child: child)
                ],
              ),
            ),
          ),
        ],
      ),
      // child: Wrap(
      //   children: [
      //     _headerWidget(context, heading),
      //     Container(
      //       width: width ?? double.infinity,
      //       height: height ?? 550,
      //       decoration: BoxDecoration(
      //         color: backgroundColor ?? Colors.white,
      //         shape: BoxShape.rectangle,
      //         borderRadius: BorderRadius.circular(DBL.five.val),
      //         boxShadow: [
      //           BoxShadow(
      //             color: Colors.black26,
      //             blurRadius: DBL.ten.val,
      //             offset: Offset(DBL.zero.val, DBL.ten.val),
      //           ),
      //         ],
      //       ),
      //       child: SingleChildScrollView(
      //         child: Column(
      //           mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      //           crossAxisAlignment:
      //               crossAxisAlignment ?? CrossAxisAlignment.start,
      //           children: [child],
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }

  Widget _headerWidget(
    BuildContext context,
    String heading,
  ) {
    return Container(
      width: width,
      height: DBL.sixtyEight.val,
      padding: EdgeInsets.all(DBL.twenty.val),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(DBL.five.val),
          topLeft: Radius.circular(DBL.five.val),
        ),
        color: AppColor.primaryColor.val,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            heading,
            style: TS().gRoboto(
              color: AppColor.white.val,
              fontWeight: FW.w500.val,
              fontSize:
                  Responsive.isWeb(context) ? FS.font20.val : FS.font18.val,
            ),
          ),
          InkWell(
            onTap: onCloseTap ??
                () {
                  Navigator.pop(context);
                },
            child: CustomIcon(
              icon: Icons.close,
              size: DBL.eighteen.val,
              color: AppColor.white.val,
            ),
          )
        ],
      ),
    );
  }
}
