import 'package:admin_580_tech/presentation/widget/commonImageview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/enum.dart';
import '../../../core/responsive.dart';
import '../../../core/text_styles.dart';
import '../../side_menu/side_menu_page.dart';
import '../../widget/custom_image.dart';
import '../../widget/custom_svg.dart';
import '../../widget/custom_text.dart';
import '../../widget/header_view.dart';

class AlertList extends StatefulWidget {
  const AlertList({Key? key}) : super(key: key);

  @override
  State<AlertList> createState() => _AlertListState();
}

class _AlertListState extends State<AlertList> {
  List alertList = [
    'Client\n Compliant',
    "Care Ambassador\n Complaints",
    "Missed Scheduled\n Shifts",
    "Client Cancelled\n Shifts",
    "Care Ambassador\n Cancelled Shifts"
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
    return SizedBox(
      height: MediaQuery.of(context).size.height * .34,
      width: Responsive.isWeb(context)
          ? MediaQuery.of(context).size.width * .49
          : MediaQuery.of(context).size.width,
      // color: AppColor.white.val,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: AppColor.white.val,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                    "Alert",
                    style: TS().gRoboto(
                      fontSize: Responsive.isWeb(context)
                          ? FS.font16.val
                          : FS.font14.val,
                      fontWeight: FW.w500.val,
                      color: AppColor.black.val,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 2.2,
                  mainAxisSpacing: 1,
                  crossAxisSpacing: 1,
                  crossAxisCount: 3,
                ),
                // padding: const EdgeInsets.all(8),
                itemCount: alertList.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      if (index == 0 || index == 1) {
                        autoTabRouter!.setActiveIndex(15);
                      }
                    },
                    child: Container(
                      color: AppColor.white.val,
                      height: 150,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                            countList[index],
                            style: TS().gRoboto(
                              fontSize: Responsive.isWeb(context)
                                  ? FS.font16.val
                                  : FS.font14.val,
                              fontWeight: FW.w800.val,
                              color: AppColor.primaryColor.val,
                            ),
                          ),
                          CustomText(
                            alertList[index],
                            style: TS().gRoboto(
                              fontSize: Responsive.isWeb(context)
                                  ? FS.font14.val
                                  : FS.font12.val,
                              fontWeight: FW.w500.val,
                              color: AppColor.label.val,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
