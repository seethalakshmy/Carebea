import 'package:admin_580_tech/application/bloc/onboarding/onboarding_bloc.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/enum.dart';
import '../../../../../core/text_styles.dart';
import '../../../../widget/custom_text.dart';

class YesNoRadioButtonWidget extends StatelessWidget {
  const YesNoRadioButtonWidget({
    Key? key,
    required this.groupValue,
    required this.yesLabel,
    required this.noLabel,
    required this.onYesChanged,
    required this.onNoChanged,
  }) : super(key: key);
  final int groupValue;
  final String yesLabel;
  final String noLabel;
  final Function(int?) onYesChanged;
  final Function(int?) onNoChanged;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (context, state) {
        return Row(
          children: [
            Radio(
              value: 0,
              groupValue: groupValue,
              onChanged: onYesChanged,
            ),
            CustomText3(
              yesLabel,
              style: TS().gRoboto(
                  fontSize: FS.font13.val,
                  fontWeight: FW.w400.val,
                  color: AppColor.matBlack2.val),
            ),
            CustomSizedBox(width: DBL.twelve.val),
            Radio(
              value: 1,
              groupValue: groupValue,
              onChanged: onNoChanged,
            ),
            CustomText3(
              noLabel,
              style: TS().gRoboto(
                  fontSize: FS.font13.val,
                  fontWeight: FW.w400.val,
                  color: AppColor.matBlack2.val),
            ),
          ],
        );
      },
    );
  }
}
