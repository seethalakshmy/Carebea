import 'package:admin_580_tech/core/string_extension.dart';
import 'package:admin_580_tech/infrastructure/user_management_detail/user_management_detail_repository.dart';
import 'package:admin_580_tech/presentation/widget/multiple_barchart.dart';
import 'package:auto_route/annotations.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/service_request_management/service_request_management_bloc.dart';
import '../../application/bloc/user_managment/user_management_bloc.dart';
import '../../core/enum.dart';
import '../../core/properties.dart';
import '../../core/responsive.dart';
import '../../core/text_styles.dart';
import '../../domain/user_management/model/user_list_response.dart';
import '../../infrastructure/user_management/users_repository.dart';
import '../routes/app_router.gr.dart';
import '../side_menu/side_menu_page.dart';
import '../widget/cached_image.dart';
import '../widget/custom_button.dart';
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
import '../widget/pagination_view.dart';
import '../widget/single_barchart.dart';
import '../widget/table_loader_view.dart';

@RoutePage()
class ClientAnalyticsPage extends StatelessWidget {
  ClientAnalyticsPage({Key? key}) : super(key: key);

  TextEditingController fromDateController = TextEditingController();
  TextEditingController toDateController = TextEditingController();

  List<dynamic> mUserList = [];
  List<int> shimmerList = List.generate(10, (index) => (index));
  int _totalItems = 1;

  int pageIndex = 0;
  int _start = 0;
  int _end = 10;
  final TextEditingController _searchController = TextEditingController();

