import 'package:admin_580_tech/application/bloc/role_creation/role_creation_bloc.dart';
import 'package:admin_580_tech/core/custom_snackbar.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/infrastructure/role_creation/role_creation_repository.dart';
import 'package:admin_580_tech/infrastructure/shared_preference/shared_preff_util.dart';
import 'package:admin_580_tech/presentation/role_creation/widgets/custom_check_label.dart';
import 'package:admin_580_tech/presentation/widget/custom_button.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_icon.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_text.dart';
import 'package:admin_580_tech/presentation/widget/custom_text_field.dart';
import 'package:admin_580_tech/presentation/widget/header_view.dart';
import 'package:admin_580_tech/presentation/widget/loader_view.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/custom_debugger.dart';
import '../side_menu/side_menu_page.dart';

@RoutePage()
class RoleCreationPage extends StatefulWidget {
  const RoleCreationPage(
      {super.key,
      @QueryParam('view') this.isView,
      @QueryParam('edit') this.isEdit,
      @QueryParam('role_id') this.roleId});

  /// To do change :- change these two variables to bool for now getting error like " NoSuchMethodError: 'toLowerCase"  when extracting using auto-route
  final String? isView;
  final String? isEdit;
  final String? roleId;

  @override
  State<RoleCreationPage> createState() => _RoleCreationPageState();
}

class _RoleCreationPageState extends State<RoleCreationPage> {
  final TextEditingController _roleController = TextEditingController();
  late RoleCreationBloc roleCreationBloc;
  String adminUserID = "";
  String roleId = "";
  List<String> selectedModules = [];
  bool? _isView;
  bool? _isEdit;

  @override
  void initState() {
    super.initState();
    adminUserID = SharedPreffUtil().getAdminId;

    /// adminUserID = "64a69c032961698d154944ea";
    roleCreationBloc = RoleCreationBloc(RoleCreationRepository());
    roleId =
        autoTabRouter?.currentChild?.queryParams.getString("role_id", "") ?? "";
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
    CustomLog.log("${MediaQuery.of(context).size.width}");
    return _rebuildView();
  }

  BlocProvider<RoleCreationBloc> _rebuildView() {
    return BlocProvider(
      create: (context) {
        if (roleId.isNotEmpty) {
          return roleCreationBloc
            ..add(RoleCreationEvent.viewRole(
                userId: adminUserID, roleId: roleId));
        } else {
          return roleCreationBloc
            ..add(RoleCreationEvent.getModules(
              userId: adminUserID,
            ));
        }
      },
      child: BlocBuilder<RoleCreationBloc, RoleCreationState>(
        builder: (context, state) {
          return state.isLoading
              ? const LoaderView()
              : _bodyView(context, state);
        },
      ),
    );
  }

