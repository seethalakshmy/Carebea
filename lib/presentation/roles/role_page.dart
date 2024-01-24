import 'package:auto_route/annotations.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/roles/roles_bloc.dart';
import '../../core/custom_debugger.dart';
import '../../core/enum.dart';
import '../../core/properties.dart';
import '../../core/text_styles.dart';
import '../../domain/roles/model/get_role_response.dart';
import '../../infrastructure/roles/roles_repository.dart';
import '../../infrastructure/shared_preference/shared_preff_util.dart';
import '../routes/app_router.gr.dart';
import '../side_menu/side_menu_page.dart';
import '../widget/common_alert_widget.dart';
import '../widget/custom_button.dart';
import '../widget/custom_card.dart';
import '../widget/custom_container.dart';
import '../widget/custom_data_table_2.dart';
import '../widget/custom_icon.dart';
import '../widget/custom_selection_area.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/custom_svg.dart';
import '../widget/custom_text.dart';
import '../widget/custom_text_field.dart';
import '../widget/empty_view.dart';
import '../widget/error_view.dart';
import '../widget/header_view.dart';
import '../widget/loader_view.dart';
import '../widget/pagination_view.dart';
import '../widget/table_actions_view.dart';
import '../widget/table_column_view.dart';
import '../widget/table_loader_view.dart';
import '../widget/table_row_view.dart';

@RoutePage()
class RolesPage extends StatefulWidget {
  const RolesPage({
    Key? key,
  }) : super(key: key);

  @override
  State<RolesPage> createState() => _RolesPageState();
}

class _RolesPageState extends State<RolesPage> {
  List<Result> mRoles = [];
  int _totalItems = 0;
  final int _limit = 10;
  int _page = 1;
  int _pageIndex = 0;
  int _start = 0;
  int _end = 10;
  final TextEditingController _searchController = TextEditingController();
  final _searchNode = FocusNode();
  String _adminUserId = "";
  late RolesBloc _roleBloc;
  SharedPreffUtil sharedPrefUtil = SharedPreffUtil();

