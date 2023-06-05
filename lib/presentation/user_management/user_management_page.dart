import 'package:admin_580_tech/application/bloc/user_managment/user_management_bloc.dart';
import 'package:admin_580_tech/infrastructure/user_management/users_repository.dart';
import 'package:admin_580_tech/presentation/widget/custom_dropdown.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterx/flutterx.dart';
import 'package:number_paginator/number_paginator.dart';
import 'package:shimmer/shimmer.dart';

import '../../core/enum.dart';
import '../../core/properties.dart';
import '../../core/responsive.dart';
import '../../core/text_styles.dart';
import '../../domain/user_management/model/user_response.dart';
import '../../domain/user_management/model/users.dart';
import '../widget/cached_image.dart';
import '../widget/custom_align.dart';
import '../widget/custom_card.dart';
import '../widget/custom_container.dart';
import '../widget/custom_data_table_2.dart';
import '../widget/custom_expanded.dart';
import '../widget/custom_icon.dart';
import '../widget/custom_material_button.dart';
import '../widget/custom_selection_area.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/custom_svg.dart';
import '../widget/custom_text.dart';
import '../widget/custom_text_field.dart';
import '../widget/empty_view.dart';
import '../widget/error_view.dart';
import '../widget/header_view.dart';

class UserManagementPage extends StatefulWidget {
  const UserManagementPage({Key? key}) : super(key: key);

  @override
  State<UserManagementPage> createState() => _UserManagementPageState();
}

class _UserManagementPageState extends State<UserManagementPage> {
  late UserManagementBloc _userBloc;

  List<Users> mUserList = [];
  List<int> shimmerList = List.generate(10, (index) => (index));
  int _totalItems = 1;
  int _page = 1;
  final int _limit = 10;
  int pageIndex = 0;
  int _start = 0;
  int _end = 10;
  final TextEditingController _searchController = TextEditingController();
  String userId = "6461c0f33ba4fd69bd494df0";

  // int _currentPage = 1;

  @override
  void initState() {
    super.initState();
    _userBloc = UserManagementBloc(UsersRepository());
  }

  @override
  Widget build(BuildContext context) {
    print('width == ${MediaQuery.of(context).size.width}');
    return Column(
      children: [
        HeaderView(title: AppString.clientsCustomer.val),
        CustomSizedBox(height: DBL.twenty.val),
        BlocProvider(
          create: (context) => _userBloc
            ..add(UserManagementEvent.getUsers(
                userId: userId, page: _page, limit: _limit)),
          child: _bodyView(),
        ),
      ],
    );
  }

  CustomCard _bodyView() {
    return CustomCard(
      shape: PR().roundedRectangleBorder(DBL.eighteen.val),
      elevation: DBL.seven.val,
      child: CustomContainer(
        padding: const EdgeInsets.all(20),
        child: BlocBuilder<UserManagementBloc, UserManagementState>(
          builder: (context, state) {
            return state.isLoading
                ? loaderView()
                : state.isError
                    ? ErrorView(isClientError: false, errorMessage: state.error)
                    : _usersView(context, state.response);
          },
        ),
      ),
    );
  }

