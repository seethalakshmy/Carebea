import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/domain/roles/model/get_role_response.dart';
import 'package:admin_580_tech/infrastructure/admin_creation/admin_creation_repository.dart';
import 'package:admin_580_tech/presentation/admin_creation/widgets/admin_profile_pic.dart';
import 'package:admin_580_tech/presentation/widget/custom_button.dart';
import 'package:admin_580_tech/presentation/widget/custom_form.dart';
import 'package:admin_580_tech/presentation/widget/custom_padding.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:admin_580_tech/presentation/widget/loader_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/admin_creation/admin_creation_bloc.dart';
import '../../application/bloc/admins/admins_bloc.dart';
import '../../core/custom_snackbar.dart';
import '../../core/enum.dart';
import '../../core/properties.dart';
import '../../core/text_styles.dart';
import '../../infrastructure/api_service_s3.dart';
import '../../infrastructure/shared_preference/shared_preff_util.dart';
import '../on_boarding/modules/personal_details/widgets/mobile_number_formatter.dart';
import '../side_menu/side_menu_page.dart';
import '../widget/cached_image.dart';
import '../widget/custom_alert_dialog_widget.dart';
import '../widget/custom_card.dart';
import '../widget/custom_container.dart';
import '../widget/custom_dropdown.dart';
import '../widget/custom_shimmer.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/details_text_field_with_label.dart';
import '../widget/header_view.dart';

@RoutePage()
class AdminCreationPage extends StatefulWidget {
  const AdminCreationPage({
    Key? key,
    @QueryParam('view') this.isView,
    @QueryParam('edit') this.isEdit,
    @QueryParam('id') this.id,
  }) : super(key: key);

  /// To do change :- change these two variables to bool for now getting error like " NoSuchMethodError: 'toLowerCase"  when extracting using auto-route
  final String? isView;
  final String? isEdit;
  final String? id;

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

  final AutovalidateMode _validateMode = AutovalidateMode.disabled;
  final _formKey = GlobalKey<FormState>();
  String adminUserID = "";
  String adminId = "";
  String selectedRole = '';
  String? firstName;

  bool? _isView;

  bool? _isEdit;
  int count = 0;

