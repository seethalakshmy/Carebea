import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/user_managment/user_management_bloc.dart';
import '../../core/enum.dart';
import '../../core/properties.dart';
import '../../core/responsive.dart';
import '../../core/text_styles.dart';
import '../../domain/user_management/model/user_list_response.dart';
import '../../infrastructure/shared_preference/shared_preff_util.dart';
import '../../infrastructure/user_management/users_repository.dart';
import '../routes/app_router.gr.dart';
import '../side_menu/side_menu_page.dart';
import '../widget/cached_image.dart';
import '../widget/custom_card.dart';
import '../widget/custom_container.dart';
import '../widget/custom_data_table_2.dart';
import '../widget/custom_dropdown.dart';
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
import '../widget/table_loader_view.dart';
import '../widget/table_switch_box.dart';

@RoutePage()
class UserManagementPage extends StatefulWidget {
  const UserManagementPage({Key? key}) : super(key: key);

  @override
  State<UserManagementPage> createState() => _UserManagementPageState();
}

class _UserManagementPageState extends State<UserManagementPage> {
  late UserManagementBloc _userBloc;

  List<dynamic> mUserList = [];
  List<int> shimmerList = List.generate(10, (index) => (index));
  int _totalItems = 1;

  int pageIndex = 0;
  int _start = 0;
  int _end = 10;
  final TextEditingController _searchController = TextEditingController();
  String? adminId;

  @override
  void initState() {
    super.initState();
    _userBloc = UserManagementBloc(UsersRepository());
  }

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: SharedPreffUtil().init(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return LoaderView();
          }
          adminId = SharedPreffUtil().getAdminId;

