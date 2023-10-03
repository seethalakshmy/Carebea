import 'package:flutter/cupertino.dart';

import '../../../core/enum.dart';
import '../../../core/properties.dart';
import '../../../core/responsive.dart';
import '../../../core/text_styles.dart';
import '../../widget/custom_container.dart';
import '../../widget/custom_text.dart';

class ClientStatusWidget extends StatelessWidget {
  ClientStatusWidget({Key? key, this.serviceStatus, this.paymentStatus})
      : super(key: key);

  num? serviceStatus;
  num? paymentStatus;

  @override
  Widget build(BuildContext context) {
    return serviceStatus == 3
        ? Row(
            children: [
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                    color: AppColor.darkGreen.val,
                    borderRadius: BorderRadius.circular(5)),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Ongoing',
                style: TextStyle(color: AppColor.darkGreen.val),
              ),
            ],
          )
        : CustomContainer.decoration(
            alignment: Alignment.center,
            width: 80,
            height: DBL.thirty.val,
            padding: EdgeInsets.symmetric(
                vertical: DBL.five.val, horizontal: DBL.five.val),
            decoration: BoxDecoration(
                color: (serviceStatus == 5 || paymentStatus == 2)
                    ? AppColor.darkGreen.val
                    : (serviceStatus == 6 || paymentStatus == 3)
                        ? AppColor.red.val
                        : (serviceStatus == 2 || paymentStatus == 1)
                            ? AppColor.starFillColor.val
                            : null,
                borderRadius: PR().circularRadius(DBL.eight.val)),
            child: paymentStatus == null
                ? CustomText(
                    textAlign: TextAlign.center,
                    serviceStatus == 5
                        ? 'Completed'
                        : serviceStatus == 6
                            ? 'Cancelled'
                            : serviceStatus == 2
                                ? 'Upcoming'
                                : '',
                    style: TS().gRoboto(
                      fontWeight: FW.w600.val,
                      fontSize: Responsive.isWeb(context)
                          ? FS.font12.val
                          : FS.font10.val,
                      color: AppColor.white.val,
                    ),
                  )
                : CustomText(
                    textAlign: TextAlign.center,
                    paymentStatus == 2
                        ? 'Success'
                        : serviceStatus == 3
                            ? 'Failed'
                            : 'Initialized',
                    style: TS().gRoboto(
                      fontWeight: FW.w600.val,
                      fontSize: Responsive.isWeb(context)
                          ? FS.font12.val
                          : FS.font10.val,
                      color: AppColor.white.val,
                    ),
                  ));
  }
}
