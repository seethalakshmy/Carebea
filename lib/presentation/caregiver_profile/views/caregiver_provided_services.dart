import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_listview_builder.dart';
import 'package:admin_580_tech/presentation/widget/dot_text_list_item.dart';
import 'package:flutter/material.dart';

import '../../widget/custom_sizedbox.dart';
import '../../widget/header_view.dart';

class CareGiverProvidedServices extends StatelessWidget {
  CareGiverProvidedServices({Key? key}) : super(key: key);
  List<String> mBasicServices = [
    "Assist w/ wake Up",
    "Assist w/ wake Up",
    "Assist w/ wake Up"
  ];
  List<String> mSpecialServices = [
    "Bed bath",
    "Assist w/ wake Up",
    "Change Depends",
    "Memory care"
  ];

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: EdgeInsets.symmetric(
          horizontal: DBL.twentyFive.val, vertical: DBL.twentyFive.val),
      color: AppColor.white.val,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _basicServicesView(),
            Divider(
              color: AppColor.dividerColor3.val,
            ),
            CustomSizedBox(
              height: DBL.eight.val,
            ),
            _specialServicesView(),
          ],
        ),
      ),
    );
  }

  _basicServicesView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderView(
          title: AppString.basicServices.val,
          color: AppColor.matBlack3.val,
          fontSize: FS.font18.val,
          topPadding: DBL.zero.val,
          sidePadding: DBL.zero.val,
        ),
        CustomSizedBox(
          height: DBL.eight.val,
        ),
        CustomSizedBox(
          height: DBL.forty.val,
          child: CustomListViewBuilder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: mBasicServices.length,
              itemBuilder: (context, index) => DotTextListItem(
                    isForHorizontalView: true,
                    value: mBasicServices[index],
                    color: AppColor.label6.val,
                  )),
        ),
      ],
    );
  }

  _specialServicesView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderView(
          title: AppString.specialServices.val,
          color: AppColor.matBlack3.val,
          fontSize: FS.font18.val,
          topPadding: DBL.zero.val,
          sidePadding: DBL.zero.val,
        ),
        CustomSizedBox(
          height: DBL.eight.val,
        ),
        CustomSizedBox(
          height: DBL.forty.val,
          child: CustomListViewBuilder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: mSpecialServices.length,
              itemBuilder: (context, index) => DotTextListItem(
                    isForHorizontalView: true,
                    value: mSpecialServices[index],
                    color: AppColor.red.val,
                  )),
        ),
      ],
    );
  }
}
