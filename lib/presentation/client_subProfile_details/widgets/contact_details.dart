import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/presentation/widget/commonImageview.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../application/bloc/sub_profile_details/sub_profile_details_bloc.dart';
import '../../../domain/subProfile_details/model/sub_profile_detail_response.dart';
import '../../widget/alert_text_label.dart';
import '../../widget/custom_sizedbox.dart';
import '../../widget/row_combo.dart';

class SubProfileContactDetails extends StatelessWidget {
  const SubProfileContactDetails({Key? key, required this.state})
      : super(key: key);
  final SubProfileDetailState state;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ExpansionTile(
            title: AlertTextLabel(
              AppString.primaryEmergencyContact.val,
              fontSize: 14,
            ),
            leading: CommonImageView(
              svgPath: IMG.primaryEmergency.val,
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: _primaryEmergencyContactView(),
              ),
            ],
          ),
          ExpansionTile(
            title: AlertTextLabel(
              AppString.secondaryEmergencyContact.val,
              fontSize: 14,
            ),
            leading: CommonImageView(
              svgPath: IMG.secondaryEmergency.val,
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: _secondaryEmergencyContactView(),
              )
            ],
          ),
          ExpansionTile(
            title: AlertTextLabel(
              AppString.physicianContact.val,
              fontSize: 14,
            ),
            leading: CommonImageView(
              svgPath: IMG.stethoscope.val,
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: RowColonCombo.twoHundred(
                          label: AppString.name.val,
                          value: "no value",
                          fontSize: FS.font13PointFive.val),
                    ),
                    !isLg(context)
                        ? Expanded(
                            child: _state(),
                          )
                        : CustomSizedBox.shrink(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: RowColonCombo.twoHundred(
                          label: AppString.addressLine1.val,
                          value: "no value",
                          fontSize: FS.font13PointFive.val),
                    ),
                    !isLg(context)
                        ? Expanded(
                            child: _zip(),
                          )
                        : CustomSizedBox.shrink(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: RowColonCombo.twoHundred(
                          label: AppString.street.val,
                          value: "no value",
                          fontSize: FS.font13PointFive.val),
                    ),
                    !isLg(context)
                        ? Expanded(
                            child: _phoneNumber(),
                          )
                        : CustomSizedBox.shrink(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: RowColonCombo.twoHundred(
                          label: AppString.city.val,
                          value: "no value",
                          fontSize: FS.font13PointFive.val),
                    ),
                    !isLg(context)
                        ? Expanded(
                            child: CustomSizedBox.shrink(),
                          )
                        : CustomSizedBox.shrink(),
                  ],
                ),
              ),
              isLg(context) ? _physicianContactView() : CustomSizedBox.shrink(),
            ],
          ),
          ExpansionTile(
            title: AlertTextLabel(
              AppString.pharmacyContact.val,
              fontSize: 14,
            ),
            leading: CommonImageView(
              svgPath: IMG.pill.val,
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: RowColonCombo.twoHundred(
                          label: AppString.name.val,
                          value: "no value",
                          fontSize: FS.font13PointFive.val),
                    ),
                    !isLg(context)
                        ? Expanded(
                            child: _state(),
                          )
                        : CustomSizedBox.shrink(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: RowColonCombo.twoHundred(
                          label: AppString.addressLine1.val,
                          value: "no value",
                          fontSize: FS.font13PointFive.val),
                    ),
                    !isLg(context)
                        ? Expanded(
                            child: _zip(),
                          )
                        : CustomSizedBox.shrink(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: RowColonCombo.twoHundred(
                          label: AppString.street.val,
                          value: "no value",
                          fontSize: FS.font13PointFive.val),
                    ),
                    !isLg(context)
                        ? Expanded(
                            child: _phoneNumber(),
                          )
                        : CustomSizedBox.shrink(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: RowColonCombo.twoHundred(
                          label: AppString.city.val,
                          value: "no value",
                          fontSize: FS.font13PointFive.val),
                    ),
                    !isLg(context)
                        ? Expanded(
                            child: CustomSizedBox.shrink(),
                          )
                        : CustomSizedBox.shrink(),
                  ],
                ),
              ),
              isLg(context) ? _pharmacyContactView() : CustomSizedBox.shrink(),
            ],
          ),
          ExpansionTile(
            title: AlertTextLabel(
              AppString.homeHealth.val,
              fontSize: 14,
            ),
            leading: CommonImageView(
              svgPath: IMG.firstAid.val,
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: RowColonCombo.twoHundred(
                          label: AppString.name.val,
                          value: "no value",
                          fontSize: FS.font13PointFive.val),
                    ),
                    !isLg(context)
                        ? Expanded(
                            child: _state(),
                          )
                        : CustomSizedBox.shrink(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: RowColonCombo.twoHundred(
                          label: AppString.addressLine1.val,
                          value: "no value",
                          fontSize: FS.font13PointFive.val),
                    ),
                    !isLg(context)
                        ? Expanded(
                            child: _zip(),
                          )
                        : CustomSizedBox.shrink(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: RowColonCombo.twoHundred(
                          label: AppString.street.val,
                          value: "no value",
                          fontSize: FS.font13PointFive.val),
                    ),
                    !isLg(context)
                        ? Expanded(
                            child: _phoneNumber(),
                          )
                        : CustomSizedBox.shrink(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: RowColonCombo.twoHundred(
                          label: AppString.city.val,
                          value: "no value",
                          fontSize: FS.font13PointFive.val),
                    ),
                    !isLg(context)
                        ? Expanded(
                            child: CustomSizedBox.shrink(),
                          )
                        : CustomSizedBox.shrink(),
                  ],
                ),
              ),
              isLg(context) ? _homeContactView() : CustomSizedBox.shrink(),
            ],
          ),
          ExpansionTile(
            title: AlertTextLabel(
              AppString.otherCareContact.val,
              fontSize: 14,
            ),
            leading: CommonImageView(
              svgPath: IMG.otherCareContact.val,
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: RowColonCombo.twoHundred(
                          label: AppString.name.val,
                          value: "no value",
                          fontSize: FS.font13PointFive.val),
                    ),
                    !isLg(context)
                        ? Expanded(
                            child: _state(),
                          )
                        : CustomSizedBox.shrink(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: RowColonCombo.twoHundred(
                          label: AppString.addressLine1.val,
                          value: "no value",
                          fontSize: FS.font13PointFive.val),
                    ),
                    !isLg(context)
                        ? Expanded(
                            child: _zip(),
                          )
                        : CustomSizedBox.shrink(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: RowColonCombo.twoHundred(
                          label: AppString.street.val,
                          value: "no value",
                          fontSize: FS.font13PointFive.val),
                    ),
                    !isLg(context)
                        ? Expanded(
                            child: _phoneNumber(),
                          )
                        : CustomSizedBox.shrink(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: RowColonCombo.twoHundred(
                          label: AppString.city.val,
                          value: "no value",
                          fontSize: FS.font13PointFive.val),
                    ),
                    !isLg(context)
                        ? Expanded(
                            child: CustomSizedBox.shrink(),
                          )
                        : CustomSizedBox.shrink(),
                  ],
                ),
              ),
              isLg(context) ? _otherContactView() : CustomSizedBox.shrink(),
            ],
          )
        ],
      ),
    );
  }

  RowColonCombo _name() {
    return RowColonCombo.twoHundred(
        label: AppString.name.val,
        value: "no value",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _state() {
    return RowColonCombo.twoHundred(
        label: AppString.state.val,
        value: "no value",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _zip() {
    return RowColonCombo.twoHundred(
        label: AppString.zip.val,
        value: "no value",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _phoneNumber() {
    return RowColonCombo.twoHundred(
        label: AppString.phoneNumber.val,
        value: "no value",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _relationShip() {
    return RowColonCombo.twoHundred(
        label: AppString.relationship.val,
        value: "no value",
        fontSize: FS.font13PointFive.val);
  }

  Column _primaryEmergencyContactView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _name(),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _relationShip(),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _phoneNumber(),
        CustomSizedBox(
          height: DBL.six.val,
        ),
      ],
    );
  }

  Column _secondaryEmergencyContactView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _name(),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _relationShip(),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _phoneNumber(),
        CustomSizedBox(
          height: DBL.six.val,
        ),
      ],
    );
  }

  Column _physicianContactView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: _state(),
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: _zip(),
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: _phoneNumber(),
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
      ],
    );
  }

  Column _pharmacyContactView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: _state(),
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: _zip(),
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: _phoneNumber(),
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
      ],
    );
  }

  Column _homeContactView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: _state(),
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: _zip(),
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: _phoneNumber(),
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
      ],
    );
  }

  Column _otherContactView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: _state(),
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: _zip(),
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: _phoneNumber(),
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
      ],
    );
  }

  bool isLg(BuildContext context) => MediaQuery.of(context).size.width <= 1236;
}