  @override
  void initState() {
    super.initState();
    _roleBloc = RolesBloc(RolesRepository());
    if (sharedPrefUtil.getPage != 0) {
      _page = sharedPrefUtil.getPage;
    }
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
    return FutureBuilder(
        future: SharedPreffUtil().init(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return LoaderView();
          }
          _adminUserId = sharedPrefUtil.getAdminId;
          return Column(
            children: [
              HeaderView(
                title: AppString.roleManagement.val,
              ),
              _rebuildView(),
            ],
          );
        });
  }

  BlocProvider<RolesBloc> _rebuildView() {
    return BlocProvider(
      create: (context) => _roleBloc
        ..add(RolesEvent.getRoles(
          userId: _adminUserId,
          page: _page,
          limit: _limit,
          searchTerm: _searchController.text,
        )),
      child: _bodyView(),
    );
  }

  _bodyView() {
    return BlocBuilder<RolesBloc, RolesState>(
      builder: (_, state) {
        return Column(
          children: [
            CustomSizedBox(height: DBL.twenty.val),
            _cardView(state, context),
          ],
        );
      },
    );
  }

  CustomCard _cardView(RolesState state, BuildContext context) {
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
                  : _rolesView(context, state)),
    );
  }

  _rolesView(BuildContext context, RolesState state) {
    GetRoleResponse? value = state.getRolesResponse;
    if (value?.status ?? false) {
      mRoles.clear();
      if (value?.data?.result != null && value!.data!.result!.isNotEmpty) {
        _totalItems = value.data?.totalCount ?? 1;
        mRoles.addAll(value.data?.result ?? []);
        _updateData();
      }
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        LayoutBuilder(builder: (context, constraints) {
          return _actionsView(constraints, context);
        }),
        mRoles.isNotEmpty
            ? Column(
                children: [
                  CustomSizedBox(height: DBL.fifteen.val),
                  CustomSizedBox(
                    height: (_limit + 1) * 48,
                    child: _rolesTable(state, context),
                  ),
                  CustomSizedBox(height: DBL.twenty.val),
                  if (_totalItems > 10) _paginationView()
                ],
              )
            : EmptyView(title: AppString.emptyRoles.val),
      ],
    );
  }

  SingleChildScrollView _actionsView(
      BoxConstraints constraints, BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: ConstrainedBox(
        constraints: BoxConstraints(minWidth: constraints.maxWidth),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _searchField(),
            CustomSizedBox(
              width: DBL.ten.val,
            ),
            _roleCreate(),
          ],
        ),
      ),
    );
  }

  _roleCreate() {
    return sharedPrefUtil.getEditRole
        ? CustomButton(
            onPressed: () {
              autoTabRouter?.navigate(RoleCreationRoute());
            },
            text: AppString.create.val,
            color: AppColor.primaryColor.val,
            height: DBL.fifty.val,
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
            ))
        : CustomSizedBox.shrink();
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
        _page = 1;
        _searchNode.requestFocus();
        _getCareGiverEvent();
      },
      onChanged: (String value) {
        _page = 1;

        // if (_searchController.text == "" || _searchController.text.isEmpty) {
        _getCareGiverEvent();
        // }
      },
      suffixIcon: InkWell(
        onTap: () {
          _getCareGiverEvent();
        },
        child: CustomSvg(
          path: IMG.search.val,
          height: DBL.sixteen.val,
          width: DBL.sixteen.val,
        ),
      ),
    );
  }

  _rolesTable(RolesState state, BuildContext context) {
    if (_page == 1) {
      _start = 0;
      _end = mRoles.length < _limit ? mRoles.length : _limit;
    } else {
      _start = (_page * _limit) - 10;
      _end = _start + mRoles.length;
    }
    return CSelectionArea(
      child: CDataTable2(
        minWidth: DBL.nineFifty.val,
        dividerThickness: DBL.pointThree.val,
        headingRowHeight: DBL.fortyEight.val,
        dataRowHeight: DBL.eighty.val,
        columns: [
          DataColumn2(
            size: ColumnSize.S,
            // fixedWidth: DBL.eighty.val,
            label: _tableColumnView(AppString.slNo.val),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _tableColumnView(
              AppString.role.val,
            ),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _tableColumnView(
              AppString.assignedModule.val,
            ),
          ),
          DataColumn2(
            fixedWidth: DBL.oneTwenty.val,
            label: const CustomText(""),
          ),
        ],
        rows: mRoles.asMap().entries.map((e) {
          _setIndex(e.key);
          var item = e.value;
          List<String> assignedModule = [];
          if (item.permissions != null || item.permissions!.isNotEmpty) {
            for (int i = 0; i < item.permissions!.length; i++) {
              assignedModule.add(item.permissions![i].moduleName ?? "");
            }
          }
          return DataRow2(
            onTap: () {
              autoTabRouter?.navigate(RoleCreationRoute(
                roleId: item.id,
                isView: "view",
              ));
            },
            cells: [
              DataCell(_tableRowView(_pageIndex.toString())),
              DataCell(_tableRowView(item.role ?? "")),
              DataCell(_tableRowView(assignedModule.join(", "))),
              DataCell(TableActions(
                isView: sharedPrefUtil.getViewRole,
                onViewTap: sharedPrefUtil.getViewRole
                    ? () {
                        autoTabRouter?.navigate(RoleCreationRoute(
                          roleId: item.id,
                          isView: "view",
                        ));
                      }
                    : null,
                isEdit: sharedPrefUtil.getEditRole,
                onEditTap: sharedPrefUtil.getEditRole
                    ? () {
                        autoTabRouter?.navigate(
                            RoleCreationRoute(roleId: item.id, isEdit: "edit"));
                      }
                    : null,
                isDelete: sharedPrefUtil.getDeleteRole ? true : false,
                onDeleteTap: sharedPrefUtil.getDeleteRole
                    ? () {
                        _deletePopup(
                          context,
                          item.id ?? "",
                        );
                      }
                    : null,
              )),
            ],
          );
        }).toList(),
      ),
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
            _getCareGiverEvent();
          }
        },
        onItemPressed: (i) {
          _page = i;
          _getCareGiverEvent();
        },
        onPreviousPressed: () {
          if (_page > 1) {
            _page = _page - 1;
            _getCareGiverEvent();
          }
        });
  }

  void _updateData() {
    if (_page == 1) {
      _start = 0;
      _end = mRoles.length < _limit ? mRoles.length : _limit;
    } else {
      _start = (_page * _limit) - 10;
      _end = _start + mRoles.length;
    }
    SharedPreffUtil().setPage = _page;
    CustomLog.log(':::page set $_page ${SharedPreffUtil().getPage}');
  }

  _getCareGiverEvent() {
    _updateData();
    _roleBloc.add(RolesEvent.getRoles(
        userId: _adminUserId,
        page: _searchController.text == '' ? _page : 1,
        limit: _limit,
        searchTerm: _searchController.text.trim().isNotEmpty
            ? _searchController.text.trim()
            : ''));
  }

  _deletePopup(
    BuildContext context,
    String roleId,
  ) {
    showGeneralDialog(
      barrierLabel: "",
      barrierDismissible: true,
      context: context,
      pageBuilder: (BuildContext buildContext, Animation animation,
          Animation secondaryAnimation) {
        return CommonAlertWidget(
            height: 150,
            heading: AppString.delete.val,
            label: AppString.deleteRole.val,
            onTapYes: () {
              print("role id : $roleId\nuser id : $_adminUserId");
              _roleBloc.add(RolesEvent.roleDelete(
                  roleId: roleId, userId: _adminUserId, context: context));
              Navigator.pop(context);
            });
      },
    );
  }

  bool _isXs(context) => MediaQuery.of(context).size.width <= 544;
}
