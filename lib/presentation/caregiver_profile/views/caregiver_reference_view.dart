import 'package:admin_580_tech/application/bloc/caregiver-profile/caregiver_profile_bloc.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/presentation/widget/custom_padding.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:admin_580_tech/presentation/widget/empty_label_view.dart';
import 'package:admin_580_tech/presentation/widget/row_combo.dart';
import 'package:flutter/material.dart';

import '../../../domain/caregiver_profile/model/caregiver_profile_response.dart';
import '../../widget/custom_container.dart';

/// todo need to change to stateless when apply bloc api

class CareGiverReferenceView extends StatefulWidget {
  const CareGiverReferenceView({Key? key, required this.state})
      : super(key: key);
  final CareGiverProfileState state;

  @override
  State<CareGiverReferenceView> createState() => _CareGiverReferenceViewState();
}

class _CareGiverReferenceViewState extends State<CareGiverReferenceView> {
  List<Reference>? _mReference = [];

  @override
  void initState() {
    super.initState();
    _mReference = widget.state.response?.data?.reference ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      color: AppColor.white.val,
      child: _bodyView(),
    );
  }

  _bodyView() {
    return _mReference!.isNotEmpty
        ? SingleChildScrollView(
            child: ExpansionPanelList(
                elevation: DBL.one.val,
                expandedHeaderPadding: EdgeInsets.only(
                  left: DBL.fifteen.val,
                ),
                dividerColor: AppColor.dividerColor2.val,
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    _mReference![index].isExpanded = !isExpanded;
                  });
                },
                children: _mReference!.map((e) {
                  final int index = _mReference!.indexOf(e);
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
                }).toList()))
        : EmptyLabelView(msg: AppString.noReferences.val);
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
            value: e.relationshipDescription ?? e.relationship ?? '',
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
            value: e.phone ?? "",
            fontSize: FS.font13PointFive.val),
        CustomSizedBox(
          height: DBL.eight.val,
        ),
      ],
    );
  }

  bool isLg(BuildContext context) => MediaQuery.of(context).size.width <= 1236;
}
