import 'package:admin_580_tech/application/bloc/caregiver-profile/caregiver_profile_bloc.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/domain/caregiver_profile/model/caregiver_profile_response.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/header_view.dart';
import 'package:flutter/material.dart';

import '../../../core/text_styles.dart';
import '../../widget/custom_container.dart';
import '../../widget/custom_text.dart';

class CaregiverProfileView extends StatelessWidget {
  const CaregiverProfileView({Key? key, required this.state}) : super(key: key);
  final CareGiverProfileState state;

  @override
  Widget build(BuildContext context) {
    Profile? profile = state.response?.data?.profile;
    return CustomContainer(
      padding: EdgeInsets.symmetric(
          horizontal: DBL.twentyFive.val, vertical: DBL.twentyFive.val),
      color: AppColor.white.val,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            aboutView(profile?.about ?? ""),
            CustomSizedBox(
              height: DBL.fifteen.val,
            ),
            _hobbiesView(profile?.hobbies ?? ""),
            CustomSizedBox(
              height: DBL.fifteen.val,
            ),
            _whyCareGiver(profile?.description ?? ""),
          ],
        ),
      ),
    );
  }

  aboutView(String about) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
          about,
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

  _hobbiesView(String hobbies) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
        CustomText(hobbies,
            style: TS().gRoboto(
                color: AppColor.matBlack3.val, fontWeight: FW.w400.val)),
      ],
    );
  }

  _whyCareGiver(String des) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
          des,
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
