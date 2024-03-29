import 'package:admin_580_tech/core/custom_debugger.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/properties.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/domain/caregivers/model/care_givers.dart';
import 'package:admin_580_tech/domain/caregivers/model/types.dart';
import 'package:admin_580_tech/infrastructure/shared_preference/shared_preff_util.dart';
import 'package:admin_580_tech/presentation/caregivers/widgets/tab_item.dart';
import 'package:admin_580_tech/presentation/routes/app_router.gr.dart';
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
import 'package:admin_580_tech/presentation/widget/table_row_image_view.dart';
import 'package:admin_580_tech/presentation/widget/table_row_view.dart';
import 'package:admin_580_tech/presentation/widget/table_switch_box.dart';
import 'package:admin_580_tech/presentation/widget/table_verification_button.dart';
import 'package:auto_route/annotations.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
import '../widget/loader_view.dart';
import '../widget/table_actions_view.dart';
import '../widget/table_column_view.dart';

@RoutePage()
class CareGiversPage extends StatefulWidget {
  const CareGiversPage({Key? key, @QueryParam('tab') this.tab})
      : super(key: key);
  final int? tab;

  @override
  State<CareGiversPage> createState() => _CareGiversPageState();
}

class _CareGiversPageState extends State<CareGiversPage> {
  List<Caregivers> mCareGiverList = [];
  int _totalItems = 1;
  final int _limit = 10;
  int _page = 1;
  int _pageIndex = 0;
  int _start = 0;
  int _end = 10;
  final TextEditingController _searchController = TextEditingController();
  final _searchNode = FocusNode();
  String _adminUserId = "";
  int _tabType = 1;
  int? _filterId;
  late CareGiversBloc _careGiversBloc;
  SharedPreffUtil sharedPrefUtil = SharedPreffUtil();

