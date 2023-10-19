import 'dart:developer';

import 'package:auto_route/annotations.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/client_report/client_report_bloc.dart';
import '../../application/bloc/master/master_bloc.dart';
import '../../core/enum.dart';
import '../../core/properties.dart';
import '../../core/responsive.dart';
import '../../core/string_extension.dart';
import '../../core/text_styles.dart';
import '../../domain/client_report/model/client_report_user_list_response.dart';
import '../../infrastructure/client_report/client_report_repository.dart';
import '../../infrastructure/master/master_repository.dart';
import '../../infrastructure/shared_preference/shared_preff_util.dart';
import '../routes/app_router.gr.dart';
import '../side_menu/side_menu_page.dart';
import '../widget/cached_image.dart';
import '../widget/custom_button.dart';
import '../widget/custom_card.dart';
import '../widget/custom_container.dart';
import '../widget/custom_data_table_2.dart';
import '../widget/custom_dropdown.dart';
import '../widget/custom_selection_area.dart';
import '../widget/custom_shimmer.dart';
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
class ClientAnalyticsPage extends StatefulWidget {
  const ClientAnalyticsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ClientAnalyticsPage> createState() => _ClientAnalyticsPageState();
}

class _ClientAnalyticsPageState extends State<ClientAnalyticsPage> {
  TextEditingController fromDateController = TextEditingController();

  TextEditingController toDateController = TextEditingController();

  List<ClientReportList> mUserList = [];

  List<int> shimmerList = List.generate(10, (index) => (index));

  int _totalItems = 1;

  int pageIndex = 0;

  int _start = 0;

  int _end = 10;

  int count = 1;

  DateTime? startDate;
  DateTime? endDate;

  @override
  void initState() {
    super.initState();
    _masterBloc.add(const MasterEvent.getRegionList());
    _clientReportBloc.add(ClientReportEvent.getInactiveCountReport(
        userId: _sharedPreffUtil.getAdminId,
        roleId: '64409b7d63e7736ada368149',
        filterId: '1',
        year: '',
        month: '',
        startDate: '',
        toDate: '',
        region: ''));
    _clientReportBloc.add(ClientReportEvent.getUserList(
        userId: _sharedPreffUtil.getAdminId,
        roleId: '64409b7d63e7736ada368149',
        year: '',
        month: '',
        startDate: '',
        toDate: '',
        region: '',
        page: _clientReportBloc.page.toString(),
        limit: _clientReportBloc.limit.toString()));
    count = 1;
    log("initstate called $count");
  }

