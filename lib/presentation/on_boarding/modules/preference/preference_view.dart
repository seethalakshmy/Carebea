import 'package:admin_580_tech/presentation/on_boarding/widgets/common_padding_widget.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:flutter/material.dart';

import '../../../../core/enum.dart';
import '../../../../core/responsive.dart';
import '../../../../core/text_styles.dart';
import '../../../widget/custom_sizedbox.dart';
import '../../../widget/custom_text.dart';

class PreferenceView extends StatefulWidget {
  const PreferenceView({Key? key}) : super(key: key);

  @override
  State<PreferenceView> createState() => _PreferenceViewState();
}

class _PreferenceViewState extends State<PreferenceView> {
  @override
  Widget build(BuildContext context) {
    return CommonPaddingWidget(
        child: CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _topArea(context),
          _experienceWidget(),
          CustomSizedBox(height: DBL.twenty.val),
          _smokerWidget(),
          CustomSizedBox(height: DBL.twenty.val),
          _transportationWidget(),
          CustomSizedBox(height: DBL.twenty.val),
          _petsWidget(),
          CustomSizedBox(height: DBL.twenty.val),
          _knownLanguagesWidget()
        ],
      ),
    ));
  }

  _topArea(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSizedBox(height: DBL.ten.val),
        CustomText(
          AppString.preference.val,
          softWrap: true,
          style: TS().gRoboto(
              fontSize: Responsive.isWeb(context)
                  ? DBL.nineteen.val
                  : DBL.sixteen.val,
              fontWeight: FW.w500.val,
              color: AppColor.primaryColor.val),
          textAlign: TextAlign.start,
        ),
        CustomSizedBox(height: DBL.fifteen.val),
        CustomContainer(
          width: MediaQuery.of(context).size.width * 0.8,
          height: DBL.one.val,
          color: AppColor.lightGrey.val,
        ),
        CustomSizedBox(height: DBL.ten.val),
      ],
    );
  }

  _experienceWidget() {
    int experiance = 1;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          AppString.howManyExperience.val,
          style: TS().gRoboto(fontSize: FS.font15.val, fontWeight: FW.w400.val),
        ),
        CustomSizedBox(height: DBL.ten.val),
        Row(
          children: [
            Radio(value: 0, groupValue: experiance, onChanged: (val) {}),
            CustomText(
              AppString.lessThanAYear.val,
              style: TS().gRoboto(
                fontSize: FS.font13.val,
                fontWeight: FW.w400.val,
                color: AppColor.matBlack2.val,
              ),
            ),
            CustomSizedBox(width: DBL.twelve.val),
            Radio(value: 1, groupValue: experiance, onChanged: (val) {}),
            CustomText(
              AppString.oneToTwoYear.val,
              style: TS().gRoboto(
                fontSize: FS.font13.val,
                fontWeight: FW.w400.val,
                color: AppColor.matBlack2.val,
              ),
            ),
            CustomSizedBox(width: DBL.twelve.val),
            Radio(value: 2, groupValue: experiance, onChanged: (val) {}),
            CustomText(
              AppString.twoToFiveYear.val,
              style: TS().gRoboto(
                fontSize: FS.font13.val,
                fontWeight: FW.w400.val,
                color: AppColor.matBlack2.val,
              ),
            ),
            CustomSizedBox(width: DBL.twelve.val),
            Radio(value: 3, groupValue: experiance, onChanged: (val) {}),
            CustomText(
              AppString.fiveAndMore.val,
              style: TS().gRoboto(
                fontSize: FS.font13.val,
                fontWeight: FW.w400.val,
                color: AppColor.matBlack2.val,
              ),
            ),
          ],
        )
      ],
    );
  }

  _smokerWidget() {
    return _yesOrNoWidgetWithTitle(
        AppString.serveHomeWithSmoker.val, 0, (val) {});
  }

  _transportationWidget() {
    return _yesOrNoWidgetWithTitle(
        AppString.provideTransportationOrRunErrands.val, 0, (val) {});
  }

  _petsWidget() {
    return _yesOrNoWidgetWithTitle(
        AppString.serveClientsWithPets.val, 1, (val) {});
  }

  _knownLanguagesWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          AppString.knownLanguages.val,
          style: TS().gRoboto(fontSize: FS.font15.val, fontWeight: FW.w400.val),
        ),
        CustomSizedBox(height: DBL.ten.val),
      ],
    );
  }

  _yesOrNoWidgetWithTitle(
      String question, int groupValue, Function(int?) onButtonChanged) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          question,
          style: TS().gRoboto(fontSize: FS.font15.val, fontWeight: FW.w400.val),
        ),
        CustomSizedBox(height: DBL.ten.val),
        Row(
          children: [
            Radio(value: 0, groupValue: groupValue, onChanged: onButtonChanged),
            CustomText(
              AppString.yes.val,
              style: TS().gRoboto(
                fontSize: FS.font13.val,
                fontWeight: FW.w400.val,
                color: AppColor.matBlack2.val,
              ),
            ),
            CustomSizedBox(width: DBL.twelve.val),
            Radio(value: 1, groupValue: groupValue, onChanged: onButtonChanged),
            CustomText(
              AppString.no.val,
              style: TS().gRoboto(
                fontSize: FS.font13.val,
                fontWeight: FW.w400.val,
                color: AppColor.matBlack2.val,
              ),
            ),
          ],
        )
      ],
    );
  }
}
