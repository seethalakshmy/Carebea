import 'package:admin_580_tech/infrastructure/complaints/complaints_repository.dart';
import 'package:admin_580_tech/presentation/routes/app_router.gr.dart';
import 'package:admin_580_tech/presentation/widget/custom_dropdown.dart';
import 'package:admin_580_tech/presentation/widget/pagination_view.dart';
import 'package:admin_580_tech/presentation/widget/table_loader_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/complaints/complaints_bloc.dart';
import '../../core/enum.dart';
import '../../core/properties.dart';
import '../../core/responsive.dart';
import '../../core/text_styles.dart';
import '../../infrastructure/shared_preference/shared_preff_util.dart';
import '../side_menu/side_menu_page.dart';
import '../widget/cached_image.dart';
import '../widget/custom_card.dart';
import '../widget/custom_container.dart';
import '../widget/custom_data_table_2.dart';
import '../widget/custom_selection_area.dart';
import '../widget/custom_shimmer.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/custom_svg.dart';
import '../widget/custom_text.dart';
import '../widget/custom_text_field.dart';
import '../widget/empty_view.dart';
import '../widget/error_view.dart';
import '../widget/header_view.dart';

@RoutePage()
class HelpAndSupportPage extends StatefulWidget {
  const HelpAndSupportPage({Key? key}) : super(key: key);

  @override
  State<HelpAndSupportPage> createState() => _HelpAndSupportPageState();
}

class _HelpAndSupportPageState extends State<HelpAndSupportPage> {
  late ComplaintsBloc _supportTicketsBloc;

  List<int> shimmerList = List.generate(10, (index) => (index));
  int _totalItems = 1;
  int _page = 1;
  final int _limit = 10;
  int pageIndex = 0;
  int _start = 0;
  int _end = 10;
  final TextEditingController _searchController = TextEditingController();
  String userId = SharedPreffUtil().getAdminId;

