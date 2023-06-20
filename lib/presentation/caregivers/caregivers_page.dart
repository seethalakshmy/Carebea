import 'package:admin_580_tech/core/custom_debugger.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/properties.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/domain/caregivers/model/care_givers.dart';
import 'package:admin_580_tech/domain/caregivers/model/types.dart';
import 'package:admin_580_tech/presentation/caregivers/widgets/tab_item.dart';
import 'package:admin_580_tech/presentation/widget/cached_image.dart';
import 'package:admin_580_tech/presentation/widget/custom_button.dart';
import 'package:admin_580_tech/presentation/widget/custom_card.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_data_table_2.dart';
import 'package:admin_580_tech/presentation/widget/custom_listview_builder.dart';
import 'package:admin_580_tech/presentation/widget/custom_selection_area.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_svg.dart';
import 'package:admin_580_tech/presentation/widget/empty_view.dart';
import 'package:admin_580_tech/presentation/widget/pagination_view.dart';
import 'package:admin_580_tech/presentation/widget/table_loader_view.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../application/bloc/caregivers/caregivers_bloc.dart';
import '../../domain/caregivers/model/caregiver_response.dart';
import '../../infrastructure/caregivers/caregivers_repository.dart';
import '../side_menu/side_menu_page.dart';
import '../widget/custom_dropdown.dart';
import '../widget/custom_icon.dart';
import '../widget/custom_text.dart';
import '../widget/custom_text_field.dart';
import '../widget/error_view.dart';
import '../widget/header_view.dart';

class CareGiversPage extends StatefulWidget {
  const CareGiversPage({Key? key}) : super(key: key);

  @override
  State<CareGiversPage> createState() => _CareGiversPageState();
}

class _CareGiversPageState extends State<CareGiversPage> {
  late CareGiversBloc _careGiversBloc;

  List<Caregivers> mCareGiverList = [];
  int _totalItems = 1;
  final int _limit = 10;
  int _page = 1;
  int pageIndex = 0;
  int _start = 0;
  int _end = 10;
  final TextEditingController _searchController = TextEditingController();
  final _searchNode = FocusNode();
  final String _userId = "6461c0f33ba4fd69bd494df0";
  int _tabType = 1;
  int? _filterId;

  @override
  void initState() {
    super.initState();
    _careGiversBloc = CareGiversBloc(CareGiversRepository());
  }

  @override
  Widget build(BuildContext context) {
    CustomLog.log('width == ${MediaQuery.of(context).size.width}');
    return Column(
      children: [
        HeaderView(
          title: AppString.careAmbassador.val,
        ),
        CustomSizedBox(height: DBL.twenty.val),
        _rebuildView(),
      ],
    );
  }

  BlocProvider<CareGiversBloc> _rebuildView() {
    return BlocProvider(
      create: (context) => _careGiversBloc
        ..add(CareGiversEvent.getCareGivers(
          userId: _userId,
          page: _page,
          limit: _limit,
          type: _tabType,
          filterId: _filterId,
        )),
      child: _bodyView(),
    );
  }

  _bodyView() {
    return BlocBuilder<CareGiversBloc, CareGiversState>(
      builder: (context, state) {
        return Column(
          children: [
            _tabView(state),
            _cardView(state, context),
          ],
        );
      },
    );
  }

  CustomCard _cardView(CareGiversState state, BuildContext context) {
    return CustomCard(
      shape: PR().roundedRectangleBorder(DBL.five.val),
      elevation: DBL.seven.val,
      child: CustomContainer(
          padding: const EdgeInsets.all(20),
          child: state.isLoading
              ? const TableLoaderView()
              : state.isError
                  ? ErrorView(isClientError: false, errorMessage: state.error)
                  : _caregiversView(context, state.response)),
    );
  }