          return Column(
            children: [
              HeaderView(title: AppString.clientsCustomer.val),
              CustomSizedBox(height: DBL.twenty.val),
              _reBuildView(),
            ],
          );
        });
  }

  BlocProvider<UserManagementBloc> _reBuildView() {
    return BlocProvider(
      create: (context) => _userBloc
        ..add(UserManagementEvent.getUsers(
            userId: adminId ?? '',
            page: _userBloc.page.toString(),
            limit: _userBloc.limit.toString(),
            searchTerm: _searchController.text.trim(),
            filterId: null)),
      child: _bodyView(),
    );
  }

  CustomCard _bodyView() {
    return CustomCard(
      shape: PR().roundedRectangleBorder(DBL.eighteen.val),
      elevation: DBL.seven.val,
      child: CustomContainer(
        padding: EdgeInsets.all(DBL.twenty.val),
        child: BlocBuilder<UserManagementBloc, UserManagementState>(
          builder: (context, state) {
            return state.isLoading
                ? const TableLoaderView()
                : state.isError
                    ? ErrorView(isClientError: false, errorMessage: state.error)
                    : _usersView(context, state.response, state);
          },
        ),
      ),
    );
  }

  _usersView(BuildContext context, UserListResponse? value,
      UserManagementState state) {
    if (value?.status ?? false) {
      if (value?.data?.finalResult != null &&
          value!.data!.finalResult!.isNotEmpty) {
        ///todo change later
        _totalItems = value.data?.pagination?.totals ?? 5000;
        mUserList.clear();
        mUserList.addAll(value.data?.finalResult ?? []);
      }
    }
    return mUserList.isNotEmpty
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _statusDropDown(context),
                  _searchField(),
                ],
              ),
              CustomSizedBox(height: DBL.fifteen.val),
              CustomSizedBox(
                height: (_userBloc.limit + 1) * 48,
                child: _usersTable(state, context),
              ),
              CustomSizedBox(height: DBL.twenty.val),
              _paginationView()
            ],
          )
        : EmptyView(title: AppString.noUsersFound.val);
  }

  CTextField _searchField() {
    return CTextField(
      width: DBL.threeFifteen.val,
      height: DBL.forty.val,
      controller: _searchController,
      hintText: AppString.search.val,
      hintStyle: TS().gRoboto(fontSize: FS.font15.val, fontWeight: FW.w500.val),
      onSubmitted: (String value) {
        _userBloc.add(UserManagementEvent.getUsers(
            userId: adminId ?? '',
            page: _userBloc.page.toString(),
            limit: _userBloc.limit.toString(),
            searchTerm: _searchController.text.trim(),
            filterId: null));
      },
      suffixIcon: CustomSvg(
        path: IMG.search.val,
        height: DBL.sixteen.val,
        width: DBL.sixteen.val,
      ),
    );
  }

  CustomDropdown<int> _statusDropDown(BuildContext context) {
    return CustomDropdown<int>(
      onChange: (int value, int index) {
        _userBloc.add(UserManagementEvent.getUsers(
            userId: adminId ?? '',
            page: _userBloc.page.toString(),
            limit: _userBloc.limit.toString(),
            searchTerm: _searchController.text.trim(),
            filterId: value == 1 ? true : false));
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
        elevation: 2,
        color: AppColor.white.val,
        padding: EdgeInsets.all(DBL.five.val),
      ),
      items: [AppString.active.val, AppString.inActive.val]
          .asMap()
          .entries
          .map(
            (item) => DropdownItem<int>(
              value: item.key + 1,
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
    );
  }

  _paginationView() {
    final int totalPages = (_totalItems / _userBloc.limit).ceil();
    return PaginationView(
        page: _userBloc.page,
        totalPages: totalPages,
        end: _end,
        totalItems: _totalItems,
        start: _start,
        onNextPressed: () {
          if (_userBloc.page < totalPages) {
            _userBloc.page = _userBloc.page + 1;
            _userBloc.add(UserManagementEvent.getUsers(
                userId: adminId ?? '',
                page: _userBloc.page.toString(),
                limit: _userBloc.limit.toString(),
                searchTerm: _searchController.text.trim(),
                filterId: null));
            updateData();
          }
        },
        onItemPressed: (i) {
          _userBloc.page = i;
          _userBloc.add(UserManagementEvent.getUsers(
              userId: adminId ?? '',
              page: _userBloc.page.toString(),
              limit: _userBloc.limit.toString(),
              searchTerm: _searchController.text.trim(),
              filterId: null));
          updateData();
        },
        onPreviousPressed: () {
          if (_userBloc.page > 1) {
            _userBloc.page = _userBloc.page - 1;
            _userBloc.add(UserManagementEvent.getUsers(
                userId: adminId ?? '',
                page: _userBloc.page.toString(),
                limit: _userBloc.limit.toString(),
                searchTerm: _searchController.text.trim(),
                filterId: null));
            updateData();
          }
        });
  }

  _usersTable(UserManagementState state, BuildContext context) {
    return CSelectionArea(
      child: CDataTable2(
        minWidth: DBL.nineFifty.val,
        dividerThickness: .3,
        headingRowHeight: DBL.fortyEight.val,
        dataRowHeight: DBL.sixty.val,
        columns: [
          DataColumn2(
            size: ColumnSize.S,
            fixedWidth: DBL.eighty.val,
            label: _columnsView(
                text: AppString.slNo.val, fontWeight: FontWeight.bold),
          ),
          // DataColumn2(
          //   size: ColumnSize.S,
          //   fixedWidth: DBL.eighty.val,
          //   label: _columnsView(
          //       text: AppString.id.val, fontWeight: FontWeight.bold),
          // ),
          DataColumn2(
            fixedWidth: Responsive.isWeb(context)
                ? MediaQuery.of(context).size.width * .17
                : DBL.twoHundred.val,
            label: _columnsView(
                text: AppString.name.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _columnsView(
                text: AppString.emailAddress.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _columnsView(
                text: AppString.phoneNumber.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _columnsView(
                text: AppString.role.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _columnsView(
                text: AppString.status.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            // size: ColumnSize.L,
            fixedWidth: Responsive.isWeb(context)
                ? MediaQuery.of(context).size.width * .1
                : DBL.oneSeventy.val,
            label: const CustomText(""),
          ),
        ],
        rows: mUserList.asMap().entries.map((e) {
          setIndex(e.key);
          var item = e.value;
          return DataRow2(
            cells: [
              DataCell(_rowsView(
                text: pageIndex.toString(),
              )),
              // DataCell(_rowsView(
              //   text: item.userId.toString(),
              // )),
              DataCell(_tableRowImage(
                  "${item.name?.firstName} ${item.name?.lastName}",
                  item.profile ?? "")),
              DataCell(_rowsView(text: item.email ?? "")),
              DataCell(_rowsView(text: item.mobile)),
              DataCell(_rowsView(text: item.role)),
              DataCell(_tableSwitchBox(item)),

              // DataCell(_statusBox(item.isActive ?? false)),
              DataCell(Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: () {
                        autoTabRouter
                            ?.navigate(UserManagementDetailRoute(id: item.id));
                        // autoTabRouter!.setActiveIndex(4,);
                      },
                      child: CustomSvg(
                        path: IMG.eye.val,
                        height: Responsive.isWeb(context)
                            ? DBL.fifteen.val
                            : DBL.twelve.val,
                        width: Responsive.isWeb(context)
                            ? DBL.twenty.val
                            : DBL.eighteen.val,
                      )),
                  CustomSizedBox(
                    width: DBL.twentyThree.val,
                  ),
                  // InkWell(
                  //     onTap: () {},
                  //     child: CustomSvg(
                  //       path: IMG.refresh.val,
                  //       height: Responsive.isWeb(context)
                  //           ? DBL.fifteen.val
                  //           : DBL.twelve.val,
                  //       width: Responsive.isWeb(context)
                  //           ? DBL.twenty.val
                  //           : DBL.eighteen.val,
                  //     )),
                  CustomSizedBox(
                    width: DBL.twentyThree.val,
                  ),
                  // InkWell(
                  //     onTap: () {},
                  //     child: CustomSvg(
                  //       path: IMG.edit.val,
                  //       height: Responsive.isWeb(context)
                  //           ? DBL.fifteen.val
                  //           : DBL.twelve.val,
                  //       width: Responsive.isWeb(context)
                  //           ? DBL.fifteen.val
                  //           : DBL.twelve.val,
                  //     )),
                ],
              )),
            ],
          );
        }).toList(),
      ),
    );
  }

  Widget _tableRowImage(String text, String imgUrl) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(DBL.ten.val),
          child: CachedImage(
              height: DBL.thirty.val, width: DBL.thirty.val, imgUrl: imgUrl),
        ),
        CustomSizedBox(width: DBL.twelve.val),
        Expanded(
          child: CustomText(
            text,
            style: TS().gRoboto(
                fontSize: Responsive.isWeb(context)
                    ? DBL.fourteen.val
                    : DBL.twelve.val,
                fontWeight: FW.w400.val,
                color: AppColor.rowColor.val),
          ),
        ),
      ],
    );
  }

  Widget _rowsView({
    String? text,
  }) {
    return CustomText(
      '$text',
      softWrap: true,
      style: TS().gRoboto(
          fontSize: Responsive.isWeb(context)
              ? DBL.thirteenPointFive.val
              : DBL.twelve.val,
          fontWeight: FW.w400.val,
          color: AppColor.rowColor.val),
      textAlign: TextAlign.start,
    );
  }

  Widget _columnsView(
      {String? text, FontWeight? fontWeight = FontWeight.w600}) {
    return CustomText(
      '$text',
      softWrap: true,
      style: TS().gRoboto(
          fontSize:
              Responsive.isWeb(context) ? DBL.fourteen.val : DBL.twelve.val,
          fontWeight: fontWeight,
          color: AppColor.columColor.val),
      textAlign: TextAlign.center,
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

  setIndex(int index) {
    if (_userBloc.page == 1) {
      pageIndex = index + 1;
    } else {
      pageIndex = ((_userBloc.page * _userBloc.limit) - 10) + index + 1;
    }
  }

  void updateData() {
    if (_userBloc.page == 1) {
      _start = 0;
      _end = mUserList.length < _userBloc.limit
          ? mUserList.length
          : _userBloc.limit;
    } else {
      _start = (_userBloc.page * _userBloc.limit) - 10;
      _end = _start + mUserList.length;
    }
  }

  _tableSwitchBox(FinalResult item) {
    log("rebuilded ${item.status} ${item.name?.firstName}");

    return TableSwitchBox(
      value: item.status!,
      onToggle: () {
        bool status = item.status == true ? false : true;
        _userBloc.add(UserManagementEvent.changeClientStatus(
          userId: item.id ?? '',
          adminId: adminId ?? '',
          status: status,
          context: context,
        ));
      },
    );
  }

  bool isXs(context) => MediaQuery.of(context).size.width <= 560;
}
