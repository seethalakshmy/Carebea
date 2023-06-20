import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/pets_item.dart';
import 'package:admin_580_tech/presentation/widget/rectangle_border.dart';
import 'package:admin_580_tech/presentation/widget/row_combo.dart';
import 'package:flutter/material.dart';

import 'custom_listview_builder.dart';

class ServiceRequestLeftView extends StatelessWidget {
  const ServiceRequestLeftView({
    Key? key,
    required this.serviceRequestID,
    required this.requestedStartDateTime,
    required this.requestedEndDateTime,
    required this.isAdvanceDirective,
    required this.isHavePets,
    required this.isSmoking,
    required this.mPets,
  }) : super(key: key);
  final String serviceRequestID;
  final String requestedStartDateTime;
  final String requestedEndDateTime;
  final String isHavePets;
  final String isSmoking;
  final String isAdvanceDirective;
  final List<String> mPets;
  @override
  Widget build(BuildContext context) {
    return RectangleBorder(
      child: _buildRowCombo(context),
    );
  }

  Column _buildRowCombo(BuildContext context) {
    return Column(
      children: [
        RowColonCombo.threeEighty(
            label: AppString.serviceRequestID.val, value: serviceRequestID),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        RowColonCombo.threeEighty(
            label: AppString.requestedStartDateTime.val,
            value: requestedStartDateTime),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        RowColonCombo.threeEighty(
            label: AppString.requestedEndDateTime.val,
            value: requestedEndDateTime),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        RowColonCombo.threeEighty(
            label: AppString.isSmokerInHouseHold.val, value: isSmoking),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        RowColonCombo.threeEighty(
            label: AppString.doesClientHavePets.val, value: isHavePets),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        petsList(context, MediaQuery.of(context).size),
        CustomSizedBox(
          height: DBL.ten.val,
        ),
        RowColonCombo.threeEighty(
            label: AppString.isAdvanceDirective.val, value: isAdvanceDirective),
      ],
    );
  }

  petsList(BuildContext context, Size size) {
    return LayoutBuilder(builder: (context, constraints) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: ConstrainedBox(
          constraints: BoxConstraints(minWidth: constraints.maxWidth),
          child: Row(
            children: [
              CustomSizedBox(
                width: getWidth(context, size),
              ),
              CustomSizedBox(
                height: DBL.forty.val,
                child: CustomListViewBuilder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: mPets.length,
                  itemBuilder: (context, index) => PetItem(
                      name: mPets[index], inOutStatus: index == 0 ? 1 : 2),
                ),
              ),
            ],
          ),
        ),
      );
    });
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