  @override
  void initState() {
    super.initState();

    _adminCreationBloc = AdminCreationBloc(AdminCreationRepository());
    adminUserID = SharedPreffUtil().getAdminId;
    adminId =
        autoTabRouter?.currentChild?.queryParams.getString("id", "") ?? "";
    if (autoTabRouter!.currentChild!.queryParams
        .getString('view', "")
        .isNotEmpty) {
      _isView = true;
    } else {
      _isView = false;
    }
    if (autoTabRouter!.currentChild!.queryParams
        .getString('edit', "")
        .isNotEmpty) {
      _isEdit = true;
    } else {
      _isEdit = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderView(
          title: _isView!
              ? AppString.viewAdmin.val
              : _isEdit!
                  ? AppString.updateAdmin.val
                  : AppString.createNewAdmin.val,
        ),
        CustomSizedBox(height: DBL.ten.val),
        _rebuildView(),
      ],
    );
  }

  _rebuildView() {
    return BlocProvider(
      create: (_) {
        if (adminId.isNotEmpty) {
          return _adminCreationBloc
            ..add(AdminCreationEvent.viewAdmin(
                userId: adminUserID, adminId: adminId, searchTerm: ''));
        } else {
          return _adminCreationBloc
            ..add(AdminCreationEvent.getRoles(
                userId: adminUserID, searchTerm: ''));
        }
      },
      child: BlocBuilder<AdminCreationBloc, AdminCreationState>(
        builder: (context, state) {
          return !state.isLoading
              ? _bodyView(context, state)
              : const LoaderView();
        },
      ),
    );
  }

  _bodyView(BuildContext context, AdminCreationState state) {
    if (state.viewResponse != null) {
      firstName = state.viewResponse?.data?.firstName ?? "";
      _fNameController.text = firstName ?? '';
      _lNameController.text = state.viewResponse?.data?.lastName ?? "";
      _emailController.text = state.viewResponse?.data?.email ?? "";
      _mobileController.text = state.viewResponse?.data?.phoneNumber ?? "";
      selectedRole = state.viewResponse?.data?.roleId ?? '';
      _adminCreationBloc.profileUrl = state.viewResponse?.data?.profile ?? '';
    }
    return CustomPadding.symmetric(
      horizontal: DBL.sixteen.val,
      child: CustomCard(
        shape: PR().roundedRectangleBorder(DBL.five.val),
        elevation: DBL.seven.val,
        child: CustomContainer(
            padding: EdgeInsets.symmetric(
                horizontal: DBL.forty.val, vertical: DBL.eighteen.val),
            child: _createAdminView(state)),
      ),
    );
  }

  _roleDropDown(AdminCreationState state) {
    List<Result> mRoles = state.rolesResponse?.data?.result ?? [];
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
          CustomDropdown<Result>(
            hideIcon: _isView! ? true : false,
            isError: state.isDropDownError,
            errorMsg: AppString.emptyRole.val,
            onChange: (Result value, int index) {
              _adminCreationBloc
                  .add(AdminCreationEvent.setDropDownValue(value: value));
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
            items: mRoles
                .asMap()
                .entries
                .map(
                  (item) => DropdownItem<Result>(
                    value: item.value,
                    child: Padding(
                      padding: EdgeInsets.all(DBL.eight.val),
                      child: CustomText(
                        item.value.role ?? "",
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
              state.selectedRole != null
                  ? state.selectedRole!.role.toString()
                  : _isView!
                      ? selectedRole
                      : AppString.selectHint.val,
              style: TS().gRoboto(
                  fontWeight: FW.w500.val,
                  fontSize: FS.font15.val,
                  color: AppColor.columColor2.val),
            ),
          )
        ],
      ),
    );
  }

  _profileImageView(BuildContext context, String url) {
    return CachedImage(
      onTap: () {
        showGeneralDialog(
          barrierDismissible: true,
          barrierLabel: "",
          context: context,
          pageBuilder: (BuildContext buildContext, Animation animation,
              Animation secondaryAnimation) {
            return CustomAlertDialogWidget(
                showHeading: false,
                width: 700,
                heading: "",
                child: CachedImage(
                  fit: BoxFit.contain,
                  imgUrl: url,
                ));
          },
        );
      },
      imgUrl: url,
      height: DBL.oneSeventyFive.val,
      width: DBL.twoHundred.val,
      isDetailPage: true,
    );
  }

  _profilePicWidget(AdminCreationState state) {
    return Column(
      children: [
        _adminCreationBloc.state.isLoading
            ? const CustomShimmerWidget.circular(height: 150, width: 150)
            : !_isView!
                ? AdminProfilePictureWidget(
                    adminCreationBloc: _adminCreationBloc,
                    size: Responsive.isWeb(context) ? 180 : 140,
                  )
                : _profileImageView(
                    context, state.viewResponse?.data?.profile ?? ""),
        CustomSizedBox(height: DBL.six.val),
        state.isLoading
            ? CustomShimmerWidget.rectangular(
                height: DBL.twenty.val, width: DBL.twoHundred.val)
            : !_isView!
                ? Center(
                    child: CustomText(
                      AppString.uploadYourProfilePhoto.val,
                      style: TS().gRoboto(
                          fontSize: FS.font14.val,
                          fontWeight: FW.w400.val,
                          color: AppColor.darkGrey.val),
                    ),
                  )
                : const SizedBox.shrink(),
      ],
    );
  }

  Future<void> uploadProfilePicToAwsS3(String folderName, String userId) async {
    _adminCreationBloc.profileUrl = await ApiServiceS3().uploadImage(
        pickedFile: _adminCreationBloc.state.pickedProfilePic!.bytes!,
        format: _adminCreationBloc.state.pickedProfilePic!.name.split('.').last,
        folderName: folderName,
        userId: userId,
        context: context);
    debugPrint('path${_adminCreationBloc.profileUrl + folderName}');
  }

  _createAdminView(AdminCreationState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _profilePicWidget(state),
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
                  isIgnore: _isView!,
                  inputFormatter: [
                    FilteringTextInputFormatter.allow(RegExp("[a-zA-Z., ]"))
                  ],
                  isMandatory: true,
                  labelName: AppString.firstName.val,
                  focusNode: _fNameFocusNode,
                  controller: _fNameController,
                  validator: (value) {
                    if (value?.trim() == null || value!.trim().isEmpty) {
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
                  inputFormatter: [
                    FilteringTextInputFormatter.allow(RegExp("[a-zA-Z., ]"))
                  ],
                  isIgnore: _isView!,
                  isMandatory: true,
                  labelName: AppString.lastName.val,
                  focusNode: _lNameFocusNode,
                  controller: _lNameController,
                  validator: (value) {
                    if (value?.trim() == null || value!.trim().isEmpty) {
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
                  isIgnore: _isView! || _isEdit!,
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
                  isIgnore: _isView! || _isEdit!,
                  inputFormatter: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(10),
                    MobileNumberFormatter(),
                  ],
                  isMandatory: true,
                  labelName: AppString.mobileNumber.val,
                  focusNode: _mobileFocusNode,
                  controller: _mobileController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return AppString.emptyMobile.val;
                    } else if (value.toString().length != 12) {
                      return AppString.validMobile.val;
                    }
                    return null;
                  },
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.number,
                  suffixIcon: const CustomContainer(width: 0),
                ),
              ),
              IgnorePointer(
                ignoring: _isView!,
                child: _roleDropDown(state),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  adminId.isEmpty
                      ? CustomButton(
                          height: DBL.fortyFive.val,
                          minWidth: DBL.oneTwenty.val,
                          onPressed: () {
                            // context.router.navigate(const AdminsRoute());
                          },
                          text: AppString.cancel.val,
                          color: AppColor.white.val,
                          textColor: AppColor.primaryColor.val,
                          borderWidth: 1,
                        )
                      : CustomSizedBox.shrink(),
                  CustomSizedBox(width: DBL.twenty.val),
                  !_isView!
                      ? CustomButton(
                          isLoading: state.isLoadingButton,
                          height: DBL.fortyFive.val,
                          minWidth: DBL.oneTwenty.val,
                          onPressed: () async {
                            firstName = _fNameController.text;
                            _emailController.text =
                                state.viewResponse?.data?.email ?? "";
                            _mobileController.text =
                                state.viewResponse?.data?.phoneNumber ?? "";
                            selectedRole =
                                state.viewResponse?.data?.roleId ?? '';
                            _adminCreationBloc.profileUrl =
                                state.viewResponse?.data?.profile ?? '';
                            if (_adminCreationBloc
                                    .state.pickedProfilePic!.size >
                                0) {
                              await uploadProfilePicToAwsS3(
                                  AppString.profilePicture.val,
                                  SharedPreffUtil().getAdminId);
                            }
                            checkInputData(state);
                          },
                          text: _isEdit!
                              ? AppString.update.val
                              : AppString.save.val,
                          color: AppColor.primaryColor.val,
                          textColor: AppColor.white.val,
                        )
                      : CustomSizedBox.shrink(),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  checkInputData(AdminCreationState state) {
    _adminCreationBloc.add(AdminCreationEvent.dropDownErrorDisplay(
        value: state.selectedRole == null));
    if (_formKey.currentState!.validate() && !state.isDropDownError) {
      if (!_isEdit! && _adminCreationBloc.state.pickedProfilePic?.size == 0) {
        CSnackBar.showError(context, msg: 'Please select a profile picture');
      } else {
        _adminCreationBloc.add(AdminCreationEvent.addAdmin(
            userId: adminUserID,
            roleId: state.selectedRole?.id ?? "",
            context: context,
            firstName: _fNameController.text.trim(),
            lastName: _lNameController.text.trim(),
            email: _emailController.text.trim().toLowerCase(),
            mobile: _mobileController.text.trim(),
            profilePic: _adminCreationBloc.profileUrl));
      }
      if (_isEdit!) {
        _adminCreationBloc.add(AdminCreationEvent.updateAdmin(
            adminId: adminId,
            userId: adminUserID,
            roleId: state.selectedRole?.id ?? "",
            context: context,
            firstName: _fNameController.text.trim(),
            lastName: _lNameController.text.trim(),
            email: _emailController.text.trim().toLowerCase(),
            mobile: _mobileController.text.trim(),
            profilePic: _adminCreationBloc.profileUrl));
      }
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
