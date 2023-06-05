import 'package:admin_580_tech/core/color.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/core/properties.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/core/string.dart';
import 'package:admin_580_tech/core/string_extension.dart';
import 'package:admin_580_tech/core/text_styles.dart';
import 'package:admin_580_tech/core/theme.dart';
import 'package:admin_580_tech/domain/caregivers/model/care_givers.dart';
import 'package:admin_580_tech/presentation/caregivers/widgets/header_view.dart';
import 'package:admin_580_tech/presentation/widget/cached_image.dart';
import 'package:admin_580_tech/presentation/widget/custom_align.dart';
import 'package:admin_580_tech/presentation/widget/custom_card.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_data_table_2.dart';
import 'package:admin_580_tech/presentation/widget/custom_selection_area.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/custom_svg.dart';
import 'package:admin_580_tech/presentation/widget/custom_wrap.dart';
import 'package:admin_580_tech/presentation/widget/empty_view.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutterx/flutterx.dart';
import 'package:shimmer/shimmer.dart';

import '../../application/bloc/caregivers/caregivers_bloc.dart';
import '../../domain/caregivers/model/caregiver_response.dart';
import '../../infrastructure/caregivers/caregivers_repository.dart';
import '../widget/custom_text.dart';
import '../widget/custom_text_field.dart';
import '../widget/error_view.dart';

class CareGiversPage extends StatefulWidget {
  const CareGiversPage({Key? key}) : super(key: key);

  @override
  State<CareGiversPage> createState() => _CareGiversPageState();
}

class _CareGiversPageState extends State<CareGiversPage> {
  late CareGiversBloc _dataTableBloc;

  List<Caregivers> mCareGiverList = [];
  List<int> shimmerList = List.generate(10, (index) => (index));
  int totalPages = 40;
  final int _dropValue = 10;
  int _page = 1;
  int pageIndex = 0;
  final int _start = 0;
  final int _end = 10;
  final TextEditingController _searchController = TextEditingController();
  String userId = "6461c0f33ba4fd69bd494df0";

