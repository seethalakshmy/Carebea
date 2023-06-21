import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/presentation/widget/check_text_list_item.dart';
import 'package:admin_580_tech/presentation/widget/custom_listview_builder.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/header_view.dart';
import 'package:flutter/material.dart';

import '../../../core/text_styles.dart';
import '../../widget/custom_container.dart';
import '../../widget/custom_text.dart';

class CaregiverProfileView extends StatelessWidget {
  CaregiverProfileView({Key? key}) : super(key: key);
  String content =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been "
      "the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it "
      "to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, "
      "remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, "
      "and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum";
  List<String> mHobbies = [
    "Lorem ipsum dolor sit amet consectetur.",
    "Lorem ipsum dolor sit amet consectetur.",
    "Lorem ipsum dolor sit amet consectetur."
  ];
  String content2 =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ";

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
            aboutView(),
            CustomSizedBox(
              height: DBL.fifteen.val,
            ),
            _hobbiesView(),
            CustomSizedBox(
              height: DBL.fifteen.val,
            ),
            _whyCareGiver(),
          ],
        ),
      ),
    );
  }

  aboutView() {
    return Column(
      children: [
        HeaderView(
          title: AppString.about.val,
          color: AppColor.matBlack3.val,
          fontSize: FS.font18.val,
          topPadding: DBL.zero.val,
          sidePadding: DBL.zero.val,
        ),
        CustomSizedBox(
          height: DBL.eight.val,
        ),
        CustomText(
          content,
          style: TS().gRoboto(
            fontSize: FS.font13PointFive.val,
            fontWeight: FW.w400.val,
            color: AppColor.darkGrey3.val,
            height: DBL.onePointNine.val,
          ),
        ),
      ],
    );
  }

  _hobbiesView() {
    return Column(
      children: [
        HeaderView(
          title: AppString.hobbies.val,
          color: AppColor.matBlack3.val,
          fontSize: FS.font18.val,
          topPadding: DBL.zero.val,
          sidePadding: DBL.zero.val,
        ),
        CustomSizedBox(
          height: DBL.eight.val,
        ),
        CustomListViewBuilder(
            itemCount: mHobbies.length,
            shrinkWrap: true,
            itemBuilder: (context, index) =>
                CheckTextListItem(value: mHobbies[index])),
      ],
    );
  }

  _whyCareGiver() {
    return Column(
      children: [
        HeaderView(
          title: AppString.whyYouLoveBeingCareAmbassador.val,
          color: AppColor.matBlack3.val,
          fontSize: FS.font18.val,
          topPadding: DBL.zero.val,
          sidePadding: DBL.zero.val,
        ),
        CustomSizedBox(
          height: DBL.eight.val,
        ),
        CustomText(
          content2,
          style: TS().gRoboto(
            fontSize: FS.font13PointFive.val,
            fontWeight: FW.w400.val,
            color: AppColor.darkGrey3.val,
            height: DBL.onePointNine.val,
          ),
        )
      ],
    );
  }
}
