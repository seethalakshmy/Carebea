import 'package:admin_580_tech/application/bloc/admins/admins_bloc.dart';
import 'package:admin_580_tech/core/custom_debugger.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/properties.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/domain/admins/model/admin_get_response.dart';
import 'package:admin_580_tech/domain/roles/model/get_role_response.dart';
import 'package:admin_580_tech/infrastructure/admins/admins_repository.dart';
import 'package:admin_580_tech/infrastructure/shared_preference/shared_preff_util.dart';
import 'package:admin_580_tech/presentation/routes/app_router.gr.dart';
import 'package:admin_580_tech/presentation/widget/custom_button.dart';
import 'package:admin_580_tech/presentation/widget/custom_card.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_data_table_2.dart';
import 'package:admin_580_tech/presentation/widget/custom_selection_area.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_svg.dart';
import 'package:admin_580_tech/presentation/widget/empty_view.dart';
import 'package:admin_580_tech/presentation/widget/pagination_view.dart';
import 'package:admin_580_tech/presentation/widget/table_loader_view.dart';
import 'package:admin_580_tech/presentation/widget/table_row_image_view.dart';
import 'package:admin_580_tech/presentation/widget/table_row_view.dart';
import 'package:auto_route/annotations.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/caregivers/model/care_givers.dart';
import '../side_menu/side_menu_page.dart';
import '../widget/custom_alert_delete.dart';
import '../widget/custom_dropdown.dart';
import '../widget/custom_icon.dart';
import '../widget/custom_text.dart';
import '../widget/custom_text_field.dart';
import '../widget/error_view.dart';
import '../widget/header_view.dart';
import '../widget/table_actions_view.dart';
import '../widget/table_column_view.dart';
import '../widget/table_switch_box.dart';

@RoutePage()
class AdminsPage extends StatefulWidget {
  const AdminsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<AdminsPage> createState() => _AdminsPageState();
}

class _AdminsPageState extends State<AdminsPage> {
  List<ResData> mAdmins = [];
  int _totalItems = 1;
  final int _limit = 10;
  int _page = 1;
  int _pageIndex = 0;
  int _start = 0;
  int _end = 10;
  final TextEditingController _searchController = TextEditingController();
  final _searchNode = FocusNode();
  String _adminUserId = "";
  late AdminsBloc _adminsBloc;
  SharedPreffUtil sharedPrefUtil = SharedPreffUtil();
  String? filterId;
  String? roleId;

  @override
  void initState() {
    super.initState();
    _adminUserId = sharedPrefUtil.getAdminId;
    _adminsBloc = AdminsBloc(AdminsRepository());
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    CustomLog.log('width == ${MediaQuery.of(context).size.width}');
    return Column(
      children: [
        HeaderView(
          title: AppString.adminManagement.val,
        ),
        CustomSizedBox(
          height: DBL.twenty.val,
        ),
        _rebuildView(),
      ],
    );
  }

  BlocProvider<AdminsBloc> _rebuildView() {
    return BlocProvider(
      create: (context) => _adminsBloc
        ..add(AdminEvent.getAdmins(
          userId: _adminUserId,
          page: _page,
          limit: _limit,
        )),
      child: _bodyView(),
    );
  }

  _bodyView() {
    return BlocBuilder<AdminsBloc, AdminsState>(
      builder: (_, state) {
        return _cardView(state, context);
      },
    );
  }

  CustomCard _cardView(AdminsState state, BuildContext context) {
    return CustomCard(
      shape: PR().roundedRectangleBorder(DBL.five.val),
      elevation: DBL.seven.val,
      child: CustomContainer(
          padding: EdgeInsets.all(DBL.twenty.val),
          child: state.isLoading
              ? const TableLoaderView()
              : state.isError
                  ? ErrorView(
                      isClientError: state.isClientError,
                      errorMessage: state.error)
                  : _adminssView(context, state)),
    );
  }

  _resetValues() {
    _page = 1;
    _searchController.clear();
    filterId = null;
  }