  @override
  void initState() {
    super.initState();
    _supportTicketsBloc = ComplaintsBloc(ComplaintsRepository());
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        HeaderView(title: AppString.supportTickets.val),
        _reBuildView(),
      ],
    );
  }

  BlocProvider<ComplaintsBloc> _reBuildView() {
    return BlocProvider(
      create: (context) => _supportTicketsBloc
        ..add(ComplaintsEvent.getComplaints(
            userId: userId,
            page: _page.toString(),
            limit: _limit.toString(),
            searchTerm: _searchController.text.trim(),
            status: 0)),
      child: _bodyView(),
    );
  }

  Column _bodyView() {
    return Column(
      children: [
        _detailsCardView(),
        CustomSizedBox(height: DBL.twenty.val),
        CustomCard(
          shape: PR().roundedRectangleBorder(DBL.eighteen.val),
          elevation: DBL.seven.val,
          child: CustomContainer(
            padding: EdgeInsets.all(DBL.twenty.val),
            child: BlocBuilder<ComplaintsBloc, ComplaintsState>(
              builder: (context, state) {
                return state.isLoading
                    ? const TableLoaderView()
                    : state.isError
                        ? ErrorView(
                            isClientError: false, errorMessage: state.error)
                        : _usersView(context);
              },
            ),
          ),
        ),
      ],
    );
  }

  List name = [
    'Care Ambassador issue',
    "Service Related",
    'Payment',
    'Customer Care\nAnd Operations'
  ];

  _detailsCardView() {
    return BlocBuilder<ComplaintsBloc, ComplaintsState>(
      builder: (context, state) {
        return state.isLoading
            ? CustomShimmerWidget.rectangular(
                height: 100,
                width: 900,
                baseColor: AppColor.white.val,
                highlightColor: AppColor.lightGrey.val.withOpacity(0.5),
              )
            : CustomSizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  // physics: NeverScrollableScrollPhysics(),
                  // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  //   childAspectRatio: 2,
                  //   mainAxisSpacing: 10,
                  //   crossAxisSpacing: 10,
                  //   crossAxisCount: 2,
                  // ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Card(
                        elevation: DBL.ten.val,
                        child: CustomSizedBox(
                          width: Responsive.isWeb(context) ? 310 : 310,
                          height: Responsive.isWeb(context)
                              ? DBL.ten.val
                              : DBL.twoHundred.val,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomText(
                                    name[index],
                                    style: TS().gRoboto(
                                      fontSize: Responsive.isWeb(context)
                                          ? FS.font14.val
                                          : FS.font12.val,
                                      fontWeight: FW.w400.val,
                                      color: AppColor.label.val,
                                    ),
                                  ),
                                  CustomText(
                                    _supportTicketsBloc.count[index],
                                    style: TS().gRoboto(
                                      fontSize: Responsive.isWeb(context)
                                          ? FS.font28.val
                                          : FS.font24.val,
                                      fontWeight: FW.w600.val,
                                      color: AppColor.primaryColor.val,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  shrinkWrap: true,
                  itemCount: name.length,
                ),
              );
      },
    );
  }

  _usersView(BuildContext context) {
    return _supportTicketsBloc.complaintList.isNotEmpty
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
                height: (_limit + 1) * 48,
                child: _usersTable(),
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
      onSubmitted: (String val) {
        _getCompliantsEvent();
      },
      suffixIcon: InkWell(
        onTap: () {
          _getCompliantsEvent();
        },
        child: CustomSvg(
          path: IMG.search.val,
          height: DBL.sixteen.val,
          width: DBL.sixteen.val,
        ),
      ),
    );
  }

  void _getCompliantsEvent() {
    _supportTicketsBloc.add(ComplaintsEvent.getComplaints(
        userId: userId,
        page: _page.toString(),
        limit: _limit.toString(),
        searchTerm: _searchController.text.trim(),
        status: 0));
  }

  CustomDropdown<int> _statusDropDown(BuildContext context) {
    return CustomDropdown<int>(
      onChange: (int value, int index) => _supportTicketsBloc.add(
          ComplaintsEvent.getComplaints(
              userId: userId,
              page: _page.toString(),
              limit: _limit.toString(),
              searchTerm: "",
              status: value)),
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
      items: [
        AppString.neww.val,
        AppString.onGoing.val,
        AppString.completed.val,
        AppString.canceled.val
      ]
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
    _totalItems = _supportTicketsBloc.paginationList[0].totals!.toInt();
    final int totalPages = (_totalItems / _limit).ceil();
    return PaginationView(
        page: _page,
        totalPages: totalPages,
        end: _end,
        totalItems: _totalItems,
        start: _start,
        onNextPressed: () {
          if (_page < totalPages) {
            _page = _page + 1;
            _getCompliantsEvent();
            updateData();
          }
        },
        onItemPressed: (i) {
          _page = i;
          _getCompliantsEvent();
          updateData();
        },
        onPreviousPressed: () {
          if (_page > 1) {
            _page = _page - 1;
            _getCompliantsEvent();
            updateData();
          }
        });
  }

  _usersTable() {
    return CSelectionArea(
      child: CDataTable2(
        minWidth: 1200,
        dividerThickness: .3,
        headingRowHeight: DBL.fiftyFive.val,
        dataRowHeight: DBL.sixty.val,
        columns: [
          DataColumn2(
            //size: ColumnSize.S,
            fixedWidth: DBL.fifty.val,
            label: _columnsView(
                text: AppString.slNo.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            //size: ColumnSize.L,
            // fixedWidth: DBL.hundred.val,
            label: _columnsView(
                text: AppString.id.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            //size: ColumnSize.L,
            /* fixedWidth: Responsive.isWeb(context)
                ? MediaQuery.of(context).size.width / 8
                : DBL.hundred.val,*/
            label: _columnsView(
                text: AppString.clientName.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            //size: ColumnSize.L,
            /* fixedWidth: Responsive.isWeb(context)
                ? MediaQuery.of(context).size.width / 8
                : DBL.hundred.val,*/
            label: _columnsView(
                text: AppString.caName.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            //size: ColumnSize.L,
            // fixedWidth: DBL.hundred.val,
            label: _columnsView(
                text: AppString.category.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            //size: ColumnSize.L,
            //fixedWidth: DBL.hundred.val,
            label: _columnsView(
                text: AppString.createdDate.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            //size: ColumnSize.L,
            // fixedWidth: DBL.hundred.val,
            label: _columnsView(
                text: AppString.repliedOn.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            //size: ColumnSize.L,
            // fixedWidth: DBL.hundred.val,
            label: _columnsView(
                text: AppString.title.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            //size: ColumnSize.L,
            //fixedWidth: DBL.hundred.val,
            label: _columnsView(
                text: AppString.role.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            //size: ColumnSize.L,
            // fixedWidth: DBL.hundred.val,
            label: _columnsView(
                text: AppString.status.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            label: const CustomText(""),
          ),
        ],
        rows: _supportTicketsBloc.complaintList.asMap().entries.map((e) {
          setIndex(e.key);
          var item = e.value;
          return DataRow2(
            cells: [
              DataCell(_rowsView(
                text: pageIndex.toString(),
              )),
              DataCell(_rowsView(
                text: item.complaintId.toString(),
              )),
              DataCell(_rowsView(
                  text:
                      "${item.clientName?.firstName} ${item.clientName?.lastName}")),
              //_tableRowImage("${item.clientName?.firstName} ${item.clientName?.lastName}","")
              DataCell(_rowsView(
                  text:
                      "${item.caregiverName?.firstName} ${item.caregiverName?.lastName}")),
              DataCell(_rowsView(text: item.category ?? "")),
              DataCell(_rowsView(text: item.createdDate)),
              DataCell(_rowsView(text: item.repliedOn)),
              DataCell(_rowsView(text: item.title)),
              DataCell(_rowsView(text: item.role)),
              DataCell(_rowsView(text: item.status)),
              // DataCell(_statusBox(item.status)),
              DataCell(Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: () {
                        autoTabRouter!.navigate(SupportTicketsDetailRoute(
                            complaintId: item.id ?? ""));
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
      textAlign: TextAlign.start,
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
    if (_page == 1) {
      pageIndex = index + 1;
    } else {
      pageIndex = ((_page * _limit) - 10) + index + 1;
    }
  }

  void updateData() {
    if (_page == 1) {
      _start = 0;
      _end = _supportTicketsBloc.complaintList.length < _limit
          ? _supportTicketsBloc.complaintList.length
          : _limit;
    } else {
      _start = (_page * _limit) - 10;
      _end = _start + _supportTicketsBloc.complaintList.length;
    }
  }

  bool isXs(context) => MediaQuery.of(context).size.width <= 560;
}
