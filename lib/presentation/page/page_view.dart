import 'package:admin_580_tech/presentation/routes/app_router.gr.dart';
import 'package:auto_route/annotations.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/page/page_bloc.dart';
import '../../core/enum.dart';
import '../../core/properties.dart';
import '../../core/text_styles.dart';
import '../../core/utility.dart';
import '../../infrastructure/page/page_repository.dart';
import '../../infrastructure/shared_preference/shared_preff_util.dart';
import '../side_menu/side_menu_page.dart';
import '../widget/custom_button.dart';
import '../widget/custom_card.dart';
import '../widget/custom_container.dart';
import '../widget/custom_data_table_2.dart';
import '../widget/custom_icon.dart';
import '../widget/custom_selection_area.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/custom_text.dart';
import '../widget/error_view.dart';
import '../widget/header_view.dart';
import '../widget/loader_view.dart';
import '../widget/table_actions_view.dart';
import '../widget/table_column_view.dart';
import '../widget/table_loader_view.dart';
import '../widget/table_row_view.dart';

@RoutePage()
class PageListPage extends StatefulWidget {
  const PageListPage({Key? key}) : super(key: key);

  @override
  State<PageListPage> createState() => _PageListPage();
}

class _PageListPage extends State<PageListPage> {
  final int _limit = 10;
  int _pageIndex = 1;
  final PageBloc _pageBloc = PageBloc(PageRepo());
  SharedPreffUtil sharedPrefUtil = SharedPreffUtil();
  String? filterId;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: SharedPreffUtil().init(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const LoaderView();
        }
        return Column(
          children: [
            HeaderView(
              title: AppString.page.val,
            ),
            CustomSizedBox(
              height: DBL.twenty.val,
            ),
            _rebuildView(),
          ],
        );
      },
    );
  }

  BlocProvider<PageBloc> _rebuildView() {
    return BlocProvider(
      create: (context) => _pageBloc..add(const PageEvent.getPages()),
      child: _bodyView(),
    );
  }

  _bodyView() {
    return BlocBuilder<PageBloc, PageState>(
      builder: (_, state) {
        return _cardView(state, context);
      },
    );
  }

  CustomCard _cardView(PageState state, BuildContext context) {
    return CustomCard(
      shape: PR().roundedRectangleBorder(DBL.five.val),
      elevation: DBL.seven.val,
      child: CustomContainer(
          padding: EdgeInsets.all(DBL.twenty.val),
          child: state.when(
              initial: (isLoading, isError, isForClient, response,
                  getPagesResponse, radioValue) {
                if (isError) {
                  return ErrorView(
                    errorMessage: AppString.somethingWentWrong.val,
                    isClientError: false,
                  );
                } else {
                  return _pagesView(context, state);
                }
              },
              loading: () => const TableLoaderView())

          // (state)
          //     ? const TableLoaderView()
          //     : state.isError
          //         ? ErrorView(
          //             isClientError: true,
          //             errorMessage: AppString.somethingWentWrong.val)
          //         : _pagesView(context, state)
          ),
    );
  }

  _pagesView(BuildContext context, PageState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // LayoutBuilder(builder: (context, constraints) {
        //   return _actionView(constraints, context, state);
        // }),
        // mAdmins.isNotEmpty
        //     ?
        CustomSizedBox(height: DBL.fifteen.val),
        CustomSizedBox(
          height: (_limit + 1) * 48,
          child: _pagesTable(state, context),
        ),
        CustomSizedBox(height: DBL.twenty.val)
        // : EmptyView(title: AppString.emptyadmin.val),
      ],
    );
  }

  _pagesTable(PageState state, BuildContext context) {
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
                AppString.title.val,
              ),
            ),
            DataColumn2(
              size: ColumnSize.L,
              label: _tableColumnView(
                AppString.category.val,
              ),
            ),
            DataColumn2(
              size: ColumnSize.L,
              label: _tableColumnView(
                AppString.lastUpdateDate.val,
              ),
            ),
            DataColumn2(
              size: ColumnSize.M,
              label: _tableColumnView(
                "",
              ),
            ),
          ],
          rows: _pageBloc.pageList.asMap().entries.map((e) {
            var item = e.value;
            _pageIndex = e.key + 1;
            return DataRow2(
              onTap: () {
                autoTabRouter?.navigate(RouteCreationRoute(
                    heading: AppString.updatePolicy.val,
                    id: item.id,
                    title: item.title,
                    description: item.description,
                    isEdit: true,
                    forWhom: item.pageFor));
              },
              cells: [
                DataCell(_tableRowView("", _pageIndex.toString())),
                DataCell(_tableRowView("", item.title ?? "")),
                DataCell(_tableRowView(
                    "",
                    item.pageFor == 1
                        ? AppString.forClient.val
                        : item.pageFor == 2
                            ? AppString.forCa.val
                            : AppString.forWebsite.val)),
                DataCell(_tableRowView(
                    "",
                    Utility.generateFormattedDate(
                        (DateTime.parse(item.updatedAt ?? '')
                            .toLocal()
                            .toString())))),

                // DataCell(_statusBox(item.status ?? false)),
                DataCell(TableActions(
                  isDelete: true,
                  onDeleteTap: () {
                    _pageBloc.add(
                        PageEvent.deletePage(id: item.id!, context: context));
                  },
                  isEdit: sharedPrefUtil.getEditAdmin,
                  onEditTap: sharedPrefUtil.getEditAdmin
                      ? () {
                          debugPrint("title inside view ${item.title}");
                          debugPrint(
                              "description inside view ${item.description}");
                          autoTabRouter?.navigate(RouteCreationRoute(
                              heading: AppString.updatePolicy.val,
                              id: item.id,
                              title: item.title,
                              description: item.description,
                              isEdit: true,
                              forWhom: item.pageFor));
                        }
                      : null,
                )),
              ],
            );
          }).toList()
          // }).toList(),
          ),
    );
  }

  TableColumnView _tableColumnView(String name) {
    return TableColumnView(
      text: name,
    );
  }

  Column _tableRowView(String question, String name) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(question,
            maxLines: 2,
            style: TS().gRoboto(
                fontSize: FS.font13.val,
                fontWeight: FW.w500.val,
                color: AppColor.black5.val)),
        TableRowView(
          text: name,
          maxLines: 1,
        ),
      ],
    );
  }

  // SingleChildScrollView _actionView(
  //     BoxConstraints constraints, BuildContext context, PageState state) {
  //   return SingleChildScrollView(
  //     scrollDirection: Axis.horizontal,
  //     child: ConstrainedBox(
  //       constraints: BoxConstraints(minWidth: constraints.maxWidth),
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: [
  //           CustomSizedBox(
  //             width: DBL.ten.val,
  //           ),
  //           Row(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               // _searchField(),
  //               CustomSizedBox(
  //                 width: DBL.ten.val,
  //               ),
  //               _pageCreate()
  //             ],
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  _pageCreate() {
    return CustomButton(
        onPressed: () {
          autoTabRouter
              ?.navigate(RouteCreationRoute(heading: AppString.createNew.val));
        },
        text: AppString.create.val,
        color: AppColor.primaryColor.val,
        height: DBL.fiftyTwo.val,
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
        ));
  }

  bool isLarge(BuildContext context) =>
      MediaQuery.of(context).size.width <= 1236;

  bool isLg(BuildContext context) => MediaQuery.of(context).size.width <= 1370;

  bool isLg1(BuildContext context) => MediaQuery.of(context).size.width <= 976;

  bool isXs(BuildContext context) => MediaQuery.of(context).size.width <= 760;

  bool isXs1(BuildContext context) => MediaQuery.of(context).size.width <= 780;
}
