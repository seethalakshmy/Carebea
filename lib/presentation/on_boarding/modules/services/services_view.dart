import 'package:admin_580_tech/presentation/on_boarding/widgets/common_padding_widget.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:flutter/material.dart';

import '../../../../core/enum.dart';
import '../../../../core/responsive.dart';
import '../../../../core/text_styles.dart';
import '../../../widget/common_next_or_cancel_buttons.dart';
import '../../../widget/custom_sizedbox.dart';
import '../../../widget/custom_text.dart';
import 'models/service_model.dart';

class ServicesView extends StatefulWidget {
  const ServicesView({Key? key, required this.pageController})
      : super(key: key);
  final PageController pageController;

  @override
  State<ServicesView> createState() => _ServicesViewState();
}

class _ServicesViewState extends State<ServicesView> {
  List<ServiceModel> services = [
    ServiceModel(name: 'Assist w/ wake Up'),
    ServiceModel(name: 'Assist w/ Showering'),
    ServiceModel(name: 'Assist w/ wake Up'),
    ServiceModel(name: 'Assist w/ wake Up'),
    ServiceModel(name: 'Assist w/ Showering'),
    ServiceModel(name: 'Assist w/ Showering'),
    ServiceModel(name: 'Assist w/ wake Up'),
    ServiceModel(name: 'Assist w/ wake Up'),
    ServiceModel(name: 'Assist w/ wake Up'),
    ServiceModel(name: 'Assist w/ wake Up'),
    // Add more services as needed
  ];

  @override
  Widget build(BuildContext context) {
    return CommonPaddingWidget(
      child: CustomContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _topArea(context),
            CustomSizedBox(height: DBL.twenty.val),
            _listView(),
            CommonNextOrCancelButtons(
              leftButtonName: AppString.back.val,
              rightButtonName: AppString.next.val,
              onLeftButtonPressed: () {
                widget.pageController
                    .jumpToPage(widget.pageController.page!.toInt() - 1);
              },
              onRightButtonPressed: () {
                widget.pageController
                    .jumpToPage(widget.pageController.page!.toInt() + 1);
              },
            )
          ],
        ),
      ),
    );
  }

  _topArea(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSizedBox(height: DBL.ten.val),
        CustomText(
          AppString.services.val,
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
        CustomText(
          AppString.selectAllServices.val,
          softWrap: true,
          style: TS().gRoboto(
              fontSize: Responsive.isWeb(context)
                  ? DBL.sixteen.val
                  : DBL.fourteen.val,
              fontWeight: FW.w400.val,
              color: AppColor.black.val),
          textAlign: TextAlign.start,
        ),
        CustomSizedBox(height: DBL.ten.val),
        CustomContainer(
          padding: const EdgeInsets.only(left: 10),
          alignment: Alignment.centerLeft,
          height: 40,
          width: double.infinity,
          color: AppColor.darkGreen.val,
          child: CustomText(
            AppString.services.val,
            softWrap: true,
            style: TS().gRoboto(
                fontSize: Responsive.isWeb(context)
                    ? DBL.nineteen.val
                    : DBL.sixteen.val,
                fontWeight: FW.w400.val,
                color: AppColor.white.val),
            textAlign: TextAlign.start,
          ),
        )
      ],
    );
  }

  _listView() {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return CustomContainer(
          height: DBL.one.val,
          color: AppColor.lightGrey.val,
        );
      },
      shrinkWrap: true,
      itemCount: services.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Row(
            children: [
              Expanded(
                  child:
                      Text(services[index].name)), // Service name on the left
              Checkbox(
                activeColor: AppColor.primaryColor.val,
                fillColor: MaterialStateProperty.all(AppColor.primaryColor.val),
                checkColor: AppColor.white.val,
                value: services[index].selected,
                onChanged: (value) {
                  setState(() {
                    services[index].selected = value ?? false;
                  });
                },
              ), // Checkbox on the right
            ],
          ),
        );
      },
    );
  }
}