  String? adminId;
  UserManagementBloc _userBloc = UserManagementBloc(UsersRepository());
  // UserManagementBloc? _userBloc;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderView(title: AppString.clientAnalytics.val),
        CustomSizedBox(height: DBL.twenty.val),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.start,
          alignment: WrapAlignment.start,
          runAlignment: WrapAlignment.center,
          spacing: 20,
          runSpacing: 10,
          children: [
            // state.isLoading ?? false
            //     ? _shimmerForFilterWidgets()
            //     :
            _graphTypeDropDown(context),
            _durationDropDown(context),
            // state.isLoading ?? false
            //     ? _shimmerForFilterWidgets()
            //     :
            _buildDatePicker(
                // state,
                fromDateController,
                AppString.startDate.val, () {
              _selectFromDate(context
                  // state
                  );
            }),
            // state.isLoading ?? false
            //     ? _shimmerForFilterWidgets()
            //     :
            _buildDatePicker(
                // state,
                toDateController,
                AppString.endDate.val, () {
              _selectToDate(
                context,
                // state
              );
            }),
            _regionDropDown(context),
            // state.isLoading ?? false
            //     ? _shimmerForFilterWidgets(width: DBL.oneTwenty.val)
            //     :
            _cancelButtonWidget(),
            _getReportWidget()
          ],
        ),
        SizedBox(
          height: 20,
        ),
        SingleBarChart(
          indicatorTitle: AppString.qualityOfServices.val,
          totalCountText: AppString.totalChurnRate.val,
        ),
        _reBuildView()
      ],
    );
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

  _graphTypeDropDown(BuildContext context) {
    return CustomDropdown<int>(
      onChange: (int value, int index) {
        // _serviceRequestBloc.statusFilterId = value;
        // _serviceRequestBloc.add(
        //     ServiceRequestManagementEvent.getServiceRequests(
        //         context: context,
        //         page: 1,
        //         limit: _limit,
        //         statusFilterId: _serviceRequestBloc.statusFilterId == 0
        //             ? null
        //             : _serviceRequestBloc.statusFilterId));
      },
      dropdownButtonStyle: DropdownButtonStyle(
        mainAxisAlignment: MainAxisAlignment.start,
        width: DBL.twoTen.val,
        height: DBL.fortySeven.val,
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
      items: ['test1', 'test2']
          // _serviceRequestBloc.serviceStatusList
          .asMap()
          .entries
          .map(
            (item) => DropdownItem<int>(
              value: item.key,
              // item.value.id!.toInt(),
              child: Padding(
                padding: EdgeInsets.all(DBL.eight.val),
                child: Text(
                  item.value,
                  // item.value.name ?? "",
                  style: TS().gRoboto(
                      fontWeight: FW.w400.val,
                      fontSize: FS.font14.val,
                      color: AppColor.columColor2.val),
                ),
              ),
            ),
          )
          .toList(),
      child: CustomText(
        AppString.churnRate.val,
        style: TS().gRoboto(
            fontWeight: FW.w400.val,
            fontSize: FS.font14.val,
            color: AppColor.columColor2.val),
      ),
    );
  }

  _durationDropDown(BuildContext context) {
    return CustomDropdown<int>(
      onChange: (int value, int index) {
        // _serviceRequestBloc.statusFilterId = value;
        // _serviceRequestBloc.add(
        //     ServiceRequestManagementEvent.getServiceRequests(
        //         context: context,
        //         page: 1,
        //         limit: _limit,
        //         statusFilterId: _serviceRequestBloc.statusFilterId == 0
        //             ? null
        //             : _serviceRequestBloc.statusFilterId));
      },
      dropdownButtonStyle: DropdownButtonStyle(
        mainAxisAlignment: MainAxisAlignment.start,
        width: DBL.twoTen.val,
        height: DBL.fortySeven.val,
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
      items: ['test1', 'test2']
          // _serviceRequestBloc.serviceStatusList
          .asMap()
          .entries
          .map(
            (item) => DropdownItem<int>(
              value: item.key,
              // item.value.id!.toInt(),
              child: Padding(
                padding: EdgeInsets.all(DBL.eight.val),
                child: Text(
                  item.value,
                  // item.value.name ?? "",
                  style: TS().gRoboto(
                      fontWeight: FW.w400.val,
                      fontSize: FS.font14.val,
                      color: AppColor.columColor2.val),
                ),
              ),
            ),
          )
          .toList(),
      child: CustomText(
        AppString.monthly.val,
        style: TS().gRoboto(
            fontWeight: FW.w400.val,
            fontSize: FS.font14.val,
            color: AppColor.columColor2.val),
      ),
    );
  }

  _regionDropDown(BuildContext context) {
    return CustomDropdown<int>(
      onChange: (int value, int index) {
        // _serviceRequestBloc.statusFilterId = value;
        // _serviceRequestBloc.add(
        //     ServiceRequestManagementEvent.getServiceRequests(
        //         context: context,
        //         page: 1,
        //         limit: _limit,
        //         statusFilterId: _serviceRequestBloc.statusFilterId == 0
        //             ? null
        //             : _serviceRequestBloc.statusFilterId));
      },
      dropdownButtonStyle: DropdownButtonStyle(
        mainAxisAlignment: MainAxisAlignment.start,
        width: DBL.twoTen.val,
        height: DBL.fortySeven.val,
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
      items: ['test1', 'test2']
          // _serviceRequestBloc.serviceStatusList
          .asMap()
          .entries
          .map(
            (item) => DropdownItem<int>(
              value: item.key,
              // item.value.id!.toInt(),
              child: Padding(
                padding: EdgeInsets.all(DBL.eight.val),
                child: Text(
                  item.value,
                  // item.value.name ?? "",
                  style: TS().gRoboto(
                      fontWeight: FW.w400.val,
                      fontSize: FS.font14.val,
                      color: AppColor.columColor2.val),
                ),
              ),
            ),
          )
          .toList(),
      child: CustomText(
        AppString.region.val,
        style: TS().gRoboto(
            fontWeight: FW.w400.val,
            fontSize: FS.font14.val,
            color: AppColor.columColor2.val),
      ),
    );
  }

  CTextField _buildDatePicker(
      // ServiceRequestManagementState state,
      TextEditingController controller,
      String hintText,
      Function() onTap) {
    return CTextField(
      width: DBL.twoTen.val,
      height: DBL.fortySeven.val,
      hintStyle: TS().gRoboto(
          fontWeight: FW.w400.val,
          fontSize: FS.font14.val,
          color: AppColor.columColor2.val),
      textColor: AppColor.columColor2.val,
      hintText: hintText,
      isReadOnly: true,
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return AppString.emptyDate.val;
        }
        return null;
      },
      onTap: onTap,
      onChanged: (val) {},
      textInputAction: TextInputAction.next,
      keyBoardType: TextInputType.text,
      suffixIcon: CustomSvg(
        width: DBL.twentyFive.val,
        height: DBL.twentyFive.val,
        path: IMG.calenderOutLine.val,
      ),
    );
  }

  _cancelButtonWidget() {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: CustomSizedBox(
        height: 46,
        child: CustomButton(
          color: AppColor.white.val,
          textColor: AppColor.primaryColor.val,
          onPressed: () {
            fromDateController.clear();
            toDateController.clear();
            // _serviceRequestBloc.statusFilterId = 0;
            // _serviceRequestBloc
            //     .add(const ServiceRequestManagementEvent.getServiceStatus());
            // _serviceRequestBloc.add(
            //     ServiceRequestManagementEvent.getServiceRequests(
            //         context: context, page: 1, limit: _limit));
          },
          text: AppString.cancel.val,
        ),
      ),
    );
  }

  _getReportWidget() {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: CustomSizedBox(
        height: 46,
        child: CustomButton(
          onPressed: () {
            fromDateController.clear();
            toDateController.clear();
            // _serviceRequestBloc.statusFilterId = 0;
            // _serviceRequestBloc
            //     .add(const ServiceRequestManagementEvent.getServiceStatus());
            // _serviceRequestBloc.add(
            //     ServiceRequestManagementEvent.getServiceRequests(
            //         context: context, page: 1, limit: _limit));
          },
          text: AppString.getReport.val,
        ),
      ),
    );
  }

  Future<void> _selectFromDate(
    BuildContext context,
    // ServiceRequestManagementState state
  ) async {
    final DateTime now = DateTime.now();
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      // _serviceRequestBloc.selectedToDateTime ?? state.selectedDate,
      firstDate: now.subtract(const Duration(days: 365)),
      lastDate: DateTime.now(),
      // _serviceRequestBloc.selectedToDateTime ??
      //     now.add(const Duration(days: 365)),
    ).then((value) {
      if (value != null) {
        // _serviceRequestBloc.selectedFromDate =
        //     value.toString().parseWithFormat(dateFormat: AppString.ddMMYYY.val);
        // print("selecteddd from date : ${_serviceRequestBloc.selectedFromDate}");
        // _serviceRequestBloc.selectedFromDateTime = value;
        // if (_serviceRequestBloc.selectedFromDate.isNotEmpty &&
        //     _serviceRequestBloc.selectedToDate.isNotEmpty) {
        //   _serviceRequestBloc.add(
        //       ServiceRequestManagementEvent.getServiceRequests(
        //           context: context,
        //           page: 1,
        //           limit: _limit,
        //           fromDate: _serviceRequestBloc.selectedFromDate,
        //           toDate: _serviceRequestBloc.selectedToDate));
        // }
        fromDateController.text =
            value.toString().parseWithFormat(dateFormat: AppString.mmDDYYY.val);
        FocusScope.of(context).unfocus();
      }
    });
  }

  Future<void> _selectToDate(
    BuildContext context,
    // ServiceRequestManagementState state
  ) async {
    final DateTime now = DateTime.now();
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      // state.selectedDate,
      firstDate: DateTime.now(),
      // _serviceRequestBloc.selectedFromDateTime,
      lastDate: now.add(const Duration(days: 365)),
    ).then((value) {
      if (value != null) {
        // _serviceRequestBloc.selectedToDateTime = value;
        // _serviceRequestBloc.selectedToDate =
        //     value.toString().parseWithFormat(dateFormat: AppString.ddMMYYY.val);
        // print("selecteddd to date : ${_serviceRequestBloc.selectedToDate}");
        // if (_serviceRequestBloc.selectedFromDate.isNotEmpty &&
        //     _serviceRequestBloc.selectedToDate.isNotEmpty) {
        //   _serviceRequestBloc.add(
        //       ServiceRequestManagementEvent.getServiceRequests(
        //           context: context,
        //           page: 1,
        //           limit: _limit,
        //           fromDate: _serviceRequestBloc.selectedFromDate,
        //           toDate: _serviceRequestBloc.selectedToDate));
        // }
        toDateController.text =
            value.toString().parseWithFormat(dateFormat: AppString.mmDDYYY.val);
        FocusScope.of(context).unfocus();
      }
    });
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
                fontSize: DBL.twelve.val,
                fontWeight: FW.w400.val,
                color: AppColor.rowColor.val),
          ),
        ),
      ],
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

  Widget _rowsView({
    String? text,
  }) {
    return CustomText(
      '$text',
      softWrap: true,
      style: TS().gRoboto(
          fontSize: DBL.twelve.val,
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
          fontSize: DBL.twelve.val,
          fontWeight: fontWeight,
          color: AppColor.columColor.val),
      textAlign: TextAlign.center,
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
}
