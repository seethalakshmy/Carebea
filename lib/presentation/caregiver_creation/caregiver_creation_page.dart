import 'package:admin_580_tech/application/bloc/caregiver_creation/caregiver_creation_bloc.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/infrastructure/caregiver_creation/caregiver_creation_repository.dart';
import 'package:admin_580_tech/presentation/caregiver_creation/widgets/details_text_field_with_label.dart';
import 'package:admin_580_tech/presentation/routes/app_router.gr.dart';
import 'package:admin_580_tech/presentation/widget/custom_button.dart';
import 'package:admin_580_tech/presentation/widget/custom_form.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/form_validation/form_validation_bloc.dart';
import '../../core/enum.dart';
import '../../core/properties.dart';
import '../../core/text_styles.dart';
import '../../infrastructure/shared_preference/shared_preff_util.dart';
import '../widget/common_button_loader_widget.dart';
import '../widget/custom_card.dart';
import '../widget/custom_container.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/custom_text_field.dart';
import '../widget/header_view.dart';

@RoutePage()
class CaregiverCreationPage extends StatefulWidget {
  const CaregiverCreationPage({Key? key}) : super(key: key);

  @override
  State<CaregiverCreationPage> createState() => _CaregiverCreationPageState();
}

class _CaregiverCreationPageState extends State<CaregiverCreationPage> {
  late CaregiverCreationBloc _creationBloc;
  final FormValidationBloc _validationBloc = FormValidationBloc();

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
    _creationBloc = CaregiverCreationBloc(CaregiverCreationRepository());
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

  MultiBlocProvider _rebuildView() {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => FormValidationBloc()),
      BlocProvider(
          create: (context) =>
              CaregiverCreationBloc(CaregiverCreationRepository())),
    ], child: _bodyView());
  }

  _bodyView() {
    return BlocConsumer<CaregiverCreationBloc, CaregiverCreationState>(
      listener: (context, listenerState) {
        final router = context.router;

        return listenerState.failureOrSuccessOption.fold(
          () {},
          (some) => some.fold(
            (l) {},
            (r) async {
              if (r.status!) {
                SharedPreffUtil().setUserId = r.data?.id ?? "";
                router.navigate(const OnboardingRoute());
              } else {}
            },
          ),
        );
      },
      buildWhen: (previous, current) => previous != current,
      bloc: _creationBloc,
      builder: (context, creationState) {
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
                child: DetailsTextFieldWithLabel(
                  labelName: AppString.firstName.val,
                  focusNode: _fNameFocusNode,
                  controller: _fNameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return AppString.emptyFName.val;
                    }
                    return null;
                  },
                  textInputAction: TextInputAction.next,
                  textInputType: TextInputType.name,
                  suffixIcon: const CustomContainer(width: 0),
                ),
              ),
              CustomSizedBox(
                width: DBL.twoEighty.val,
                child: DetailsTextFieldWithLabel(
                  labelName: AppString.lastName.val,
                  focusNode: _lNameFocusNode,
                  controller: _lNameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return AppString.emptyLName.val;
                    }
                    return null;
                  },
                  textInputAction: TextInputAction.next,
                  textInputType: TextInputType.name,
                  suffixIcon: const CustomContainer(width: 0),
                ),
              ),
              CustomSizedBox(
                width: DBL.twoEighty.val,
                child: DetailsTextFieldWithLabel(
                  labelName: AppString.emailAddress.val,
                  focusNode: _emailFocusNode,
                  controller: _emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return AppString.emptyEmail.val;
                    } else if (!RegExp(
                            r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                        .hasMatch(value)) {
                      return AppString.validEmail.val;
                    }
                    return null;
                  },
                  textInputAction: TextInputAction.next,
                  textInputType: TextInputType.text,
                  suffixIcon: const CustomContainer(width: 0),
                ),
              ),
              CustomSizedBox(
                width: DBL.twoEighty.val,
                child: DetailsTextFieldWithLabel(
                  labelName: AppString.mobileNumber.val,
                  focusNode: _mobileFocusNode,
                  controller: _mobileController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return AppString.emptyMobile.val;
                    } else if (value.toString().length != 10) {
                      return AppString.validMobile.val;
                    }
                    return null;
                  },
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.number,
                  suffixIcon: const CustomContainer(width: 0),
                ),
              ),
              BlocBuilder<FormValidationBloc, FormValidationState>(
                bloc: _validationBloc,
                builder: (context, state) {
                  return Row(
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
                      _creationBloc.state.isLoading
                          ? const CommonButtonLoaderWidget()
                          : CustomButton(
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
                  );
                },
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
      _validationBloc.add(const FormValidationEvent.submit());
    }
    if (_formKey.currentState!.validate()) {
      _creationBloc.add(CaregiverCreationEvent.createCaregiver(
          firstName: _fNameController.text.trim(),
          lastName: _lNameController.text.trim(),
          email: _emailController.text.trim(),
          mobileNo: _mobileController.text.trim()));
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
