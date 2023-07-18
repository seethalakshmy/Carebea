import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/infrastructure/admin_creation/admin_creation_repository.dart';
import 'package:admin_580_tech/presentation/routes/app_router.gr.dart';
import 'package:admin_580_tech/presentation/widget/custom_button.dart';
import 'package:admin_580_tech/presentation/widget/custom_form.dart';
import 'package:admin_580_tech/presentation/widget/custom_padding.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:admin_580_tech/presentation/widget/loader_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/admin_creation/admin_creation_bloc.dart';
import '../../core/custom_debugger.dart';
import '../../core/enum.dart';
import '../../core/properties.dart';
import '../../core/text_styles.dart';
import '../widget/custom_card.dart';
import '../widget/custom_container.dart';
import '../widget/custom_dropdown.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/details_text_field_with_label.dart';
import '../widget/error_view.dart';
import '../widget/header_view.dart';

class AdminCreationPage extends StatefulWidget {
  const AdminCreationPage(
      {Key? key,
      @QueryParam('view') this.isView,
      @QueryParam('edit') this.isEdit,
      @QueryParam('role_id') this.roleId})
      : super(key: key);

  /// To do change :- change these two variables to bool for now getting error like " NoSuchMethodError: 'toLowerCase"  when extracting using auto-route
  final String? isView;
  final String? isEdit;
  final String? roleId;

  @override
  State<AdminCreationPage> createState() => _AdminCreationPageState();
}

class _AdminCreationPageState extends State<AdminCreationPage> {
  final TextEditingController _fNameController = TextEditingController();
  final TextEditingController _lNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();

  final FocusNode _fNameFocusNode = FocusNode();
  final FocusNode _lNameFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _mobileFocusNode = FocusNode();
  late AdminCreationBloc _adminCreationBloc;
  bool isError = true;

  final AutovalidateMode _validateMode = AutovalidateMode.disabled;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _adminCreationBloc = AdminCreationBloc(AdminCreationRepository());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderView(
          title: AppString.adminManagement.val,
        ),
        CustomSizedBox(height: DBL.ten.val),
        _rebuildView(),
      ],
    );
  }

  _rebuildView() {
    return BlocProvider(
      create: (_) => _adminCreationBloc,
      child: _bodyView(context),
    );
  }

  _bodyView(BuildContext context) {
    return BlocBuilder<AdminCreationBloc, AdminCreationState>(
      builder: (context, state) {
        return CustomPadding.symmetric(
          horizontal: DBL.sixteen.val,
          child: CustomCard(
            shape: PR().roundedRectangleBorder(DBL.five.val),
            elevation: DBL.seven.val,
            child: CustomContainer(
                padding: EdgeInsets.symmetric(
                    horizontal: DBL.forty.val, vertical: DBL.eighteen.val),
                child: state.isLoading
                    ? const LoaderView()
                    : state.isError
                        ? ErrorView(
                            isClientError: state.isClientError,
                            errorMessage: state.error)
                        : _createAdminView(state)),
          ),
        );
      },
    );
  }

  _roleDropDown(AdminCreationState state) {
    return CustomSizedBox(
      width: DBL.twoEighty.val,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomText(AppString.role.val,
                  style: TS().gRoboto(
                      fontWeight: FW.w400.val,
                      color: AppColor.label8.val,
                      fontSize: FS.font16.val)),
              CustomPadding.only(
                left: DBL.five.val,
                child: CustomText(
                  AppString.mandatorySymbol.val,
                  style: TS().gRoboto(
                      color: AppColor.red.val, fontSize: FS.font15.val),
                ),
              )
            ],
          ),
          CustomSizedBox(height: DBL.ten.val),
          CustomDropdown<int>(
            isError: state.isDropDownError,
            onChange: (int value, int index) {
              CustomLog.log("val:::${value.toString()}");
            },
            dropdownButtonStyle: DropdownButtonStyle(
              mainAxisAlignment: MainAxisAlignment.start,
              width: DBL.twoEighty.val,
              height: DBL.fortyEight.val,
              elevation: DBL.zero.val,
              padding: EdgeInsets.only(left: DBL.fifteen.val),
              backgroundColor: Colors.white,
              primaryColor: AppColor.white.val,
            ),
            dropdownStyle: DropdownStyle(
              borderRadius: BorderRadius.circular(DBL.zero.val),
              elevation: DBL.two.val,
              color: AppColor.white.val,
              padding: EdgeInsets.all(DBL.five.val),
            ),
            items: [AppString.active.val, AppString.inActive.val]
                .asMap()
                .entries
                .map(
                  (item) => DropdownItem<int>(
                    value: item.key,
                    child: Padding(
                      padding: EdgeInsets.all(DBL.eight.val),
                      child: Text(
                        item.value,
                        style: TS().gRoboto(
                            fontWeight: FW.w500.val,
                            fontSize: FS.font15.val,
                            color: AppColor.columColor2.val),
                      ),
                    ),
                  ),
                )
                .toList(),
            child: CustomText(
              AppString.selectHint.val,
              style: TS().gRoboto(
                  fontWeight: FW.w500.val,
                  fontSize: FS.font15.val,
                  color: AppColor.columColor2.val),
            ),
          ),
        ],
      ),
    );
  }

  _createAdminView(AdminCreationState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          AppString.basicDetails.val,
          style: TS().gRoboto(
              fontSize:
                  Responsive.isWeb(context) ? FS.font18.val : FS.font17.val,
              fontWeight: FW.w500.val,
              color: AppColor.matBlack.val),
        ),
        const CustomSizedBox(height: 20),
        CForm(
          formKey: _formKey,
          autoValidateMode: _validateMode,
          child: Wrap(
            alignment: WrapAlignment.start,
            spacing: 20,
            runSpacing: 20,
            children: [
              CustomSizedBox(
                width: DBL.twoEighty.val,
                child: DetailsTextFieldWithLabel(
                  isMandatory: true,
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
                  isMandatory: true,
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
                  isMandatory: true,
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
                  isMandatory: true,
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
              _roleDropDown(state),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
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
                  CustomSizedBox(width: DBL.twenty.val),
                  CustomButton(
                    height: DBL.fortyFive.val,
                    minWidth: DBL.oneTwenty.val,
                    onPressed: () {
                      isError = false;

                      checkInputData(state);
                    },
                    text: AppString.save.val,
                    color: AppColor.primaryColor.val,
                    textColor: AppColor.white.val,
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  checkInputData(AdminCreationState state) {
    _adminCreationBloc
        .add(const AdminCreationEvent.dropDownErrorDisplay(value: true));

    if (_formKey.currentState!.validate() && !state.isDropDownError) {}
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