  @override
  void initState() {
    super.initState();
    _dataTableBloc = CareGiversBloc(CareGiversRepository());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeaderView(),
        CustomSizedBox(height: DBL.twenty.val),
        BlocProvider(
          create: (context) => _dataTableBloc
            ..add(CareGiversEvent.getCareGivers(
              userId: userId,
              page: INT.one.val,
              limit: INT.two.val,
            )),
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
        child: BlocBuilder<CareGiversBloc, CareGiversState>(
          builder: (context, state) {
            return state.isLoading
                ? loaderView()
                : state.isError
                    ? ErrorView(isClientError: false, errorMessage: state.error)
                    : _caregiversView(context, state.response);
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
              CustomText3(
                Strings.recent.trim(),
                style: TS().style(
                  fontSize: FS.font18.val,
                  fontWeight: FW.bold.val,
                ),
              ),
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
                            text: Strings.id,
                          ),
                        ),
                        DataColumn2(
                          size: ColumnSize.L,
                          label: _columnsView(
                            text: Strings.name,
                          ),
                        ),
                        DataColumn2(
                          size: ColumnSize.L,
                          // fixedWidth: 500,
                          label: _columnsView(
                            text: Strings.emailID,
                          ),
                        ),
                        DataColumn2(
                          size: ColumnSize.L,
                          label: _columnsView(
                            text: Strings.phoneNo.capitalize(),
                          ),
                        ),
                        DataColumn2(
                          size: ColumnSize.L,
                          label: _columnsView(
                            text: Strings.status,
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
                          ],
                        );
                      }).toList(),
                    ),
                  ))
            ]));
  }

  _caregiversView(BuildContext context, CareGiverResponse? value) {
    if (value?.status ?? false) {
      if (value?.data?.caregivers != null &&
          value!.data!.caregivers!.isNotEmpty) {
        totalPages = value.data?.pagination?.totals ?? 1;
        mCareGiverList.clear();
        mCareGiverList.addAll(value.data?.caregivers ?? []);
      }
    }
    return mCareGiverList.isNotEmpty
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CAlign(
                alignment: EAlignment.topRight.val,
                child: CTextField(
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
              ),
              CustomSizedBox(height: DBL.fifteen.val),
              CustomSizedBox(
                height: (_dropValue + 1) * 48,
                child: _caregiversTable(),
              ),
              CustomSizedBox(height: DBL.twenty.val),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  // alignment: Alignment.centerRight,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: EMainAxisAlignment.spaceBetween.val,
                      children: _paginationView(),
                    ),
                    CustomSizedBox(width: DBL.fifteen.val,),
                    CustomText3(
                        "Showing ${_start + 1} to $_end of $totalPages entries"),
                  ],
                ),
              )
            ],
          )
        : const EmptyView(title: "No caregivers found!");
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
          DataColumn2(
            // size: ColumnSize.L,
            fixedWidth: 150,
            label: _columnsView(
                text: AppString.status.val, fontWeight: FontWeight.bold),
          ),
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
              DataCell(_statusBox(e.value)),
              DataCell(Row(
                mainAxisAlignment: MainAxisAlignment.end,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {},
                      child: CustomSvg(
                        path: IMG.eye.val,
                        height:Responsive.isWeb(context)? DBL.fifteen.val:DBL.twelve.val,
                        width: Responsive.isWeb(context)?DBL.twenty.val:DBL.eighteen.val,
                      )),
                  CustomSizedBox(
                    width: DBL.twentyThree.val,
                  ),
                  InkWell(
                      onTap: () {},
                      child: CustomSvg(
                        path: IMG.edit.val,
                        height:Responsive.isWeb(context)? DBL.fifteen.val:DBL.twelve.val,
                        width:Responsive.isWeb(context)? DBL.fifteen.val:DBL.twelve.val,
                      )),
                  CustomSizedBox(
                    width: DBL.twentyThree.val,
                  ),
                  InkWell(
                      onTap: () {},
                      child: CustomSvg(
                        path: IMG.delete.val,
                        height:Responsive.isWeb(context)? DBL.nineteen.val:DBL.seventeen.val,
                        width: Responsive.isWeb(context)? DBL.nineteen.val:DBL.seventeen.val,
                      )),
                ],
              )),
            ],
          );
        }).toList(),
      ),
    );
  }

  List<Widget> _paginationView() {
    return [
      Row(
        mainAxisAlignment: EMainAxisAlignment.center.val,
        children: [
          FxButton(
            onPressed: () {
              if (_page > 1) {
                _page = _page - 1;
                _dataTableBloc.add(CareGiversEvent.getCareGivers(
                    userId: userId, page: _page, limit: INT.ten.val));
              }
            },
            text: 'Previous',
            borderRadius: 0.0,
            borderWidth: 0.0,
            color: ColorConst.white,
            textColor: isDark
                ? null
                : Theme.of(context).colorScheme.onPrimaryContainer,
          ),
          CWrap(
            children: List.generate(
              (totalPages / _dropValue).ceil(),
              (index) {
                int pageIndex = index + 1;
                return FxButton(
                  text: pageIndex.toString(),
                  borderRadius: 0.0,
                  minWidth: 16.0,
                  color: _page == pageIndex
                      ? isDark
                          ? Theme.of(context).colorScheme.inversePrimary
                          : Theme.of(context).colorScheme.onPrimaryContainer
                      : ColorConst.white,
                  textColor: _page == pageIndex
                      ? ColorConst.white
                      : isDark
                          ? null
                          : Theme.of(context).colorScheme.onPrimaryContainer,
                  borderWidth: 0.0,
                  onPressed: () {
                    _page = pageIndex;

                    _dataTableBloc.add(CareGiversEvent.getCareGivers(
                        userId: userId, page: _page, limit: INT.ten.val));
                  },
                );
              },
            ),
          ),
          FxButton(
            onPressed: () {
              if (_page <= (totalPages / _dropValue).ceil() - 1) {
                _page = _page + 1;
                _dataTableBloc.add(CareGiversEvent.getCareGivers(
                    userId: userId, page: _page, limit: INT.ten.val));
              }
            },
            text: Strings.next,
            borderRadius: 0.0,
            borderWidth: 0.0,
            color: ColorConst.white,
            textColor: isDark
                ? null
                : Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        ],
      )
    ];
  }

  Widget _rowsView({
    String? text,
  }) {
    return CustomText3(
      '$text',
      softWrap: true,
      style: TS().gRoboto(
          fontSize:Responsive.isWeb(context)? DBL.thirteenPointFive.val: DBL.twelve.val,

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
          fontSize:Responsive.isWeb(context)? DBL.fourteen.val: DBL.twelve.val,
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
        Expanded(
          child: CustomText3(
            text,
            style: TS().gRoboto(
                fontSize:Responsive.isWeb(context)? DBL.fourteen.val: DBL.twelve.val,
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
            _dataTableBloc.add(CareGiversEvent.isUserActive(item));
          },
        ),
        const SizedBox(
          width: 8,
        ),
        CustomText3(
          item.onBoardingStatus! ? "Active" : "Inactive",
          style: TS().gRoboto(
              color:
                  item.onBoardingStatus! ? AppColor.green.val : AppColor.inactive.val,
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
      pageIndex = ((_page * _dropValue) - 10) + index + 1;
    }
  }


}