  Padding _bodyView(BuildContext context, RoleCreationState creationState) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: DBL.fifteen.val),
      child: Column(
        children: [
          HeaderView(
              title: AppString.roleManagement.val, sidePadding: DBL.zero.val),
          CustomSizedBox(
            height: DBL.ten.val,
          ),
          _topView(context, creationState),
          CustomSizedBox(
            height: DBL.fifteen.val,
          ),
          _bottomView(context, creationState),
        ],
      ),
    );
  }

  CustomContainer _topView(
      BuildContext context, RoleCreationState roleCreationState) {
    if (roleCreationState.viewRoleResponse != null) {
      _roleController.text =
          roleCreationState.viewRoleResponse?.data?.name ?? "";
    }
    return CustomContainer.decoration(
      width: MediaQuery.of(context).size.width,
      height: DBL.oneHundredEight.val,
      decoration: BoxDecoration(
          color: AppColor.white.val,
          borderRadius: BorderRadius.circular(DBL.three.val)),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: DBL.twentyFive.val, vertical: DBL.ten.val),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              AppString.role.val,
              style: TS().gRoboto(
                  color: AppColor.label8.val,
                  fontSize: FS.font13.val,
                  fontWeight: FW.w400.val),
            ),
            CustomSizedBox(
              height: DBL.eight.val,
            ),
            CTextField(
              isIgnore: _isView!,
              controller: _roleController,
              width: DBL.fourHundred.val,
            )
          ],
        ),
      ),
    );
  }

  CustomContainer _bottomView(BuildContext context, RoleCreationState state) {
    return CustomContainer.decoration(
      width: MediaQuery.of(context).size.width,
      // height: isXS(context) ? DBL.twoEighty.val : DBL.twoFiftyFive.val,
      decoration: BoxDecoration(
          color: AppColor.white.val,
          borderRadius: BorderRadius.circular(DBL.three.val)),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: DBL.twentyFive.val, vertical: DBL.ten.val),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _bottomView1(context, state),
            CustomSizedBox(
              height: DBL.ten.val,
            ),
            _bottomView2(context, state),
            Container(
              padding: EdgeInsets.only(top: DBL.eighty.val),
              alignment: Alignment.topRight,
              child: _saveButton(state, context),
            )
          ],
        ),
      ),
    );
  }

  _saveButton(RoleCreationState state, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        roleId.isEmpty
            ? CustomButton(
                height: DBL.fortyFive.val,
                minWidth: DBL.oneTwenty.val,
                onPressed: () {
                  autoTabRouter?.setActiveIndex(10);
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
                text: !_isEdit! ? AppString.save.val : AppString.update.val,
                borderRadius: DBL.five.val,
                padding: EdgeInsets.symmetric(
                    horizontal: DBL.fortyFive.val, vertical: DBL.eighteen.val),
                onPressed: () {
                  addAssignIdToList(state);
                  if (_roleController.text.trim().isEmpty) {
                    CSnackBar.showError(context, msg: AppString.emptyRole.val);
                  } else if (selectedModules.isEmpty) {
                    CSnackBar.showError(context,
                        msg: AppString.emptyModule.val);
                  } else {
                    roleCreationBloc.add(RoleCreationEvent.addUpdateRole(
                        roleId: roleId.isEmpty ? null : roleId,
                        userId: adminUserID,
                        role: _roleController.text.trim(),
                        moduleId: selectedModules,
                        isView: state.isView ? 1 : 0,
                        isDelete: state.isDelete ? 1 : 0,
                        isEdit: state.isEdit ? 1 : 0,
                        context: context));
                  }
                },
              )
            : CustomSizedBox.shrink()
      ],
    );
  }

  Column _bottomView1(BuildContext context, RoleCreationState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          AppString.assignModule.val,
          style: TS().gRoboto(
              color: AppColor.label8.val,
              fontSize: FS.font13.val,
              fontWeight: FW.w400.val),
        ),
        CustomSizedBox(
          height: DBL.eight.val,
        ),
        buildChip(state)
      ],
    );
  }

  Column _bottomView2(BuildContext context, RoleCreationState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          AppString.accessTo.val,
          style: TS().gRoboto(
              color: AppColor.label8.val,
              fontSize: FS.font13.val,
              fontWeight: FW.w400.val),
        ),
        CustomSizedBox(
          height: DBL.three.val,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomCheckLabel(
                isIgnoring: _isView!,
                label: AppString.view.val,
                value: state.isView,
                onToggle: (val) {
                  roleCreationBloc.add(RoleCreationEvent.isCheckedView(val));
                }),
            CustomSizedBox(
              width: DBL.eight.val,
            ),
            CustomCheckLabel(
                isIgnoring: _isView!,
                label: AppString.edit.val,
                value: state.isEdit,
                onToggle: (val) {
                  roleCreationBloc.add(RoleCreationEvent.isCheckedEdit(val));
                }),
            CustomSizedBox(
              width: DBL.eight.val,
            ),
            CustomCheckLabel(
                isIgnoring: _isView!,
                label: AppString.delete.val,
                value: state.isDelete,
                onToggle: (val) {
                  roleCreationBloc.add(RoleCreationEvent.isCheckedDelete(val));
                }),
            CustomSizedBox(
              width: DBL.eight.val,
            ),
          ],
        )
      ],
    );
  }

  buildChip(RoleCreationState state) {
    return IgnorePointer(
      ignoring: _isView!,
      child: CustomSizedBox(
        width: MediaQuery.of(context).size.width,
        child: ListView(
          shrinkWrap: true,
          children: [
            Wrap(
              children: List<Widget>.generate(
                  state.moduleResponse?.module?.length ?? 0, (index) {
                var item = state.moduleResponse?.module![index];
                return Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: DBL.six.val, horizontal: DBL.five.val),
                  child: Theme(
                    data: ThemeData(
                      // Define the disabled color for ChoiceChip
                      chipTheme: ChipThemeData(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey.withOpacity(0.3),
                          ),
                          borderRadius: BorderRadius.circular(DBL.six.val),
                        ),
                      ),
                    ),
                    child: ChoiceChip(
                      selectedColor: AppColor.primaryColor.val,
                      backgroundColor: Colors.grey.withOpacity(0.3),
                      labelStyle: TS().gRoboto(
                          color: item!.isSelected
                              ? AppColor.white.val
                              : AppColor.black3.val,
                          fontSize: FS.font14.val),
                      label: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          item.isSelected
                              ? CustomIcon(
                                  icon: Icons.check,
                                  size: DBL.fourteen.val,
                                  color: AppColor.white.val,
                                )
                              : CustomSizedBox.shrink(),
                          CustomSizedBox(
                            width: DBL.five.val,
                          ),
                          CustomText(item.name ?? ""),
                        ],
                      ),
                      selected: item.isSelected,
                      onSelected: (bool selected) {
                        roleCreationBloc.add(RoleCreationEvent.isSelected(
                          module: item,
                        ));
                      },
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  bool isXS(BuildContext context) => MediaQuery.of(context).size.width <= 880;

  void addAssignIdToList(RoleCreationState state) {
    selectedModules.clear();
    state.moduleResponse?.module?.forEach((element) {
      if (element.isSelected) {
        selectedModules.add(element.sId ?? "");
      }
    });
  }
}
