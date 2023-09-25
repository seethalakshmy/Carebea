import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/presentation/widget/commonImageview.dart';
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
    PrimaryContact? primaryContact =
        state.response?.data?.contacts?.primaryContact;
    SecondaryContact? secondaryContact =
        state.response?.data?.contacts?.secondaryContact;
    PrimaryCarePhysician? primaryCarePhysician =
        state.response?.data?.contacts?.primaryCarePhysician;
    Pharmacy? pharmacy = state.response?.data?.contacts?.pharmacy;
    HomeHealth? homeHealth = state.response?.data?.contacts?.homeHealth;
    OtherCare? otherCare = state.response?.data?.contacts?.otherCare;

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
                child: _primaryEmergencyContactView(primaryContact),
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
                child: _secondaryEmergencyContactView(secondaryContact),
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
                    Expanded(child: _name(primaryCarePhysician?.name)
                        // RowColonCombo.twoHundred(
                        //     label: AppString.name.val,
                        //     value: "no value",
                        //     fontSize: FS.font13PointFive.val),
                        ),
                    !isLg(context)
                        ? Expanded(child: _state(primaryCarePhysician?.state))
                        : CustomSizedBox.shrink(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: _address1(primaryCarePhysician?.address),
                      // RowColonCombo.twoHundred(
                      //     label: AppString.addressLine1.val,
                      //     value: "no value",
                      //     fontSize: FS.font13PointFive.val),
                    ),
                    !isLg(context)
                        ? Expanded(
                            child: _zip(primaryCarePhysician?.zip),
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
                      child: _street(primaryCarePhysician?.street),
                      // RowColonCombo.twoHundred(
                      //     label: AppString.street.val,
                      //     value: "no value",
                      //     fontSize: FS.font13PointFive.val),
                    ),
                    !isLg(context)
                        ? Expanded(
                            child:
                                _phoneNumber(primaryCarePhysician?.phoneNumber),
                          )
                        : CustomSizedBox.shrink(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(child: _city(primaryCarePhysician?.city)
                        // RowColonCombo.twoHundred(
                        //     label: AppString.city.val,
                        //     value: "no value",
                        //     fontSize: FS.font13PointFive.val),
                        ),
                    !isLg(context)
                        ? Expanded(
                            child: CustomSizedBox.shrink(),
                          )
                        : CustomSizedBox.shrink(),
                  ],
                ),
              ),
              isLg(context)
                  ? _physicianContactView(primaryCarePhysician)
                  : CustomSizedBox.shrink(),
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
                    Expanded(child: _name(pharmacy?.name)
                        // RowColonCombo.twoHundred(
                        //     label: AppString.name.val,
                        //     value: "no value",
                        //     fontSize: FS.font13PointFive.val),
                        ),
                    !isLg(context)
                        ? Expanded(
                            child: _state(pharmacy?.state),
                          )
                        : CustomSizedBox.shrink(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(child: _address1(pharmacy?.address)
                        // RowColonCombo.twoHundred(
                        //     label: AppString.addressLine1.val,
                        //     value: "no value",
                        //     fontSize: FS.font13PointFive.val),
                        ),
                    !isLg(context)
                        ? Expanded(
                            child: _zip(pharmacy?.zip),
                          )
                        : CustomSizedBox.shrink(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(child: _street(pharmacy?.street)
                        // RowColonCombo.twoHundred(
                        //     label: AppString.street.val,
                        //     value: "no value",
                        //     fontSize: FS.font13PointFive.val),
                        ),
                    !isLg(context)
                        ? Expanded(
                            child: _phoneNumber(pharmacy?.phoneNumber),
                          )
                        : CustomSizedBox.shrink(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(child: _city(pharmacy?.city)
                        // RowColonCombo.twoHundred(
                        //     label: AppString.city.val,
                        //     value: "no value",
                        //     fontSize: FS.font13PointFive.val),
                        ),
                    !isLg(context)
                        ? Expanded(
                            child: CustomSizedBox.shrink(),
                          )
                        : CustomSizedBox.shrink(),
                  ],
                ),
              ),
              isLg(context)
                  ? _pharmacyContactView(pharmacy)
                  : CustomSizedBox.shrink(),
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
                    Expanded(child: _name(homeHealth?.name)
                        // RowColonCombo.twoHundred(
                        //     label: AppString.name.val,
                        //     value: "no value",
                        //     fontSize: FS.font13PointFive.val),
                        ),
                    !isLg(context)
                        ? Expanded(
                            child: _state(homeHealth?.state),
                          )
                        : CustomSizedBox.shrink(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(child: _address1(homeHealth?.address)
                        // RowColonCombo.twoHundred(
                        //     label: AppString.addressLine1.val,
                        //     value: "no value",
                        //     fontSize: FS.font13PointFive.val),
                        ),
                    !isLg(context)
                        ? Expanded(
                            child: _zip(homeHealth?.zip),
                          )
                        : CustomSizedBox.shrink(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(child: _street(homeHealth?.street)
                        // RowColonCombo.twoHundred(
                        //     label: AppString.street.val,
                        //     value: "no value",
                        //     fontSize: FS.font13PointFive.val),
                        ),
                    !isLg(context)
                        ? Expanded(
                            child: _phoneNumber(homeHealth?.phoneNumber),
                          )
                        : CustomSizedBox.shrink(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(child: _city(homeHealth?.city)
                        // RowColonCombo.twoHundred(
                        //     label: AppString.city.val,
                        //     value: "no value",
                        //     fontSize: FS.font13PointFive.val),
                        ),
                    !isLg(context)
                        ? Expanded(
                            child: CustomSizedBox.shrink(),
                          )
                        : CustomSizedBox.shrink(),
                  ],
                ),
              ),
              isLg(context)
                  ? _homeContactView(homeHealth)
                  : CustomSizedBox.shrink(),
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
                      child: _name(otherCare?.name),
                      // RowColonCombo.twoHundred(
                      //     label: AppString.name.val,
                      //     value: "no value",
                      //     fontSize: FS.font13PointFive.val),
                    ),
                    !isLg(context)
                        ? Expanded(
                            child: _state(otherCare?.state),
                          )
                        : CustomSizedBox.shrink(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(child: _address1(otherCare?.address)
                        // RowColonCombo.twoHundred(
                        //     label: AppString.addressLine1.val,
                        //     value: "no value",
                        //     fontSize: FS.font13PointFive.val),
                        ),
                    !isLg(context)
                        ? Expanded(
                            child: _zip(otherCare?.zip),
                          )
                        : CustomSizedBox.shrink(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(child: _street(otherCare?.street)
                        // RowColonCombo.twoHundred(
                        //     label: AppString.street.val,
                        //     value: "no value",
                        //     fontSize: FS.font13PointFive.val),
                        ),
                    !isLg(context)
                        ? Expanded(
                            child: _phoneNumber(otherCare?.phoneNumber),
                          )
                        : CustomSizedBox.shrink(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(child: _city(otherCare?.city)
                        // RowColonCombo.twoHundred(
                        //     label: AppString.city.val,
                        //     value: "no value",
                        //     fontSize: FS.font13PointFive.val),
                        ),
                    !isLg(context)
                        ? Expanded(
                            child: CustomSizedBox.shrink(),
                          )
                        : CustomSizedBox.shrink(),
                  ],
                ),
              ),
              isLg(context)
                  ? _otherContactView(otherCare)
                  : CustomSizedBox.shrink(),
            ],
          )
        ],
      ),
    );
  }

  RowColonCombo _name(String? value) {
    return RowColonCombo.twoHundred(
        label: AppString.name.val,
        value: value ?? '',
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _address1(String? value) {
    return RowColonCombo.twoHundred(
        label: AppString.addressLine1.val,
        value: value ?? '',
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _street(String? value) {
    return RowColonCombo.twoHundred(
        label: AppString.street.val,
        value: value ?? '',
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _city(String? value) {
    return RowColonCombo.twoHundred(
        label: AppString.city.val,
        value: value ?? '',
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _state(String? value) {
    return RowColonCombo.twoHundred(
        label: AppString.state.val,
        value: value ?? '',
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _zip(String? value) {
    return RowColonCombo.twoHundred(
        label: AppString.zip.val,
        value: value ?? "",
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _phoneNumber(String? value) {
    return RowColonCombo.twoHundred(
        label: AppString.phoneNumber.val,
        value: value ?? '',
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _relationShip(String? value) {
    return RowColonCombo.twoHundred(
        label: AppString.relationship.val,
        value: value ?? '',
        fontSize: FS.font13PointFive.val);
  }

  Column _primaryEmergencyContactView(PrimaryContact? value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _name(value?.name),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _relationShip(value?.relationship),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _phoneNumber(value?.phoneNumber),
        CustomSizedBox(
          height: DBL.six.val,
        ),
      ],
    );
  }

  Column _secondaryEmergencyContactView(SecondaryContact? value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _name(value?.name),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _relationShip(value?.relationship),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        _phoneNumber(value?.phoneNumber),
        CustomSizedBox(
          height: DBL.six.val,
        ),
      ],
    );
  }

  Column _physicianContactView(PrimaryCarePhysician? value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: _state(value?.state),
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: _zip(value?.zip),
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: _phoneNumber(value?.phoneNumber),
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
      ],
    );
  }

  Column _pharmacyContactView(Pharmacy? value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: _state(value?.state),
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: _zip(value?.zip),
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: _phoneNumber(value?.phoneNumber),
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
      ],
    );
  }

  Column _homeContactView(HomeHealth? value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: _state(value?.state),
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: _zip(value?.zip),
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: _phoneNumber(value?.phoneNumber),
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
      ],
    );
  }

  Column _otherContactView(OtherCare? value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: _state(value?.state),
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: _zip(value?.zip),
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: _phoneNumber(value?.phoneNumber),
        ),
        CustomSizedBox(
          height: DBL.six.val,
        ),
      ],
    );
  }

  bool isLg(BuildContext context) => MediaQuery.of(context).size.width <= 1236;
}