  loaderView() {
    return CustomSizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomSizedBox(height: DBL.ten.val),
              CustomSizedBox(
                  height: 950,
                  child: Shimmer.fromColors(
                    // baseColor: Colors.grey[400]!,
                    // highlightColor: Colors.grey[300]!,
                    baseColor: AppColor.rowBackgroundColor.val,
                    highlightColor: AppColor.rowBackgroundColor.val,
                    child: CDataTable2(
                      minWidth: 950,
                      dividerThickness: 1.0,
                      headingRowHeight: 48,
                      dataRowHeight: 48,
                      columns: [
                        DataColumn2(
                          size: ColumnSize.S,
                          label: _columnsView(
                            text: AppString.slNo.val,
                          ),
                        ),
                        DataColumn2(
                          size: ColumnSize.S,
                          label: _columnsView(
                            text: AppString.id.val,
                          ),
                        ),
                        DataColumn2(
                          size: ColumnSize.L,
                          label: _columnsView(
                            text: AppString.name.val,
                          ),
                        ),
                        DataColumn2(
                          size: ColumnSize.L,
                          // fixedWidth: 500,
                          label: _columnsView(
                            text: AppString.emailAddress.val,
                          ),
                        ),
                        DataColumn2(
                          size: ColumnSize.L,
                          label: _columnsView(text: AppString.phoneNumber.val),
                        ),
                        DataColumn2(
                          size: ColumnSize.L,
                          label: _columnsView(text: AppString.role.val),
                        ),
                        DataColumn2(
                          size: ColumnSize.L,
                          label: _columnsView(
                            text: AppString.status.val,
                          ),
                        ),
                      ],
                      rows: shimmerList.asMap().entries.map((e) {
                        setIndex(e.key);
                        return DataRow2(
                          cells: [
                            DataCell(_rowsView(text: pageIndex.toString())),
                            DataCell(_rowsView(text: " ")),
                            DataCell(_rowsView(text: " ")),
                            DataCell(_rowsView(text: " ")),
                            DataCell(_rowsView(text: " ")),
                            DataCell(_rowsView(text: " ")),
                            DataCell(_rowsView(text: " ")),
                          ],
                        );
                      }).toList(),
                    ),
                  ))
            ]));
  }

  _usersView(BuildContext context, UserResponse? value) {
    if (value?.status ?? false) {
      if (value?.data?.users != null && value!.data!.users!.isNotEmpty) {
        _totalItems = value.data?.pagination?.totals ?? 500;
        mUserList.clear();
        mUserList.addAll(value.data?.users ?? []);
      }
    }
    return mUserList.isNotEmpty
        ? Column(
            crossAxisAlignment: ECrossAxisAlignment.start.val,
            children: <Widget>[
              Row(
                mainAxisAlignment: EMainAxisAlignment.spaceBetween.val,
                children: [
                  CustomDropdown<int>(
                    onChange: (int value, int index) => print(value),
                    dropdownButtonStyle:  DropdownButtonStyle(
                      mainAxisAlignment: MainAxisAlignment.start,
                      width: DBL.hundredForty.val,
                      height: DBL.forty.val,
                      elevation: 0,
                      padding: EdgeInsets.only(left: DBL.fifteen.val),
                      backgroundColor: Colors.white,
                      primaryColor: AppColor.white.val,
                    ),
                    dropdownStyle: DropdownStyle(
                      borderRadius: BorderRadius.circular(2),
                      elevation: 2,
                      
                      color: AppColor.white.val,
                      padding: const EdgeInsets.all(5),
                    ),
                    items: [
                      AppString.active.val,
                      AppString.inActive.val
                    ]
                        .asMap()
                        .entries
                        .map(
                          (item) => DropdownItem<int>(
                        value: item.key + 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(item.value, style: TS().gRoboto(fontWeight: FW.w500.val, fontSize: FS.font15.val, color: AppColor.columColor2.val),
                          ),

                        ),
                      ),
                    )
                        .toList(),
                    child: CustomText3(
                    AppString.status.val,
                      style: TS().gRoboto(fontWeight: FW.w500.val, fontSize: FS.font15.val, color: AppColor.columColor2.val),
                    ),
                  ),
                  

                  CTextField(
                    width: DBL.threeFifteen.val,
                    height: DBL.forty.val,
                    controller: _searchController,
                    hintText: AppString.search.val,
                    hintStyle: TS().gRoboto(
                        fontSize: FS.font15.val, fontWeight: FW.w500.val),
                    suffixIcon: CustomSvg(
                      path: IMG.search.val,
                      height: 16,
                      width: 16,
                    ),
                  ),
                  // CustomSizedBox(width: DBL.ten.val,),
                  // FxButton(
                  //   onPressed: () {},
                  //   text: AppString.create.val,
                  //   color: AppColor.primaryColor.val,
                  //   height: DBL.fifty.val,
                  //   borderRadius: DBL.five.val,
                  //     padding:  EdgeInsets.symmetric(horizontal: DBL.twentyTwo.val, vertical: DBL.ten.val),
                  //   textStyle: TS().gRoboto(color: AppColor.white.val,fontWeight: FW.w500.val),
                  //   icon:CustomIcon(icon: Icons.add,size: DBL.twenty.val,color: AppColor.white.val,)
                  // ),
                ],
              ),
              CustomSizedBox(height: DBL.fifteen.val),
              CustomSizedBox(
                height: (_limit + 1) * 48,
                child: _usersTable(),
              ),
              CustomSizedBox(height: DBL.twenty.val),
              isXs(context)
                  ? SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: _bottomView(),
                    )
                  : _bottomView()
            ],
          )
        : const EmptyView(title: "No Users found!");
  }

  Row _bottomView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _paginationView(),
        CustomText3("Showing ${_start + 1} to $_end of $_totalItems entries"),
      ],
    );
  }

  _usersTable() {
    return CSelectionArea(
      child: CDataTable2(
        minWidth: 950,
        dividerThickness: .3,
        headingRowHeight: 48,
        dataRowHeight: 60,
        columns: [
          DataColumn2(
            size: ColumnSize.S,
            fixedWidth: 80,
            label: _columnsView(
                text: AppString.slNo.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            size: ColumnSize.S,
            fixedWidth: 80,
            label: _columnsView(
                text: AppString.id.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            fixedWidth: Responsive.isWeb(context)
                ? MediaQuery.of(context).size.width * .17
                : 200,
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
            size: ColumnSize.M,
            label: _columnsView(
                text: AppString.status.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            // size: ColumnSize.L,
            fixedWidth: Responsive.isWeb(context)
                ? MediaQuery.of(context).size.width * .1
                : 170,
            label: const CustomText3(""),
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
              DataCell(_rowsView(
                text: item.userId.toString(),
              )),
              DataCell(_tableRowImage(
                  "${item.name?.firstName} ${item.name?.lastName}",
                  item.profile ?? "")),
              DataCell(_rowsView(text: item.email ?? "")),
              DataCell(_rowsView(text: item.mobile)),
              DataCell(_rowsView(text: item.role)),
              DataCell(_statusBox(item.isActive ?? false)),
              DataCell(Row(
                mainAxisAlignment: MainAxisAlignment.end,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {},
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
                  InkWell(
                      onTap: () {},
                      child: CustomSvg(
                        path: IMG.refresh.val,
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
                  InkWell(
                      onTap: () {},
                      child: CustomSvg(
                        path: IMG.edit.val,
                        height: Responsive.isWeb(context)
                            ? DBL.fifteen.val
                            : DBL.twelve.val,
                        width: Responsive.isWeb(context)
                            ? DBL.fifteen.val
                            : DBL.twelve.val,
                      )),

                ],
              )),
            ],
          );
        }).toList(),
      ),
    );
  }

  Widget _rowsView({
    String? text,
  }) {
    return CustomText3(
      '$text',
      softWrap: true,
      style: TS().gRoboto(
          fontSize: Responsive.isWeb(context)
              ? DBL.thirteenPointFive.val
              : DBL.twelve.val,
          fontWeight: FW.w400.val,
          color: AppColor.rowColor.val),
      textAlign: TA.start.val,
    );
  }

  Widget _columnsView(
      {String? text, FontWeight? fontWeight = FontWeight.w600}) {
    return CustomText3(
      '$text',
      softWrap: true,
      style: TS().gRoboto(
          fontSize:
              Responsive.isWeb(context) ? DBL.fourteen.val : DBL.twelve.val,
          fontWeight: fontWeight,
          color: AppColor.columColor.val),
      textAlign: TA.center.val,
    );
  }

  Widget _tableRowImage(String text, String imgUrl) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: CachedImage(
              height: DBL.thirty.val, width: DBL.thirty.val, imgUrl: imgUrl),
        ),
        CustomSizedBox(width: DBL.twelve.val),
        CExpanded(
          child: CustomText3(
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

  _statusBox(bool isActive) {
    return CustomContainer.decoration(
      width: DBL.seventy.val,
      height: DBL.thirty.val,
      padding:
          EdgeInsets.symmetric(vertical: DBL.five.val, horizontal: DBL.ten.val),
      decoration: BoxDecoration(
          color: isActive ? AppColor.green3.val : AppColor.offWhite.val,
          borderRadius: PR().circularRadius(DBL.eight.val)),
      child: CustomText3(
        textAlign: TA.center.val,
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
    if (_page == 1) {
      pageIndex = index + 1;
    } else {
      pageIndex = ((_page * _limit) - 10) + index + 1;
    }
  }

  void updateData() {
    if (_page == 1) {
      _start = 0;
      _end = mUserList.length < _limit ? mUserList.length : _limit;
    } else {
      _start = (_page * _limit) - 10;
      _end = _start + (mUserList.length < _limit ? mUserList.length : _limit);
      _end = _end < mUserList.length ? _end : mUserList.length;
    }
  }

  _paginationView() {
    final int totalPages = (_totalItems / _limit).ceil();
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FxButton(
              onPressed: () {
                if (_page > 1) {
                  _page = _page - 1;
                  _userBloc.add(UserManagementEvent.getUsers(
                      userId: userId, page: _page, limit: _limit));
                }
              },
              text: AppString.previous.val,
              borderRadius: 0.0,
              borderWidth: 0.0,
              color: AppColor.white.val,
              textColor: AppColor.primaryColor.val,
            ),
            for (int i = 1; i <= totalPages; i++)
              if (i == 1 ||
                  i == totalPages ||
                  totalPages <= 5 ||
                  i <= 3 ||
                  i == _page ||
                  (i == _page - 1 && _page - 3 > 1) ||
                  (i == _page + 1 && _page + 3 < totalPages))
                FxButton(
                  text: i.toString(),
                  borderRadius: 0.0,
                  minWidth: 16.0,
                  color: _page == i
                      ? AppColor.primaryColor.val
                      : AppColor.white.val,
                  textColor: _page == i
                      ? AppColor.white.val
                      : AppColor.primaryColor.val,
                  borderWidth: 0.0,
                  onPressed: () {
                    _page = i;
                    _userBloc.add(UserManagementEvent.getUsers(
                        userId: userId, page: _page, limit: _limit));
                  },
                ),
            FxButton(
              onPressed: () {
                if (_page < totalPages) {
                  _page = _page + 1;
                  _userBloc.add(UserManagementEvent.getUsers(
                      userId: userId, page: _page, limit: _limit));
                  updateData();
                }
              },
              text: AppString.next.val,
              borderRadius: 0.0,
              borderWidth: 0.0,
              color: AppColor.white.val,
              textColor: AppColor.primaryColor.val,
            ),
          ],
        ),
      ],
    );
  }

  bool isXs(context) => MediaQuery.of(context).size.width <= 820;
}
