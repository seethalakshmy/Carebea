import 'package:flutter/cupertino.dart';

import '../../../core/enum.dart';
import '../../../core/properties.dart';
import '../../../core/responsive.dart';
import '../../../core/text_styles.dart';
import '../../widget/custom_container.dart';
import '../../widget/custom_text.dart';

class ServiceStatus extends StatelessWidget {
  ServiceStatus({Key? key, required this.status}) : super(key: key);

  num status;

  @override
  Widget build(BuildContext context) {
    return status == 3
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
                color: status == 5
                    ? AppColor.darkGreen.val
                    : status == 6
                        ? AppColor.red.val
                        : AppColor.starFillColor.val,
                borderRadius: PR().circularRadius(DBL.eight.val)),
            child: CustomText(
              textAlign: TextAlign.center,
              status == 5
                  ? 'Completed'
                  : status == 6
                      ? 'Cancelled'
                      : 'Upcoming',
              style: TS().gRoboto(
                fontWeight: FW.w600.val,
                fontSize:
                    Responsive.isWeb(context) ? FS.font12.val : FS.font10.val,
                color: AppColor.white.val,
              ),
            ),
          );
  }
}
