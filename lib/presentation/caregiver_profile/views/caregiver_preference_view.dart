import 'package:admin_580_tech/presentation/widget/custom_listview_builder.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/pets_item.dart';
import 'package:flutter/material.dart';

import '../../../core/enum.dart';
import '../../widget/custom_container.dart';
import '../../widget/row_combo.dart';

class CareGiverPreferenceView extends StatelessWidget {
  CareGiverPreferenceView({Key? key}) : super(key: key);
  List<String> mPets = [
    "Cat",
    "Dog",
  ];

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: EdgeInsets.symmetric(
          horizontal: DBL.twentyFive.val, vertical: DBL.twentyFive.val),
      color: AppColor.white.val,
      child: SingleChildScrollView(
        child: Column(
          children: [
            RowColonCombo.threeEighty(
                label: AppString.howManyExperience.val,
                value: "2-5 Years",
                fontSize: FS.font13PointFive.val),
            CustomSizedBox(
              height: DBL.twenty.val,
            ),
            RowColonCombo.threeEighty(
                label: AppString.serveClientsWithPets.val,
                value: "Yes",
                fontSize: FS.font13PointFive.val),
            CustomSizedBox(
              width: DBL.threeEighty.val,
            ),
            CustomSizedBox(
              height: DBL.twenty.val,
            ),
            RowColonCombo.threeEighty(
                label: AppString.serveHomeWithSmoker.val,
                value: "Yes",
                fontSize: FS.font13PointFive.val),
            CustomSizedBox(
              height: DBL.fourteen.val,
            ),
            petsList(context, MediaQuery.of(context).size),
            CustomSizedBox(
              height: DBL.fourteen.val,
            ),
            RowColonCombo.threeEighty(
                label: AppString.provideTransportationOrRunErrands.val,
                value: "Yes",
                fontSize: FS.font13PointFive.val),
            CustomSizedBox(
              height: DBL.twenty.val,
            )
          ],
        ),
      ),
    );
  }

  Row petsList(BuildContext context, Size size) {
    return Row(
      children: [
        CustomSizedBox(
          width: getWidth(context, size),
        ),
        CustomSizedBox(
          height: DBL.forty.val,
          child: CustomListViewBuilder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: mPets.length,
            itemBuilder: (context, index) =>
                PetItem(name: mPets[index], inOutStatus: index == 0 ? 1 : 2),
          ),
        ),
      ],
    );
  }

  double getWidth(BuildContext context, Size size) {
    return isXs(context)
        ? DBL.twoHundred.val
        : isLg1(context)
            ? DBL.threeEighty.val
            : isLg(context)
                ? size.width * .2
                : DBL.threeEighty.val;
  }

  bool isLg(BuildContext context) => MediaQuery.of(context).size.width <= 1370;

  bool isLg1(BuildContext context) => MediaQuery.of(context).size.width <= 976;

  bool isXs(BuildContext context) => MediaQuery.of(context).size.width <= 760;
}
