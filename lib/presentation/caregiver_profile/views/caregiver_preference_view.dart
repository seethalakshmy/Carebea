import 'package:admin_580_tech/application/bloc/caregiver-profile/caregiver_profile_bloc.dart';
import 'package:admin_580_tech/domain/caregiver_profile/model/caregiver_profile_response.dart';
import 'package:admin_580_tech/presentation/widget/custom_listview_builder.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/pets_item.dart';
import 'package:flutter/material.dart';

import '../../../core/enum.dart';
import '../../widget/custom_container.dart';
import '../../widget/row_combo.dart';

class CareGiverPreferenceView extends StatelessWidget {
  const CareGiverPreferenceView({Key? key, required this.state})
      : super(key: key);
  final CareGiverProfileState state;

  @override
  Widget build(BuildContext context) {
    Preference? preference = state.response?.data?.preference;
    return CustomContainer(
      padding: EdgeInsets.symmetric(
          horizontal: DBL.twentyFive.val, vertical: DBL.twentyFive.val),
      color: AppColor.white.val,
      child: SingleChildScrollView(
        child: Column(
          children: [
            RowColonCombo.threeEighty(
                label: AppString.howManyExperience.val,
                value: preference?.experience ?? "",
                fontSize: FS.font13PointFive.val),
            CustomSizedBox(
              height: DBL.twenty.val,
            ),
            RowColonCombo.threeEighty(
                label: AppString.serveClientsWithPets.val,
                value: preference?.serveWithPets ?? "",
                fontSize: FS.font13PointFive.val),
            CustomSizedBox(
              width: DBL.threeEighty.val,
            ),
            CustomSizedBox(
              height: DBL.twenty.val,
            ),
            RowColonCombo.threeEighty(
                label: AppString.serveHomeWithSmoker.val,
                value: preference?.serveHomeWithSmoker ?? "",
                fontSize: FS.font13PointFive.val),
            CustomSizedBox(
              height: DBL.fourteen.val,
            ),
            petsList(context, MediaQuery.of(context).size, preference),
            CustomSizedBox(
              height: DBL.fourteen.val,
            ),
            RowColonCombo.threeEighty(
                label: AppString.languagesKnown.val,
                value: preference?.languages != null
                    ? preference!.languages!.join(",")
                    : "",
                fontSize: FS.font13PointFive.val),
            CustomSizedBox(
              height: DBL.fourteen.val,
            ),
            RowColonCombo.threeEighty(
                label: AppString.provideTransportationOrRunErrands.val,
                value: preference?.provideTranspotationOrRunErrands ?? "",
                fontSize: FS.font13PointFive.val),
            CustomSizedBox(
              height: DBL.twenty.val,
            )
          ],
        ),
      ),
    );
  }

  Row petsList(BuildContext context, Size size, Preference? preference) {
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
            itemCount: preference?.pets?.length ?? 0,
            itemBuilder: (context, index) {
              Pets pets = preference!.pets![index];
              return PetItem(
                  name: pets.name ?? "", inOutStatus: pets.inOutStatus ?? 0);
            },
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