  CustomContainer _tabView(CareGiversState state) {
    return CustomContainer(
        height: DBL.fifty.val,
        child: CustomListViewBuilder(
            itemCount: state.types.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              Types item = state.types[index];
              return TabItem(
                item: item,
                onTap: () {
                  _tabType = item.id!;
                  resetValues();
                  _careGiversBloc.add(CareGiversEvent.isSelectedTab(item));
                  getCareGiverEvent();
                },
              );
            }));
  }

  resetValues() {
    _page = 1;
    _searchController.clear();
    _filterId = null;
  }

  _caregiversView(BuildContext context, CareGiverResponse? value) {
    if (value?.status ?? false) {
      if (value?.data?.caregivers != null &&
          value!.data!.caregivers!.isNotEmpty) {
        _totalItems = value.data?.pagination?.totals ?? 1;
        mCareGiverList.clear();
        mCareGiverList.addAll(value.data?.caregivers ?? []);
        updateData();
      }
    }
    return mCareGiverList.isNotEmpty
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              LayoutBuilder(builder: (context, constraints) {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minWidth: constraints.maxWidth),
                    child: Row(
                      mainAxisAlignment: _tabType == 1
                          ? MainAxisAlignment.end
                          : MainAxisAlignment.spaceBetween,
                      children: [
                        _tabType != 1
                            ? _statusDropDown(context)
                            : CustomSizedBox.shrink(),
                       Row(
                         children: [
                           _searchField(),
                           CustomSizedBox(
                             width: DBL.ten.val,
                           ),
                           CustomButton(
                               onPressed: () {
                                 autoTabRouter!.setActiveIndex(6);
                               },
                               text: AppString.create.val,
                               color: AppColor.primaryColor.val,
                               height: DBL.fifty.val,
                               borderRadius: DBL.five.val,
                               padding: EdgeInsets.symmetric(
                                   horizontal: DBL.twentyTwo.val,
                                   vertical: DBL.ten.val),
                               textStyle: TS().gRoboto(
                                   color: AppColor.white.val,
                                   fontWeight: FW.w500.val),
                               icon: CustomIcon(
                                 icon: Icons.add,
                                 size: DBL.twenty.val,
                                 color: AppColor.white.val,
                               ))
                         ],
                       ),
                      ],
                    ),
                  ),
                );
              }),
              CustomSizedBox(height: DBL.fifteen.val),
              CustomSizedBox(
                height: (_limit + 1) * 48,
                child: _caregiversTable(),
              ),
              CustomSizedBox(height: DBL.twenty.val),
              _paginationView()
            ],
          )
        : EmptyView(title: AppString.emptyCareGivers.val);
  }

  _statusDropDown(BuildContext context) {
    return Row(
      children: [
        CustomText3(
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
            _filterId = value;
            getCareGiverEvent();
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
            elevation: 2,
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
          child: CustomText3(
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

  _searchField() {
    return CTextField(
      focusNode: _searchNode,
      width: isXs2(context) ? DBL.threeFifteen.val : DBL.threeHundred.val,
      height: DBL.forty.val,
      controller: _searchController,
      hintText: AppString.search.val,
      hintStyle: TS().gRoboto(fontSize: FS.font15.val, fontWeight: FW.w500.val),
      onSubmitted: (String value) {
        _searchNode.requestFocus();
        getCareGiverEvent();
      },
      suffixIcon: InkWell(
        onTap: () {
          getCareGiverEvent();
        },
        child: CustomSvg(
          path: IMG.search.val,
          height: 16,
          width: 16,
        ),
      ),
    );
  }

  _caregiversTable() {
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
                text: AppString.id.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _columnsView(
                text: AppString.firstName.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _columnsView(
                text: AppString.lastName.val, fontWeight: FontWeight.bold),
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
          _tabType != 1
              ? DataColumn2(
                  // size: ColumnSize.L,
                  fixedWidth: 150,
                  label: _columnsView(
                      text: AppString.status.val, fontWeight: FontWeight.bold),
                )
              : const DataColumn2(fixedWidth: 0, label: CustomText3("")),
          const DataColumn2(
            size: ColumnSize.L,
            label: CustomText3(""),
          ),
        ],
        rows: mCareGiverList.asMap().entries.map((e) {
          setIndex(e.key);
          var item = e.value;
          return DataRow2(
            cells: [
              DataCell(_rowsView(
                text: pageIndex.toString(),
              )),
              DataCell(_tableRowImage(
                  item.name?.firstName ?? "", item.profile ?? "")),
              DataCell(_rowsView(text: item.name?.lastName ?? "")),
              DataCell(_rowsView(text: item.email ?? "")),
              DataCell(_rowsView(text: item.mobile)),
              _tabType != 1
                  ? DataCell(_statusBox(e.value))
                  : DataCell(_rowsView(text: "")),
              DataCell(Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: () {
                        autoTabRouter!.setActiveIndex(2);
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
                  CustomSizedBox(
                    width: DBL.twentyThree.val,
                  ),
                  InkWell(
                      onTap: () {},
                      child: CustomSvg(
                        path: IMG.delete.val,
                        height: Responsive.isWeb(context)
                            ? DBL.nineteen.val
                            : DBL.seventeen.val,
                        width: Responsive.isWeb(context)
                            ? DBL.nineteen.val
                            : DBL.seventeen.val,
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
      textAlign: TextAlign.start,
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
      textAlign: TextAlign.center,
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
        Expanded(
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

  _statusBox(Caregivers item) {
    return Row(
      children: [
        FlutterSwitch(
          width: 40.0,
          height: 24.0,
          valueFontSize: 0,
          toggleSize: 14.0,
          value: item.onBoardingStatus ?? false,
          activeColor: AppColor.green.val,
          inactiveColor: AppColor.lightGrey.val,
          borderRadius: 30.0,
          onToggle: (val) {
            _careGiversBloc.add(CareGiversEvent.isUserActive(item));
          },
        ),
        const SizedBox(
          width: 8,
        ),
        CustomText3(
          item.onBoardingStatus! ? "Active" : "Inactive",
          style: TS().gRoboto(
              color: item.onBoardingStatus!
                  ? AppColor.green.val
                  : AppColor.inactive.val,
              fontSize: 12,
              fontWeight: FW.w600.val),
        )
      ],
    );
  }

  setIndex(int index) {
    if (_page == 1) {
      pageIndex = index + 1;
    } else {
      pageIndex = ((_page * _limit) - 10) + index + 1;
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
            getCareGiverEvent();
          }
        },
        onItemPressed: (i) {
          _page = i;
          getCareGiverEvent();
        },
        onPreviousPressed: () {
          if (_page > 1) {
            _page = _page - 1;
            getCareGiverEvent();
          }
        });
  }

  void updateData() {
    if (_page == 1) {
      _start = 0;
      _end = mCareGiverList.length < _limit ? mCareGiverList.length : _limit;
    } else {
      _start = (_page * _limit) - 10;
      _end = _start + mCareGiverList.length;
    }
  }

  getCareGiverEvent() {
    _careGiversBloc.add(CareGiversEvent.getCareGivers(
        userId: _userId,
        page: _page,
        limit: _limit,
        type: _tabType,
        filterId: _filterId,
        searchTerm: _searchController.text.trim().isNotEmpty
            ? _searchController.text.trim()
            : null));
  }

  bool isXs(context) => MediaQuery.of(context).size.width <= 810;

  bool isXs2(context) => MediaQuery.of(context).size.width <= 544;
}