  @override
  void initState() {
    super.initState();
    CustomLog.log(":::page ${sharedPrefUtil.getTab}");
    if (sharedPrefUtil.getPage != 0 && sharedPrefUtil.getTab != 0) {
      _page = sharedPrefUtil.getPage;
      _tabType = sharedPrefUtil.getTab;
    }

    _careGiversBloc = CareGiversBloc(CareGiversRepository());
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
                title: AppString.careAmbassador.val,
              ),
              _rebuildView(),
            ],
          );
        });
  }

  BlocProvider<CareGiversBloc> _rebuildView() {
    return BlocProvider(
      create: (context) => _careGiversBloc
        ..add(CareGiversEvent.getCareGivers(
          userId: _adminUserId,
          page: _page,
          limit: _limit,
          type: _tabType,
          filterId: _filterId,
          adminId: _adminUserId,
        )),
      child: _bodyView(),
    );
  }

  _bodyView() {
    return BlocBuilder<CareGiversBloc, CareGiversState>(
      builder: (_, state) {
        return Column(
          children: [
            CustomSizedBox(height: DBL.twenty.val),
            !state.isError ? _tabView(state) : CustomSizedBox.shrink(),
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
          padding: EdgeInsets.all(DBL.twenty.val),
          child: state.isLoading
              ? const TableLoaderView()
              : state.isError
                  ? ErrorView(
                      isClientError: state.isClientError,
                      errorMessage: state.error)
                  : _caregiversView(context, state)),
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
                  _resetValues();
                  context
                      .read<CareGiversBloc>()
                      .add(CareGiversEvent.isSelectedTab(item));
                  _getCareGiverEvent();
                },
              );
            }));
  }

  _resetValues() {
    _page = 1;
    _searchController.clear();
    _filterId = null;
  }

  _caregiversView(BuildContext context, CareGiversState state) {
    CareGiverResponse? value = state.response;
    if (value?.status ?? false) {
      mCareGiverList.clear();
      if (value?.data?.caregivers != null &&
          value!.data!.caregivers!.isNotEmpty) {
        _totalItems = value.data?.pagination?.totals ?? 1;
        mCareGiverList.addAll(value.data?.caregivers ?? []);
        _updateData();
      }
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        LayoutBuilder(builder: (context, constraints) {
          return _actionView(constraints, context);
        }),
        mCareGiverList.isNotEmpty
            ? Column(
                children: [
                  CustomSizedBox(height: DBL.fifteen.val),
                  CustomSizedBox(
                    height: (_limit + 1) * 48,
                    child: _caregiversTable(state, context),
                  ),
                  CustomSizedBox(height: DBL.twenty.val),
                  // if (_totalItems > 10)
                  _paginationView()
                ],
              )
            : EmptyView(title: AppString.emptyCareGivers.val),
      ],
    );
  }

  SingleChildScrollView _actionView(
      BoxConstraints constraints, BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: ConstrainedBox(
        constraints: BoxConstraints(minWidth: constraints.maxWidth),
        child: Row(
          mainAxisAlignment: _tabType == 1
              ? MainAxisAlignment.end
              : MainAxisAlignment.spaceBetween,
          children: [
            _tabType != 1 ? _statusDropDown(context) : CustomSizedBox.shrink(),
            Row(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    _searchField(),
                  ],
                ),
                CustomSizedBox(
                  width: DBL.ten.val,
                ),
                _caregiverCreate()
              ],
            ),
          ],
        ),
      ),
    );
  }

  _caregiverCreate() {
    return sharedPrefUtil.getEditCareGiver
        ? CustomButton(
            onPressed: () {
              autoTabRouter?.setActiveIndex(7);
            },
            text: AppString.create.val,
            color: AppColor.primaryColor.val,
            height: DBL.fiftyFive.val,
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
            _filterId = value;
            _page = 1;
            _getCareGiverEvent();
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
          items: [
            AppString.all.val,
            AppString.active.val,
            AppString.inActive.val,
          ]
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

        // if (_searchController.text.isEmpty || _searchController.text == '') {
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

  _caregiversTable(CareGiversState state, BuildContext context) {
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
          sharedPrefUtil.getEditCareGiver
              ? _tabType == 1
                  ? DataColumn2(
                      size: ColumnSize.L,
                      label: _tableColumnView(AppString.status.val))
                  : DataColumn2(
                      fixedWidth: DBL.oneFifty.val,
                      label: _tableColumnView(AppString.status.val))
              : emptyColumn(),
          sharedPrefUtil.getEditCareGiver
              ? _tabType == 1
                  ? emptyColumn()
                  : const DataColumn2(
                      size: ColumnSize.L,
                      label: CustomText(""),
                    )
              : emptyColumn(),
        ],
        rows: mCareGiverList.asMap().entries.map((e) {
          _setIndex(e.key);
          var item = e.value;
          CustomLog.log("${item.profile}");
          int? verificationStatus = item.verificationStatus;
          String? userId = item.userId;
          debugPrint('onboarding ${item.onBoardingStatus}');
          return DataRow2(
            onTap: () {
              if (sharedPrefUtil.getEditCareGiver &&
                  item.onBoardingStatus == true) {
                print("userId passing from CA list page : ${item.userId}");
                if (_tabType == 2 && sharedPrefUtil.getViewCareGiver) {
                  autoTabRouter?.navigate(CareGiverDetailRoute(
                    id: item.userId,
                  ));
                } else {
                  if (sharedPrefUtil.getEditCareGiver) {
                    if (verificationStatus ==
                            Verification.trainingStarted.val ||
                        verificationStatus ==
                            Verification.interViewStarted.val ||
                        verificationStatus ==
                            Verification.trainingCompleted.val ||
                        verificationStatus ==
                            Verification.interViewCompleted.val ||
                        verificationStatus ==
                            Verification.interViewFailed.val) {
                      autoTabRouter?.navigate(CareGiverProfileRoute(
                        id: item.userId,
                      ));
                    } else {
                      autoTabRouter?.navigate(CaregiverVerificationRoute(
                          id: userId,
                          isOnboardingCompleted:
                              item.onBoardingStatus ?? false));
                    }
                  }
                }
              }
            },
            cells: [
              DataCell(_tableRowView(_pageIndex.toString())),
              DataCell(TableRowImageView(
                name: item.name?.firstName ?? "",
                imageUrl: item.profile ?? "",
              )),
              DataCell(_tableRowView(item.name?.lastName ?? "")),
              DataCell(_tableRowView(item.email ?? "")),
              DataCell(_tableRowView(item.mobile ?? "")),
              _tabType == 1
                  ? DataCell(sharedPrefUtil.getEditCareGiver &&
                          item.onBoardingStatus == true
                      ? _tableVerificationButton(item)
                      : CustomText(AppString.profileIncomplete.val,
                          style: TextStyle(
                            color: Colors.red,
                          )))
                  : DataCell(sharedPrefUtil.getEditCareGiver
                      ? _tableSwitchBox(item)
                      : _tableRowView("")),
              _tabType == 1
                  ? DataCell(_tableRowView(""))
                  : DataCell(sharedPrefUtil.getEditCareGiver
                      ? TableActions(
                          isView: true,
                          onViewTap: () {
                            autoTabRouter?.navigate(CareGiverDetailRoute(
                              id: item.userId,
                            ));
                          })
                      : _tableRowView("")),
            ],
          );
        }).toList(),
      ),
    );
  }

  DataColumn2 emptyColumn() {
    return const DataColumn2(
      fixedWidth: 0,
      label: CustomText(""),
    );
  }

  _tableRowView(String name) {
    return Tooltip(
      message: name,
      child: TableRowView(
        text: name,
      ),
    );
  }

  TableColumnView _tableColumnView(String name) {
    return TableColumnView(
      text: name,
    );
  }

  TableSwitchBox _tableSwitchBox(Caregivers item) {
    return TableSwitchBox(
      value: item.isActive!,
      onToggle: () {
        _careGiversBloc.add(CareGiversEvent.isUserActive(
            caregiver: item,
            status: item.isActive == true ? false : true,
            userId: item.userId ?? "",
            context: context,
            adminId: item.userId ?? ""));
      },
    );
  }

  TableVerificationButton _tableVerificationButton(Caregivers item) {
    return TableVerificationButton(
      verificationStatus: item.verificationStatus ?? 0,
      userId: item.userId,
      page: _page,
      tab: _tabType,
      onBoardingStatus: item.onBoardingStatus,
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
      _end = mCareGiverList.length < _limit ? mCareGiverList.length : _limit;
    } else {
      _start = (_page * _limit) - 10;
      _end = _start + mCareGiverList.length;
    }

    SharedPreffUtil().setPage = _page;
    SharedPreffUtil().setTab = _tabType;
    CustomLog.log(':::page set $_page ${SharedPreffUtil().getPage}');
    CustomLog.log(':::tab set $_tabType ${SharedPreffUtil().getTab}');
  }

  _getCareGiverEvent() {
    _careGiversBloc.add(CareGiversEvent.getCareGivers(
        userId: _adminUserId,
        page: _page,
        limit: _limit,
        type: _tabType,
        filterId: _filterId,
        searchTerm: _searchController.text.trim().isNotEmpty
            ? _searchController.text.trim()
            : null,
        adminId: _adminUserId));
  }

  bool _isXs(context) => MediaQuery.of(context).size.width <= 544;

  bool isLarge(BuildContext context) =>
      MediaQuery.of(context).size.width <= 1236;

  bool isLg(BuildContext context) => MediaQuery.of(context).size.width <= 1370;

  bool isLg1(BuildContext context) => MediaQuery.of(context).size.width <= 976;

  bool isXs(BuildContext context) => MediaQuery.of(context).size.width <= 760;

  bool isXs1(BuildContext context) => MediaQuery.of(context).size.width <= 780;
}
