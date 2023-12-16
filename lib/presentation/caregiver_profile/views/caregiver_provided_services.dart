import 'package:admin_580_tech/application/bloc/caregiver-profile/caregiver_profile_bloc.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_listview_builder.dart';
import 'package:admin_580_tech/presentation/widget/dot_text_list_item.dart';
import 'package:admin_580_tech/presentation/widget/empty_label_view.dart';
import 'package:flutter/material.dart';

import '../../widget/custom_sizedbox.dart';
import '../../widget/header_view.dart';

class CareGiverProvidedServices extends StatelessWidget {
  const CareGiverProvidedServices({Key? key, required this.state})
      : super(key: key);
  final CareGiverProfileState state;

  @override
  Widget build(BuildContext context) {
    final List<String> basicServices =
        state.response?.data?.services?.basicServices ?? [];
    final List<String> specialServices =
        state.response?.data?.services?.specialServices ?? [];
    return CustomContainer(
      padding: EdgeInsets.symmetric(
          horizontal: DBL.twentyFive.val, vertical: DBL.twentyFive.val),
      color: AppColor.white.val,
      child: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _basicServicesView(basicServices),
            Divider(
              color: AppColor.dividerColor3.val,
            ),
            CustomSizedBox(
              height: DBL.eight.val,
            ),
            _specialServicesView(specialServices),
          ],
        ),
      ),
    );
  }

  _basicServicesView(List<String> services) {
    return Expanded(
      child: Column(
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
          services.isNotEmpty
              ? Wrap(
                  children: List.generate(
                      services.length,
                      (index) => DotTextListItem(
                            isForHorizontalView: true,
                            value: services[index],
                            color: AppColor.label6.val,
                          )),
                )
              // CustomSizedBox(
              //         height: DBL.forty.val,
              //         child: CustomListViewBuilder(
              //             shrinkWrap: true,
              //             scrollDirection: Axis.horizontal,
              //             itemCount: services.length,
              //             itemBuilder: (context, index) => DotTextListItem(
              //                   isForHorizontalView: true,
              //                   value: services[index],
              //                   color: AppColor.label6.val,
              //                 )),
              //       )
              : EmptyLabelView(msg: AppString.noServices.val),
        ],
      ),
    );
  }

  _specialServicesView(List<String> services) {
    return Expanded(
      child: Column(
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
          services.isNotEmpty
              ? Wrap(
                  children: List.generate(
                      services.length,
                      (index) => DotTextListItem(
                            value: services[index],
                            color: AppColor.red.val,
                          )),
                )
              // CustomSizedBox(
              //         height: DBL.forty.val,
              //         child: CustomListViewBuilder(
              //             shrinkWrap: true,
              //             scrollDirection: Axis.horizontal,
              //             itemCount: services.length,
              //             itemBuilder: (context, index) => DotTextListItem(
              //                   isForHorizontalView: true,
              //                   value: services[index],
              //                   color: AppColor.red.val,
              //                 )),
              //       )
              : EmptyLabelView(msg: AppString.noServices.val),
        ],
      ),
    );
  }
}
