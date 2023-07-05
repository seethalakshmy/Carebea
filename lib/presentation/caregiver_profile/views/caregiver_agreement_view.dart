import 'package:admin_580_tech/application/bloc/caregiver-profile/caregiver_profile_bloc.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/material.dart';

class CareGiverAgreementView extends StatelessWidget {
  const CareGiverAgreementView({Key? key, required this.state})
      : super(key: key);
  final CareGiverProfileState state;
  // String content =
  //     "Gives the caregiver the right to make healthcare decisions on someone else’s behalf. This is common if the patient is not able to "
  //     "speak for themselves and a caregiver is assigned the duty of makingdecisions for the benefit of the patient. This form also includes a living will that allows the patient to make end-of-life decisions if they should be in a state of incapacitation for a longer period of time. speak for themselves and a caregiver is assigned the duty of makingdecisions for the benefit of the patient. This form also includes a "
  //     "living will that allows the patient to make end-of-life decisions if they should be in a state of time.\n"
  //     "Gives the caregiver the right to make healthcare decisions on someone else’s behalf. "
  //     "This is common if the patient is not able to speak for themselves and a caregiver is assigned the duty of making decisions for the benefit of the patient. This form also includes a living will that allows the patient to make end-of-life decisions if they should be in a state of incapacitation for a longer period of time. This form also includes a living will that allows the patient to make end-of-life decisions if they should be in a state of incapacitation for a longer period of time\n"
  //     "Gives the caregiver the right to make healthcare decisions on someone else’s behalf. This is common if the patient is not able to speak for themselves and a caregiver is assigned the duty of making"
  //     "decisions for the benefit of the patient. This form also includes a living will that allows the patient to make end-of-life decisions if they should be in a state of incapacitation for a longer period of time.\n"
  //     "Gives the caregiver the right to make healthcare decisions on someone else’s behalf. This is common if the patient is not able to speak for themselves and a caregiver is assigned the duty of making"
  //     "decisions for the benefit of the patient. This form also includes a living will that allows the patient to make end-of-life decisions if they should be in a state of incapacitation for a longer period of time."
  //     "Gives the caregiver the right to make healthcare decisions on someone else’s behalf. This is common if the patient is not able to "
  //     "speak for themselves and a caregiver is assigned the duty of makingdecisions for the benefit of the patient. This form also includes a living will that allows the patient to make end-of-life decisions if they should be in a state of incapacitation for a longer period of time. speak for themselves and a caregiver is assigned the duty of makingdecisions for the benefit of the patient. This form also includes a living will that allows the patient to make end-of-life decisions if they should be in a state of "
  //     "Gives the caregiver the right to make healthcare decisions on someone else’s behalf. ";

  @override
  Widget build(BuildContext context) {
    String content = state.response?.data?.agreement ?? "";
    return _buildBody(content);
  }

  CustomContainer _buildBody(String content) {
    return CustomContainer(
      padding: EdgeInsets.symmetric(
          horizontal: DBL.twentyFive.val, vertical: DBL.twentyFive.val),
      color: AppColor.white.val,
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomText(
              content,
              style: TS().gRoboto(
                  fontSize: FS.font13PointFive.val,
                  fontWeight: FW.w400.val,
                  color: AppColor.darkGrey3.val,
                  height: DBL.onePointNine.val),
            ),
            CustomSizedBox(
              height: DBL.ten.val,
            ),
          ],
        ),
      ),
    );
  }
}
