import 'package:admin_580_tech/application/bloc/caregiver_creation/caregiver_creation_bloc.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/presentation/routes/app_router.gr.dart';
import 'package:admin_580_tech/presentation/widget/custom_button.dart';
import 'package:admin_580_tech/presentation/widget/custom_form.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/enum.dart';
import '../../core/properties.dart';
import '../../core/text_styles.dart';
import '../widget/custom_card.dart';
import '../widget/custom_container.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/custom_text_field.dart';
import '../widget/header_view.dart';

class CaregiverCreationPage extends StatefulWidget {
  const CaregiverCreationPage({Key? key}) : super(key: key);

  @override
  State<CaregiverCreationPage> createState() => _CaregiverCreationPageState();
}

class _CaregiverCreationPageState extends State<CaregiverCreationPage> {
  late CaregiverCreationBloc _creationBloc;

  final TextEditingController _fNameController = TextEditingController();
  final TextEditingController _lNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();

  final FocusNode _fNameFocusNode = FocusNode();
  final FocusNode _lNameFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _mobileFocusNode = FocusNode();

  AutovalidateMode _validateMode = AutovalidateMode.disabled;
  final _formKey = GlobalKey<FormState>();

  String selectedDate = "";

  @override
  void initState() {
    super.initState();
    _creationBloc = CaregiverCreationBloc();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderView(
          title: AppString.createNew.val,
        ),
        CustomSizedBox(height: DBL.twenty.val),
        _rebuildView(),
      ],
    );
  }

  BlocProvider<CaregiverCreationBloc> _rebuildView() {
    return BlocProvider(
      create: (context) =>
          _creationBloc..add(const CaregiverCreationEvent.createCaregiver()),
      child: _bodyView(),
    );
  }

  _bodyView() {
    return BlocBuilder<CaregiverCreationBloc, CaregiverCreationState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        state.whenOrNull(() => _validateMode = AutovalidateMode.disabled);
        return CustomCard(
          shape: PR().roundedRectangleBorder(DBL.eighteen.val),
          elevation: DBL.seven.val,
          child: CustomContainer(
            width: MediaQuery.of(context).size.width * 0.8,
            padding: const EdgeInsets.all(20),
            child: _createCaregiverView(),
          ),
        );
      },
    );
  }

  /*loaderView() {
    return CustomSizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomText3(
                Strings.recent.trim(),
                style: TS().style(
                  fontSize: FS.font18.val,
                  fontWeight: FW.bold.val,
                ),
              ),
              CustomSizedBox(height: DBL.ten.val),
              CustomSizedBox(
                  height: 950,
                  child: Shimmer.fromColors(
                    // baseColor: Colors.grey[400]!,
                    // highlightColor: Colors.grey[300]!,
                    baseColor: AppColor.rowBackgroundColor.val,
                    highlightColor: AppColor.rowBackgroundColor.val,
                    child: Container(),
                  ))
            ]));
  }*/

  _createCaregiverView() {
    return Column(
      crossAxisAlignment: Responsive.isWeb(context)
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      children: [
        CustomText(
          AppString.basicDetails.val,
          style: TS().gRoboto(
              fontSize:
                  Responsive.isWeb(context) ? FS.font18.val : FS.font15.val,
              fontWeight: FW.w500.val,
              color: AppColor.matBlack.val),
        ),
        const CustomSizedBox(height: 20),
        CForm(
          formKey: _formKey,
          autoValidateMode: _validateMode,
          child: Wrap(
            alignment:
                Responsive.isMobile(context) || Responsive.isTablet(context)
                    ? WrapAlignment.center
                    : WrapAlignment.start,
            spacing: 20,
            runSpacing: 20,
            children: [
              CustomSizedBox(
                width: DBL.twoEighty.val,
                child: _caregiverDetailsItem(
                  AppString.firstName.val,
                  _fNameFocusNode,
                  _fNameController,
                  (value) {
                    if (value == null || value.isEmpty) {
                      return AppString.emptyFName.val;
                    }
                    return null;
                  },
                  TextInputAction.next,
                  TextInputType.name,
                  const CustomContainer(width: 0),
                ),
              ),
              CustomSizedBox(
                width: DBL.twoEighty.val,
                child: _caregiverDetailsItem(
                  AppString.lastName.val,
                  _lNameFocusNode,
                  _lNameController,
                  (value) {
                    if (value == null || value.isEmpty) {
                      return AppString.emptyLName.val;
                    }
                    return null;
                  },
                  TextInputAction.next,
                  TextInputType.name,
                  const CustomContainer(width: 0),
                ),
              ),
              CustomSizedBox(
                width: DBL.twoEighty.val,
                child: _caregiverDetailsItem(
                  AppString.emailAddress.val,
                  _emailFocusNode,
                  _emailController,
                  (value) {
                    if (value == null || value.isEmpty) {
                      return AppString.emptyEmail.val;
                    } else if (!RegExp(
                            r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                        .hasMatch(value)) {
                      return AppString.validEmail.val;
                    }
                    return null;
                  },
                  TextInputAction.next,
                  TextInputType.text,
                  const CustomContainer(width: 0),
                ),
              ),
              CustomSizedBox(
                width: DBL.twoEighty.val,
                child: _caregiverDetailsItem(
                  AppString.mobileNumber.val,
                  _mobileFocusNode,
                  _mobileController,
                  (value) {
                    if (value == null || value.isEmpty) {
                      return AppString.emptyMobile.val;
                    } else if (value.toString().length != 10) {
                      return AppString.validMobile.val;
                    }
                    return null;
                  },
                  TextInputAction.done,
                  TextInputType.number,
                  const CustomContainer(width: 0),
                ),
              ),
              Row(
                mainAxisAlignment: Responsive.isWeb(context)
                    ? MainAxisAlignment.end
                    : MainAxisAlignment.center,
                children: [
                  CustomButton(
                    height: 45,
                    minWidth: 120,
                    onPressed: () {
                      context.router.navigate(CareGiversRoute());
                    },
                    text: AppString.cancel.val,
                    color: AppColor.white.val,
                    textColor: AppColor.primaryColor.val,
                    borderWidth: 1,
                  ),
                  const CustomSizedBox(width: 20),
                  CustomButton(
                    height: 45,
                    minWidth: 120,
                    onPressed: () {
                      checkInputData();
                    },
                    text: AppString.save.val,
                    color: AppColor.primaryColor.val,
                    textColor: AppColor.white.val,
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Row _labelText(String labelName) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomText(labelName,
            style: TS().gRoboto(
                fontWeight: FW.w400.val,
                color: AppColor.label.val,
                fontSize: FS.font16.val)),
        CustomText(
          "*",
          style: TS().gRoboto(color: AppColor.error.val),
        )
      ],
    );
  }

  CTextField _textFormField(
    FocusNode focusNode,
    TextEditingController controller,
    FormFieldValidator<String> validator,
    TextInputAction textInputAction,
    TextInputType textInputType,
    Widget sufficsIcon,
  ) {
    return CTextField(
      suffixIcon: sufficsIcon,
      focusNode: focusNode,
      width: DBL.twoEighty.val,
      height: DBL.forty.val,
      onChanged: (String value) {},
      keyBoardType: textInputType,
      textInputAction: textInputAction,
      controller: controller,
      validator: validator,
    );
  }

  _caregiverDetailsItem(
    String labelName,
    FocusNode focusNode,
    TextEditingController controller,
    FormFieldValidator<String> validator,
    TextInputAction textInputAction,
    TextInputType textInputType,
    Widget sufficsIcon,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _labelText(labelName),
        _textFormField(focusNode, controller, validator, textInputAction,
            textInputType, sufficsIcon)
      ],
    );
  }

  checkInputData() {
    if (_validateMode != AutovalidateMode.always) {
      _creationBloc.add(const CaregiverCreationEvent.submit());
    }
    if (_formKey.currentState!.validate()) {
      setState(() {
        context.router.navigate(const OnboardingRoute());
      });
    }
  }

  @override
  void dispose() {
    _fNameController.dispose();
    _lNameController.dispose();
    _emailController.dispose();
    _mobileController.dispose();
    _fNameFocusNode.dispose();
    _lNameFocusNode.dispose();
    _emailFocusNode.dispose();
    _mobileFocusNode.dispose();
    super.dispose();
  }
}
