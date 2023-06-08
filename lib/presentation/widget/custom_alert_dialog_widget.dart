import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/presentation/widget/custom_icon.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';

class CustomAlertDialogWidget extends StatelessWidget {
  CustomAlertDialogWidget({super.key, this.heading, this.child});

  late BuildContext context;
  String? heading;
  Widget? child;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: Wrap(
        children: [
          Container(
            width: 1072,
            height: 550,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  offset: Offset(0.0, 10.0),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [_headerWidget(heading ?? ""), child ?? Container()],
            ),
          ),
        ],
      ),
    );
  }

  Widget _headerWidget(String heading) {
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
            heading,
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
}