  final _clientReportBloc = ClientReportBloc(ClientReportRepository());
  final _masterBloc = MasterBloc(MasterRepository());
  final SharedPreffUtil _sharedPreffUtil = SharedPreffUtil();

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return BlocProvider<ClientReportBloc>(
        create: (context) => _clientReportBloc,
        child: Builder(builder: (context) {
          if (count == 1) {
            _clientReportBloc.add(ClientReportEvent.getClientReport(
                userId: _sharedPreffUtil.getAdminId,
                roleId: '64409b7d63e7736ada368149',
                filterId: '1',
                year: '',
                month: '',
                startDate: '',
                toDate: '',
                region: ''));
            count++;
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderView(title: AppString.clientAnalytics.val),
              CustomSizedBox(height: DBL.twenty.val),
              BlocBuilder<ClientReportBloc, ClientReportState>(
                builder: (context, cState) {
                  return BlocBuilder<MasterBloc, MasterState>(
                    builder: (context, state) {
                      print('isPressed ${cState.isCancelButtonPressed}');

                      return Wrap(
                        crossAxisAlignment: WrapCrossAlignment.start,
                        alignment: WrapAlignment.start,
                        runAlignment: WrapAlignment.center,
                        spacing: 20,
                        runSpacing: 10,
                        children: [
                          cState.isCancelButtonPressed
                              ? cState.isLoading
                                  ? _shimmerForFilterWidgets()
                                  : _graphTypeDropDown(context)
                              : _graphTypeDropDown(context),
                          _durationDropDown(context),
                          _buildDatePicker(
                              fromDateController, AppString.startDate.val, () {
                            _selectFromDate(context);
                          }),
                          _buildDatePicker(
                              toDateController, AppString.endDate.val, () {
                            _selectToDate(
                              context,
                            );
                          }),
                          cState.isCancelButtonPressed
                              ? (!state.isRegionLoading || cState.isLoading)
                                  ? _shimmerForFilterWidgets(
                                      width: DBL.oneTwenty.val)
                                  : _regionDropDown(context)
                              : _regionDropDown(context),
                          _cancelButtonWidget(),
                          _getReportWidget(cState.clientReportUserListResponse)
                        ],
                      );
                    },
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              BlocBuilder<ClientReportBloc, ClientReportState>(
                builder: (context, state) {
                  return state.isLoading
                      ? const TableLoaderView()
                      : _bodyView(context);
                },
              )
            ],
          );
        }),
      );
    });
  }

  CustomShimmerWidget _shimmerForFilterWidgets({double? width}) {
    return CustomShimmerWidget.rectangular(
      height: DBL.fortySeven.val,
      width: width ?? DBL.twoTen.val,
      baseColor: AppColor.rowBackgroundColor.val,
      highlightColor: AppColor.lightGrey.val,
    );
  }

  Column _bodyView(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<ClientReportBloc, ClientReportState>(
          builder: (context, state) {
            if (state.isGraphTypeChurn) {
              if (state.clientReportResponse?.data?.churnRate?.isNotEmpty ??
                  false) {
                return SingleBarChart(
                    indicatorTitle: AppString.churnRate.val,
                    totalCountText: AppString.totalChurnRate.val,
                    xAxis: state.xAxis,
                    yAxis: state.yAxis,
                    totalCount: state.clientReportResponse?.data?.totalChurnRate
                            .toString() ??
                        '');
              } else {
                return EmptyView(
                  title: AppString.noDataFound.val,
                );
              }
            } else {
              if (state.inactiveCountResponse!.data!.countByMonth!.isNotEmpty) {
                return SingleBarChart(
                    indicatorTitle: AppString.inactiveRate.val,
                    totalCountText: AppString.totalInactiveRate.val,
                    xAxis: state.inactiveXAxis,
                    yAxis: state.inactiveYAxis,
                    totalCount: state.inactiveCountResponse?.data?.totalCount
                            .toString() ??
                        '');
              } else {
                return EmptyView(
                  title: AppString.noDataFound.val,
                );
              }
            }
          },
        ),
        const SizedBox(
          height: 20,
        ),
        CustomCard(
          shape: PR().roundedRectangleBorder(DBL.eighteen.val),
          elevation: DBL.seven.val,
          child: CustomContainer(
            padding: EdgeInsets.all(DBL.twenty.val),
            child: BlocBuilder<ClientReportBloc, ClientReportState>(
              builder: (context, state) {
                return !state.isUserTableLoading
                    ? const TableLoaderView()
                    : state.isError
                        ? ErrorView(
                            isClientError: false, errorMessage: state.error)
                        : _usersView(
                            context, state.clientReportUserListResponse, state);
              },
            ),
          ),
        ),
      ],
    );
  }

  ///client role id '64409b7d63e7736ada368149'
  ///caregiver role id '64409b7d63e7736ada36814a'
  _graphTypeDropDown(BuildContext context) {
    return BlocBuilder<ClientReportBloc, ClientReportState>(
      builder: (context, state) {
        return CustomDropdown<int>(
          onChange: (int value, int index) {
            index == 1
                ? _clientReportBloc.add(
                    const ClientReportEvent.getGraphType(isGraphChurn: false))
                : _clientReportBloc.add(
                    const ClientReportEvent.getGraphType(isGraphChurn: true));
            print("type inside dropdown ${state.isGraphTypeChurn}");
            print("index inside dropdown $index");
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
          items: [AppString.churnRate, AppString.inactiveRate]
              .asMap()
              .entries
              .map(
                (item) => DropdownItem<int>(
                  value: item.key,
                  child: Padding(
                    padding: EdgeInsets.all(DBL.eight.val),
                    child: Text(
                      item.value.val,
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
      },
    );
  }

  _durationDropDown(BuildContext context) {
    return CustomDropdown<int>(
      onChange: (int value, int index) {
        _clientReportBloc.filterId = (index == 0)
            ? '1'
            : (index == 1)
                ? '2'
                : '3';
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
      items: [AppString.yearly, AppString.monthly, AppString.days]
          .asMap()
          .entries
          .map(
            (item) => DropdownItem<int>(
              value: item.key,
              child: Padding(
                padding: EdgeInsets.all(DBL.eight.val),
                child: Text(
                  item.value.val,
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
        AppString.yearly.val,
        style: TS().gRoboto(
            fontWeight: FW.w400.val,
            fontSize: FS.font14.val,
            color: AppColor.columColor2.val),
      ),
    );
  }

  _regionDropDown(BuildContext context) {
    return CustomDropdown<String>(
      onChange: (String value, int index) {
        print('selected region $value');
        _masterBloc.selectedRegionId = value;
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
      items: _masterBloc.regionLIst
          .asMap()
          .entries
          .map(
            (item) => DropdownItem<String>(
              value: item.value.id,
              child: Padding(
                padding: EdgeInsets.all(DBL.eight.val),
                child: Text(
                  item.value.name ?? '',
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
      TextEditingController controller, String hintText, Function() onTap) {
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
        child: BlocBuilder<ClientReportBloc, ClientReportState>(
          builder: (context, cState) {
            return BlocBuilder<MasterBloc, MasterState>(
              builder: (context, state) {
                return CustomButton(
                  color: AppColor.white.val,
                  textColor: AppColor.primaryColor.val,
                  onPressed: () {
                    _clientReportBloc.add(
                        const ClientReportEvent.getCancelButtonPress(
                            isCancelButtonPressed: true));
                    fromDateController.clear();
                    toDateController.clear();

                    cState.isGraphTypeChurn
                        ? _clientReportBloc.add(
                            ClientReportEvent.getClientReport(
                                userId: SharedPreffUtil().getAdminId,
                                roleId: '64409b7d63e7736ada368149',
                                filterId: '1',
                                year: '',
                                month: '',
                                startDate: '',
                                toDate: '',
                                region: ''))
                        : _clientReportBloc.add(
                            ClientReportEvent.getInactiveCountReport(
                                userId: SharedPreffUtil().getAdminId,
                                roleId: '64409b7d63e7736ada368149',
                                filterId: '1',
                                year: '',
                                month: '',
                                startDate: '',
                                toDate: '',
                                region: ''));
                    _clientReportBloc.filterId = '1';
                  },
                  text: AppString.cancel.val,
                );
              },
            );
          },
        ),
      ),
    );
  }

  _getReportWidget(ClientReportUserListResponse? value) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: CustomSizedBox(
        height: 46,
        child: BlocBuilder<ClientReportBloc, ClientReportState>(
          builder: (context, state) {
            return CustomButton(
              onPressed: () {
                _clientReportBloc.add(
                    const ClientReportEvent.getCancelButtonPress(
                        isCancelButtonPressed: false));
                print("graph type inside report ${state.isGraphTypeChurn}");
                state.isGraphTypeChurn
                    ? _clientReportBloc.add(ClientReportEvent.getClientReport(
                        userId: SharedPreffUtil().getAdminId,
                        roleId: '64409b7d63e7736ada368149',
                        filterId: _clientReportBloc.filterId ?? '',
                        year: '',
                        month: '',
                        startDate: fromDateController.text,
                        toDate: toDateController.text,
                        region: _masterBloc.selectedRegionId))
                    : _clientReportBloc.add(
                        ClientReportEvent.getInactiveCountReport(
                            userId: SharedPreffUtil().getAdminId,
                            roleId: '64409b7d63e7736ada368149',
                            filterId: _clientReportBloc.filterId ?? '',
                            year: '',
                            month: '',
                            startDate: fromDateController.text,
                            toDate: toDateController.text,
                            region: _masterBloc.selectedRegionId));
                _clientReportBloc.add(ClientReportEvent.getUserList(
                    userId: SharedPreffUtil().getAdminId,
                    roleId: '64409b7d63e7736ada368149',
                    year: '',
                    month: '',
                    startDate: fromDateController.text,
                    toDate: toDateController.text,
                    region: _masterBloc.selectedRegionId,
                    page: _clientReportBloc.page.toString(),
                    limit: _clientReportBloc.limit.toString()));
                List<ClientReportList>? data =
                    state.clientReportUserListResponse?.data;
                if (state.clientReportUserListResponse?.status ?? false) {
                  if (state.clientReportUserListResponse?.data != null &&
                      state.clientReportUserListResponse!.data!.isNotEmpty) {
                    ///todo change later
                    // _totalItems = value.data?.pagination?.totals ?? 5000;
                    mUserList.clear();
                    mUserList
                        .addAll(state.clientReportUserListResponse?.data ?? []);
                    print("user list $mUserList");
                  }
                }
              },
              text: AppString.getReport.val,
            );
          },
        ),
      ),
    );
  }

  Future<void> _selectFromDate(
    BuildContext context,
  ) async {
    final DateTime now = DateTime.now();
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: now.subtract(const Duration(days: 365)),
      lastDate: DateTime.now(),
    ).then((value) {
      if (value != null) {
        fromDateController.text =
            value.toString().parseWithFormat(dateFormat: AppString.ddMMYYY.val);
        FocusScope.of(context).unfocus();
      }
    });
  }

  Future<void> _selectToDate(
    BuildContext context,
  ) async {
    final DateTime now = DateTime.now();
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: now.add(const Duration(days: 365)),
    ).then((value) {
      if (value != null) {
        toDateController.text =
            value.toString().parseWithFormat(dateFormat: AppString.ddMMYYY.val);
        FocusScope.of(context).unfocus();
      }
    });
  }

  _usersView(BuildContext context, ClientReportUserListResponse? value,
      ClientReportState state) {
    if (value?.status ?? false) {
      if (value?.data != null && value!.data!.isNotEmpty) {
        ///todo change later
        // _totalItems = value.data?.pagination?.totals ?? 5000;
        mUserList.clear();
        mUserList.addAll(value.data ?? []);
        print("user list $mUserList");
      }
    }
    return mUserList.isNotEmpty
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomSizedBox(
                height: (_clientReportBloc.limit + 1) * 48,
                child: _usersTable(state, context),
              ),
              CustomSizedBox(height: DBL.twenty.val),
              _paginationView()
            ],
          )
        : EmptyView(title: AppString.noUsersFound.val);
  }

  _usersTable(ClientReportState state, BuildContext context) {
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
              DataCell(_tableRowImage(
                  "${item.name?.firstName} ${item.name?.lastName}",
                  item.profilePic ?? "")),
              DataCell(_rowsView(text: item.email ?? "")),
              DataCell(Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: () {
                        autoTabRouter
                            ?.navigate(UserManagementDetailRoute(id: item.id));
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
                  CustomSizedBox(
                    width: DBL.twentyThree.val,
                  ),
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
    final int totalPages = (_totalItems / _clientReportBloc.limit).ceil();
    return PaginationView(
        page: _clientReportBloc.page,
        totalPages: totalPages,
        end: _end,
        totalItems: _totalItems,
        start: _start,
        onNextPressed: () {
          if (_clientReportBloc.page < totalPages) {
            _clientReportBloc.page = _clientReportBloc.page + 1;
            _clientReportBloc.add(ClientReportEvent.getUserList(
                userId: _sharedPreffUtil.getAdminId,
                roleId: "64409b7d63e7736ada368149",
                year: "",
                month: "",
                startDate: "",
                toDate: "",
                region: "",
                page: _clientReportBloc.page.toString(),
                limit: _clientReportBloc.limit.toString()));
            updateData();
          }
        },
        onItemPressed: (i) {
          _clientReportBloc.page = i;
          _clientReportBloc.add(ClientReportEvent.getUserList(
              userId: _sharedPreffUtil.getAdminId,
              roleId: "64409b7d63e7736ada368149",
              year: "",
              month: "",
              startDate: "",
              toDate: "",
              region: "",
              page: _clientReportBloc.page.toString(),
              limit: _clientReportBloc.limit.toString()));
          updateData();
        },
        onPreviousPressed: () {
          if (_clientReportBloc.page > 1) {
            _clientReportBloc.page = _clientReportBloc.page - 1;
            _clientReportBloc.add(ClientReportEvent.getUserList(
                userId: _sharedPreffUtil.getAdminId,
                roleId: "64409b7d63e7736ada368149",
                year: "",
                month: "",
                startDate: "",
                toDate: "",
                region: "",
                page: _clientReportBloc.page.toString(),
                limit: _clientReportBloc.limit.toString()));
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
    if (_clientReportBloc.page == 1) {
      pageIndex = index + 1;
    } else {
      pageIndex =
          ((_clientReportBloc.page * _clientReportBloc.limit) - 10) + index + 1;
    }
  }

  void updateData() {
    if (_clientReportBloc.page == 1) {
      _start = 0;
      _end = mUserList.length < _clientReportBloc.limit
          ? mUserList.length
          : _clientReportBloc.limit;
    } else {
      _start = (_clientReportBloc.page * _clientReportBloc.limit) - 10;
      _end = _start + mUserList.length;
    }
  }
}
