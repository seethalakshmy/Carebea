import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/presentation/widget/custom_padding.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:admin_580_tech/presentation/widget/row_combo.dart';
import 'package:flutter/material.dart';

import '../../widget/custom_container.dart';

/// todo need to change to stateless when apply bloc api

class CareGiverReferenceView extends StatefulWidget {
  const CareGiverReferenceView({Key? key}) : super(key: key);

  @override
  State<CareGiverReferenceView> createState() => _CareGiverReferenceViewState();
}

class _CareGiverReferenceViewState extends State<CareGiverReferenceView> {
  final List<Reference> _mReference = [
    Reference(
        isExpanded: false,
        name: "Alex Thomas",
        relationShip: "Colleague",
        address: "Apartment #47",
        city: "321 Grove Street",
        street: "Trenton",
        state: "New Jersey",
        zip: "08601",
        phoneNumber: "18798514789"),
    Reference(
        isExpanded: false,
        name: "Alex Thomas",
        relationShip: "Colleague",
        address: "Apartment #47",
        city: "321 Grove Street",
        street: "Trenton",
        state: "New Jersey",
        zip: "08601",
        phoneNumber: "18798514789"),
    Reference(
        isExpanded: false,
        name: "Alex Thomas",
        relationShip: "Colleague",
        address: "Apartment #47",
        city: "321 Grove Street",
        street: "Trenton",
        state: "New Jersey",
        zip: "08601",
        phoneNumber: "18798514789")
  ];

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      color: AppColor.white.val,
      child: _bodyView(),
    );
  }

  SingleChildScrollView _bodyView() {
    return SingleChildScrollView(
      child: ExpansionPanelList(
          elevation: DBL.one.val,
          expandedHeaderPadding: EdgeInsets.only(
            left: DBL.fifteen.val,
          ),
          dividerColor: AppColor.dividerColor2.val,
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              _mReference[index].isExpanded = !isExpanded;
            });
          },
          children: _mReference.map((e) {
            final int index = _mReference.indexOf(e);
            return ExpansionPanel(
                canTapOnHeader: true,
                backgroundColor: AppColor.white.val,
                isExpanded: e.isExpanded,
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: CustomText(
                      "${AppString.reference.val} ${index + 1}",
                      style: TS().gRoboto(
                          fontWeight: FW.w500.val,
                          fontSize: FS.font15.val,
                          color: AppColor.matBlack5.val),
                    ),
                  );
                },
                body: CustomPadding.only(
                  left: DBL.thirty.val,
                  child: !isLg(context)
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(flex: 2, child: _leftView(e)),
                            Expanded(flex: 3, child: _rightView(e))
                          ],
                        )
                      : Column(
                          children: [
                            _leftView(e),
                            _rightView(e),
                          ],
                        ),
                ));
          }).toList()),
    );
  }

  Column _leftView(Reference e) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RowColonCombo.twoHundred(
            label: AppString.name.val,
            value: e.name ?? "",
            fontSize: FS.font13PointFive.val),
        CustomSizedBox(
          height: DBL.eight.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.relationship.val,
            value: e.relationShip ?? "",
            fontSize: FS.font13PointFive.val),
        CustomSizedBox(
          height: DBL.eight.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.addressLine1.val,
            value: e.address ?? "",
            fontSize: FS.font13PointFive.val),
        CustomSizedBox(
          height: DBL.eight.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.street.val,
            value: e.city ?? "",
            fontSize: FS.font13PointFive.val),
        CustomSizedBox(
          height: DBL.eight.val,
        ),
      ],
    );
  }

  Column _rightView(Reference e) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RowColonCombo.twoHundred(
            label: AppString.state.val,
            value: e.state ?? "",
            fontSize: FS.font13PointFive.val),
        CustomSizedBox(
          height: DBL.eight.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.zip.val,
            value: e.zip ?? "",
            fontSize: FS.font13PointFive.val),
        CustomSizedBox(
          height: DBL.eight.val,
        ),
        RowColonCombo.twoHundred(
            label: AppString.phoneNumber.val,
            value: e.phoneNumber ?? "",
            fontSize: FS.font13PointFive.val),
        CustomSizedBox(
          height: DBL.eight.val,
        ),
      ],
    );
  }

  bool isLg(BuildContext context) => MediaQuery.of(context).size.width <= 1236;
}

/// todo need to change later
class Reference {
  String? name;
  String? relationShip;
  String? address;
  String? city;
  String? street;
  String? state;
  String? zip;
  String? phoneNumber;
  bool isExpanded;

  Reference(
      {required this.name,
      required this.relationShip,
      required this.address,
      required this.city,
      required this.street,
      required this.state,
      required this.zip,
      required this.phoneNumber,
      required this.isExpanded});
}