  _adminssView(BuildContext context, AdminsState state) {
    AdminGetResponse? value = state.getAdminsResponse;
    if (value?.status ?? false) {
      mAdmins.clear();
      if (value?.data?.resData != null && value!.data!.resData!.isNotEmpty) {
        _totalItems = value.data?.totalCount?.floor() ?? 1;
        mAdmins.addAll(value.data?.resData ?? []);
        _updateData();
      }
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        LayoutBuilder(builder: (context, constraints) {
          return _actionView(constraints, context, state);
        }),
        mAdmins.isNotEmpty
            ? Column(
                children: [
                  CustomSizedBox(height: DBL.fifteen.val),
                  CustomSizedBox(
                    height: (_limit + 1) * 48,
                    child: _adminsTable(state, context),
                  ),
                  CustomSizedBox(height: DBL.twenty.val),
                  if (_totalItems > 10) _paginationView()
                ],
              )
            : EmptyView(title: AppString.emptyadmin.val),
      ],
    );
  }

  SingleChildScrollView _actionView(
      BoxConstraints constraints, BuildContext context, AdminsState state) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: ConstrainedBox(
        constraints: BoxConstraints(minWidth: constraints.maxWidth),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                _statusDropDown(context),
                CustomSizedBox(
                  width: DBL.five.val,
                ),
                _rolesDropDown(context, state),
              ],
            ),
            CustomSizedBox(
              width: DBL.ten.val,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _searchField(),
                CustomSizedBox(
                  width: DBL.ten.val,
                ),
                _adminCreate()
              ],
            ),
          ],
        ),
      ),
    );
  }

  CustomButton _adminCreate() {
    return CustomButton(
        onPressed: () {
          autoTabRouter?.navigate(AdminCreationRoute());
        },
        text: AppString.create.val,
        color: AppColor.primaryColor.val,
        height: DBL.fiftyTwo.val,
        borderRadius: DBL.five.val,
        padding: EdgeInsets.symmetric(
            horizontal: DBL.twentyTwo.val, vertical: DBL.ten.val),
        textStyle: TS().gRoboto(
            color: AppColor.white.val,
            fontWeight: FW.w600.val,
            fontSize: FS.font16.val),
        icon: CustomIcon(
          icon: Icons.add,
          size: DBL.twenty.val,
          color: AppColor.white.val,
        ));
  }

  _statusDropDown(BuildContext context) {
    return Row(
      children: [
        CustomText(
          AppString.filter.val,
          style: TS()
              .gRoboto(fontSize: FS.font15.val, color: AppColor.rowColor.val),
        ),
        CustomSizedBox(
          width: DBL.ten.val,
        ),
        CustomDropdown<int>(
          onChange: (int value, int index) {
            CustomLog.log("val:::${value.toString()}");
            filterId = value.toString();
            _getAdminEvent();
          },
          dropdownButtonStyle: DropdownButtonStyle(
            mainAxisAlignment: MainAxisAlignment.start,
            width: DBL.oneForty.val,
            height: Responsive.isMobile(context)
                ? DBL.fortyFive.val
                : DBL.forty.val,
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
            AppString.status.val,
            style: TS().gRoboto(
                fontWeight: FW.w500.val,
                fontSize: FS.font15.val,
                color: AppColor.columColor2.val),
          ),
        ),
        CustomSizedBox(
          width: DBL.ten.val,
        )
      ],
    );
  }

  _rolesDropDown(BuildContext context, AdminsState state) {
    List<Role> mRoles = state.getRolesResponse?.data?.role ?? [];
    return CustomDropdown<Role>(
      onChange: (Role value, int index) {
        CustomLog.log("val:::${value.toString()}");
        roleId = value.id.toString();
        _getAdminEvent();
      },
      dropdownButtonStyle: DropdownButtonStyle(
        mainAxisAlignment: MainAxisAlignment.start,
        width: DBL.oneForty.val,
        height:
            Responsive.isMobile(context) ? DBL.fortyFive.val : DBL.forty.val,
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
            (item) => DropdownItem<Role>(
              value: item.value,
              child: Padding(
                padding: EdgeInsets.all(DBL.eight.val),
                child: Text(
                  item.value.name ?? "",
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
        AppString.role.val,
        style: TS().gRoboto(
            fontWeight: FW.w500.val,
            fontSize: FS.font15.val,
            color: AppColor.columColor2.val),
      ),
    );
  }

  _searchField() {
    return CTextField(
      focusNode: _searchNode,
      width: _isXs(context) ? DBL.threeFifteen.val : DBL.threeHundred.val,
      height: DBL.forty.val,
      controller: _searchController,
      hintText: AppString.search.val,
      hintStyle: TS().gRoboto(fontSize: FS.font15.val, fontWeight: FW.w500.val),
      onSubmitted: (String value) {
        _searchNode.requestFocus();
        _getAdminEvent();
      },
      suffixIcon: InkWell(
        onTap: () {
          _getAdminEvent();
        },
        child: CustomSvg(
          path: IMG.search.val,
          height: DBL.sixteen.val,
          width: DBL.sixteen.val,
        ),
      ),
    );
  }

  _adminsTable(AdminsState state, BuildContext context) {
    return CSelectionArea(
      child: CDataTable2(
        minWidth: DBL.nineFifty.val,
        dividerThickness: DBL.pointThree.val,
        headingRowHeight: DBL.fortyEight.val,
        dataRowHeight: DBL.sixty.val,
        columns: [
          DataColumn2(
            size: ColumnSize.S,
            fixedWidth: DBL.eighty.val,
            label: _tableColumnView(AppString.id.val),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _tableColumnView(
              AppString.firstName.val,
            ),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _tableColumnView(
              AppString.lastName.val,
            ),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _tableColumnView(
              AppString.emailAddress.val,
            ),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _tableColumnView(
              AppString.phoneNumber.val,
            ),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _tableColumnView(
              AppString.role.val,
            ),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _tableColumnView(AppString.status.val),
          ),
          const DataColumn2(
            size: ColumnSize.L,
            label: CustomText(""),
          ),
        ],
        rows: mAdmins.asMap().entries.map((e) {
          _setIndex(e.key);
          var item = e.value;
          return DataRow2(
            cells: [
              DataCell(_tableRowView(_pageIndex.toString())),
              DataCell(TableRowImageView(
                name: item.name?.firstName ?? "",
                imageUrl: item.profile ?? '',
              )),
              DataCell(_tableRowView(item.name?.lastName ?? "")),
              DataCell(_tableRowView(item.email ?? "")),
              DataCell(_tableRowView(item.phoneNumber ?? "")),
              DataCell(_tableRowView(item.role ?? "")),
              DataCell(_tableSwitchBox(item)),
              // DataCell(_statusBox(item.status ?? false)),
              DataCell(TableActions(
                isView: true,
                onViewTap: () {
                  autoTabRouter?.navigate(
                      AdminCreationRoute(isView: "view", id: item.id));
                },
                isDelete: true,
                onDeleteTap: () {
                  _deletePopup(context, item.id ?? "");
                },
                isEdit: true,
                onEditTap: () {
                  autoTabRouter?.navigate(
                      AdminCreationRoute(isEdit: "edit", id: item.id));
                },
              )),
            ],
          );
        }).toList(),
      ),
    );
  }

  TableSwitchBox _tableSwitchBox(ResData item) {
    return TableSwitchBox(
      value: item.status!,
      onToggle: () {
        print(item.status);
        _adminsBloc.add(AdminEvent.changeAdminStatus(
          status: item.status.toString() == 'true' ? "0" : "1",
          userId: item.uniqueId ?? "",
          context: context,
        ));
      },
    );
  }

  TableRowView _tableRowView(String name) {
    return TableRowView(
      text: name,
    );
  }

  TableColumnView _tableColumnView(String name) {
    return TableColumnView(
      text: name,
    );
  }

  _deletePopup(
    BuildContext context,
    String adminID,
  ) {
    showGeneralDialog(
      context: context,
      pageBuilder: (BuildContext buildContext, Animation animation,
          Animation secondaryAnimation) {
        return CustomAlertDelete(
            label: AppString.deleteRole.val,
            onTapYes: () {
              _adminsBloc.add(AdminEvent.adminDelete(
                  adminID: adminID, userID: _adminUserId, context: context));
            });
      },
    );
  }

  _statusBox(bool isActive) {
    return CustomContainer.decoration(
      width: DBL.seventy.val,
      height: DBL.thirty.val,
      padding:
          EdgeInsets.symmetric(vertical: DBL.five.val, horizontal: DBL.ten.val),
      decoration: BoxDecoration(
          color: isActive ? AppColor.green3.val : AppColor.offWhite.val,
          borderRadius: PR().circularRadius(DBL.eight.val)),
      child: CustomText(
        textAlign: TextAlign.center,
        isActive ? AppString.active.val : AppString.inActive.val,
        style: TS().gRoboto(
          fontWeight: FW.w500.val,
          fontSize: FS.font12.val,
          color: isActive ? AppColor.green.val : AppColor.lightGrey6.val,
        ),
      ),
    );
  }

  _setIndex(int index) {
    if (_page == 1) {
      _pageIndex = index + 1;
    } else {
      _pageIndex = ((_page * _limit) - 10) + index + 1;
    }
  }

  _paginationView() {
    final int totalPages = (_totalItems / _limit).ceil();
    return PaginationView(
        page: _page,
        start: _start,
        end: _end,
        totalItems: _totalItems,
        totalPages: totalPages,
        onNextPressed: () {
          if (_page < totalPages) {
            _page = _page + 1;
            _getAdminEvent();
          }
        },
        onItemPressed: (i) {
          _page = i;
          _getAdminEvent();
        },
        onPreviousPressed: () {
          if (_page > 1) {
            _page = _page - 1;
            _getAdminEvent();
          }
        });
  }

  void _updateData() {
    if (_page == 1) {
      _start = 0;
      _end = mAdmins.length < _limit ? mAdmins.length : _limit;
    } else {
      _start = (_page * _limit) - 10;
      _end = _start + mAdmins.length;
    }
  }

  _getAdminEvent() {
    _adminsBloc.add(AdminEvent.getAdmins(
        userId: _adminUserId,
        page: _page,
        limit: _limit,
        status: filterId,
        roleId: roleId,
        searchTerm: _searchController.text.trim().isNotEmpty
            ? _searchController.text.trim()
            : null));
  }

  bool _isXs(context) => MediaQuery.of(context).size.width <= 544;

  bool isLarge(BuildContext context) =>
      MediaQuery.of(context).size.width <= 1236;

  bool isLg(BuildContext context) => MediaQuery.of(context).size.width <= 1370;

  bool isLg1(BuildContext context) => MediaQuery.of(context).size.width <= 976;

  bool isXs(BuildContext context) => MediaQuery.of(context).size.width <= 760;

  bool isXs1(BuildContext context) => MediaQuery.of(context).size.width <= 780;
}