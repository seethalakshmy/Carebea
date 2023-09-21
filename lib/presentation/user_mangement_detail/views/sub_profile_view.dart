import 'package:admin_580_tech/application/bloc/user_management_detail/user_management_detail_bloc.dart';
import 'package:admin_580_tech/domain/user_management_detail/model/user_detail_response.dart';
import 'package:admin_580_tech/presentation/routes/app_router.gr.dart';
import 'package:admin_580_tech/presentation/widget/table_loader_view.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

import '../../../core/enum.dart';
import '../../../core/responsive.dart';
import '../../../core/text_styles.dart';
import '../../side_menu/side_menu_page.dart';
import '../../widget/cached_image.dart';
import '../../widget/custom_card.dart';
import '../../widget/custom_container.dart';
import '../../widget/custom_data_table_2.dart';
import '../../widget/custom_padding.dart';
import '../../widget/custom_selection_area.dart';
import '../../widget/custom_sizedbox.dart';
import '../../widget/custom_svg.dart';
import '../../widget/custom_text.dart';
import '../../widget/empty_view.dart';
import '../../widget/error_view.dart';

class SubProfileView extends StatelessWidget {
  const SubProfileView({Key? key, required this.state}) : super(key: key);
  final UserManagementDetailState state;

  @override
  Widget build(BuildContext context) {
    final mSubProfiles = state.response?.data?.subProfiles ?? [];
    return CustomCard(
      elevation: DBL.seven.val,
      child: CustomContainer(
          child: state.isLoading
              ? const TableLoaderView()
              : state.isError
                  ? ErrorView(isClientError: false, errorMessage: state.error)
                  : mSubProfiles.isNotEmpty
                      ? CustomPadding.only(
                          left: DBL.twenty.val,
                          right: DBL.nineteen.val,
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                CustomSizedBox(
                                  height: DBL.four.val,
                                ),
                                CustomSizedBox(
                                  height: (10 + 1) * 48,
                                  child: _profilesTable(mSubProfiles, context),
                                ),
                                CustomSizedBox(height: DBL.twenty.val),
                              ],
                            ),
                          ),
                        )
                      : EmptyView(title: AppString.noProfiles.val)),
    );
  }

  _profilesTable(List<SubProfiles> profiles, BuildContext context) {
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
            label: _columnsView(context,
                text: AppString.slNo.val, fontWeight: FontWeight.bold),
          ),
          // DataColumn2(
          //   size: ColumnSize.S,
          //   fixedWidth: 80,
          //   label: _columnsView(context,
          //       text: AppString.id.val, fontWeight: FontWeight.bold),
          // ),
          DataColumn2(
            size: ColumnSize.L,
            label: _columnsView(context,
                text: AppString.nameAndAge.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _columnsView(context,
                text: AppString.totalServiceCompleted.val,
                fontWeight: FontWeight.bold),
          ),
          const DataColumn2(
            size: ColumnSize.L,
            label: CustomText(""),
          ),
        ],
        rows: profiles.asMap().entries.map((e) {
          getIndex(e.key);
          var item = e.value;
          return DataRow2(
            cells: [
              DataCell(_rowsView(
                context,
                text: getIndex(e.key).toString(),
              )),
              // DataCell(_rowsView(
              //   context,
              //   text: item.id.toString(),
              // )),
              DataCell(_tableRowImage(context,
                  name: "${item.name?.firstName} ${item.name?.lastName}",
                  imgUrl: item.profilePic ?? "",
                  age: item.age ?? '')),
              DataCell(
                  _rowsView(context, text: item.completedServices?.toString())),
              DataCell(InkWell(
                  onTap: () {
                    autoTabRouter
                        ?.navigate(ClientSubProfileDetailsRoute(id: item.id));
                  },
                  child: CustomContainer(
                    alignment: Alignment.centerRight,
                    child: CustomSvg(
                      path: IMG.eye.val,
                      height: Responsive.isWeb(context)
                          ? DBL.fifteen.val
                          : DBL.twelve.val,
                      width: Responsive.isWeb(context)
                          ? DBL.twenty.val
                          : DBL.eighteen.val,
                    ),
                  ))),
            ],
          );
        }).toList(),
      ),
    );
  }

  Widget _rowsView(
    BuildContext context, {
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

  Widget _columnsView(BuildContext context,
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

  Widget _tableRowImage(BuildContext context,
      {required String name, required String imgUrl, required String age}) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: CachedImage(
              height: DBL.thirty.val, width: DBL.thirty.val, imgUrl: imgUrl),
        ),
        CustomSizedBox(width: DBL.twelve.val),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSizedBox(
              height: DBL.ten.val,
            ),
            Expanded(
              flex: 1,
              child: CustomText(
                name,
                style: TS().gRoboto(
                    fontSize: Responsive.isWeb(context)
                        ? DBL.fourteen.val
                        : DBL.twelve.val,
                    fontWeight: FW.w400.val,
                    color: AppColor.rowColor.val),
              ),
            ),
            CustomSizedBox(
              height: DBL.three.val,
            ),
            Expanded(
              flex: 2,
              child: age != ''
                  ? CustomText(
                      "(${age.toString()})",
                      style: TS().gRoboto(
                          fontSize: Responsive.isWeb(context)
                              ? DBL.thirteen.val
                              : DBL.eleven.val,
                          fontWeight: FW.w400.val,
                          color: AppColor.lightGrey7.val),
                    )
                  : SizedBox.shrink(),
            ),
          ],
        ),
      ],
    );
  }

  int getIndex(int index) {
    return index + 1;
  }
}
