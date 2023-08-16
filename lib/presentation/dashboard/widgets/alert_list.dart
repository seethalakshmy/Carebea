import 'package:admin_580_tech/presentation/widget/commonImageview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/enum.dart';
import '../../../core/responsive.dart';
import '../../../core/text_styles.dart';
import '../../widget/custom_image.dart';
import '../../widget/custom_svg.dart';
import '../../widget/custom_text.dart';

class AlertList extends StatefulWidget {
  const AlertList({Key? key}) : super(key: key);

  @override
  State<AlertList> createState() => _AlertListState();
}

class _AlertListState extends State<AlertList> {
  List alertList = [
    'Client Compliant',
    "Care Ambassador Complaints",
    "Missed Scheduled Shifts",
    "Client Cancelled Shifts",
    "Care Ambassador Cancelled Shifts"
  ];
  List countList = ['10', '15', "2", "7", "1"];
  List icons = [
    IMG.clientComplaints.val,
    IMG.careComplaints.val,
    IMG.scheduledShifts.val,
    IMG.clientCancelledShifts.val,
    IMG.careCancelledShifts.val
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .4,
      width: Responsive.isWeb(context)
          ? MediaQuery.of(context).size.width * .3
          : MediaQuery.of(context).size.width,
      color: AppColor.white.val,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              "Alert",
              style: TS().gRoboto(
                fontSize:
                    Responsive.isWeb(context) ? FS.font16.val : FS.font14.val,
                fontWeight: FW.w500.val,
                color: AppColor.black.val,
              ),
            ),
            Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: alertList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        ListTile(
                          leading: CommonImageView(imagePath: icons[index]),
                          title: CustomText(
                            alertList[index],
                            style: TS().gRoboto(
                              fontSize: Responsive.isWeb(context)
                                  ? FS.font14.val
                                  : FS.font12.val,
                              fontWeight: FW.w400.val,
                              color: AppColor.label.val,
                            ),
                          ),
                          trailing: CustomText(
                            countList[index],
                            style: TS().gRoboto(
                              fontSize: Responsive.isWeb(context)
                                  ? FS.font14.val
                                  : FS.font12.val,
                              fontWeight: FW.w400.val,
                              color: AppColor.black.val,
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                        )
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
