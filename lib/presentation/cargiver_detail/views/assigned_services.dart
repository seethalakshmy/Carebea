import 'package:admin_580_tech/application/bloc/caregiver_detail/caregiver_detail_bloc.dart';
import 'package:admin_580_tech/domain/caregiver_detail/model/services.dart';
import 'package:admin_580_tech/presentation/widget/custom_padding.dart';
import 'package:admin_580_tech/presentation/widget/custom_scroll_view.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/enum.dart';
import '../../../core/properties.dart';
import '../../../core/responsive.dart';
import '../../../core/string.dart';
import '../../../core/text_styles.dart';
import '../../widget/cached_image.dart';
import '../../widget/custom_align.dart';
import '../../widget/custom_card.dart';
import '../../widget/custom_container.dart';
import '../../widget/custom_data_table_2.dart';
import '../../widget/custom_expanded.dart';
import '../../widget/custom_row.dart';
import '../../widget/custom_selection_area.dart';
import '../../widget/custom_sizedbox.dart';
import '../../widget/custom_svg.dart';
import '../../widget/custom_text.dart';
import '../../widget/custom_text_field.dart';
import '../../widget/empty_view.dart';
import '../../widget/error_view.dart';

class AssignedServices extends StatefulWidget {
  const AssignedServices(
      {required this.state, required this.mAssignedServices, Key? key})
      : super(key: key);
  final CareGiverDetailState state;
  final List<Services> mAssignedServices;

  @override
  State<AssignedServices> createState() => _AssignedServicesState();
}

class _AssignedServicesState extends State<AssignedServices> {
  final TextEditingController _searchController = TextEditingController();
  final int _dropValue = 10;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      shape: PR().roundedRectangleBorder(DBL.eighteen.val),
      elevation: DBL.seven.val,
      child: CustomContainer(
          child: widget.state.isLoading
              ? loaderView(context)
              : widget.state.isError
                  ? ErrorView(
                      isClientError: false, errorMessage: widget.state.error)
                  : _caregiversView(
                      context,
                      widget.mAssignedServices ?? [],
                    )),
    );
  }

  loaderView(BuildContext context) {
    List<int> shimmerList = List.generate(10, (index) => (index));
    return CustomSizedBox(
        width: MediaQuery.of(context).size.width,
        child: CScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CustomText3(
                  AppString.serviceList.val,
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
                              text: AppString.id.val,
                            ),
                          ),
                          DataColumn2(
                            size: ColumnSize.L,
                            label: _columnsView(
                              text: AppString.client.val,
                            ),
                          ),
                          DataColumn2(
                            size: ColumnSize.L,
                            // fixedWidth: 500,
                            label: _columnsView(
                              text: AppString.location.val,
                            ),
                          ),
                          DataColumn2(
                            size: ColumnSize.L,
                            // fixedWidth: 500,
                            label: _columnsView(
                              text: AppString.service.val,
                            ),
                          ),
                          DataColumn2(
                            size: ColumnSize.L,
                            label: _columnsView(
                              text: AppString.dateTime.val,
                            ),
                          ),
                          DataColumn2(
                            size: ColumnSize.L,
                            label: _columnsView(
                              text: AppString.status.val,
                            ),
                          ),
                        ],
                        rows: shimmerList.asMap().entries.map((e) {
                          return DataRow2(
                            cells: [
                              DataCell(
                                  _rowsView(text: getIndex(e.key).toString())),
                              DataCell(_rowsView(text: " ")),
                              DataCell(_rowsView(text: " ")),
                              DataCell(_rowsView(text: " ")),
                              DataCell(_rowsView(text: " ")),
                              DataCell(_statusBox(1)),
                            ],
                          );
                        }).toList(),
                      ),
                    ))
              ]),
        ));
  }

  _caregiversView(BuildContext context, List<Services> services) {
    return services.isNotEmpty
        ? CustomPadding.only(
         left: DBL.twenty.val, right: DBL.nineteen.val,
          child: CScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CustomSizedBox(height: DBL.four.val,),
                  CustomRow(
                    crossAxisAlignment: ECrossAxisAlignment.center.val,
                    mainAxisAlignment: EMainAxisAlignment.spaceBetween.val,
                    children: [
                      CustomText3(
                        AppString.serviceList.val,
                        style: TS().gRoboto(
                            fontSize: FS.font19.val,
                            fontWeight: FW.w500.val,
                            color: AppColor.black2.val),
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
                    ],
                  ),
                  CustomSizedBox(height: DBL.fifteen.val),
                  CustomSizedBox(
                    height: (_dropValue + 1) * 48,
                    child: _caregiversTable(),
                  ),
                  CustomSizedBox(height: DBL.twenty.val),
                ],
              ),
          ),
        )
        : const EmptyView(title: "No Services found!");
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
                text: AppString.client.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _columnsView(
                text: AppString.service.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _columnsView(
                text: AppString.location.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _columnsView(
                text: AppString.dateTime.val, fontWeight: FontWeight.bold),
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
        rows: widget.mAssignedServices.asMap().entries.map((e) {
          getIndex(e.key);
          var item = e.value;
          return DataRow2(
            cells: [
              DataCell(_rowsView(
                text: getIndex(e.key).toString(),
              )),
              DataCell(_tableRowImage(
                  item.clientName ?? "", item.clientProfile ?? "")),
              DataCell(_rowsView(text: item.service ?? "")),
              DataCell(_rowsView(text: item.location)),
              DataCell(_rowsView(text: item.dateTime)),
              DataCell(_statusBox(item.onBoardingStatus ?? 1)),
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
    return CustomRow(
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

  _statusBox(int status) {
    return CustomContainer(
      color: status == 1
          ? AppColor.green3.val
          : status == 2
              ? AppColor.darkGreen.val
              : AppColor.amberAccentLight.val,
      child: CustomText3(
        status == 1
            ? AppString.active.val
            : status == 2
                ? AppString.completed.val
                : AppString.pending.val,
        style: TS().gRoboto(
          fontWeight: FW.w500.val,
          fontSize: FS.font12.val,
          color: status == 1
              ? AppColor.green3.val
              : status == 2
                  ? AppColor.white.val
                  : AppColor.amber.val,
        ),
      ),
    );
  }

  int getIndex(int index) {
    return index + 1;
  }
}
