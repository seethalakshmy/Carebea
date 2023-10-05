import 'package:admin_580_tech/application/bloc/faq/faq_bloc.dart';
import 'package:admin_580_tech/application/bloc/video_managemnet/video_management_bloc.dart';
import 'package:admin_580_tech/infrastructure/faq/faq_repository.dart';
import 'package:admin_580_tech/infrastructure/video_management/video_management_repository.dart';
import 'package:admin_580_tech/presentation/routes/app_router.gr.dart';
import 'package:auto_route/annotations.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/enum.dart';
import '../../core/properties.dart';
import '../../core/text_styles.dart';
import '../../domain/admins/model/admin_get_response.dart';
import '../../infrastructure/shared_preference/shared_preff_util.dart';
import '../side_menu/side_menu_page.dart';
import '../widget/custom_button.dart';
import '../widget/custom_card.dart';
import '../widget/custom_container.dart';
import '../widget/custom_data_table_2.dart';
import '../widget/custom_icon.dart';
import '../widget/custom_selection_area.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/custom_svg.dart';
import '../widget/custom_text.dart';
import '../widget/custom_text_field.dart';
import '../widget/error_view.dart';
import '../widget/header_view.dart';
import '../widget/loader_view.dart';
import '../widget/pagination_view.dart';
import '../widget/table_actions_view.dart';
import '../widget/table_column_view.dart';
import '../widget/table_loader_view.dart';
import '../widget/table_row_view.dart';

@RoutePage()
class VideoManagementPage extends StatefulWidget {
  const VideoManagementPage({Key? key}) : super(key: key);

  @override
  State<VideoManagementPage> createState() => _VideoManagementPageState();
}

class _VideoManagementPageState extends State<VideoManagementPage> {
  List<ResData> faqs = [];
  int _totalItems = 1;
  final int _limit = 10;
  int _page = 1;
  int _pageIndex = 1;
  int _start = 0;
  int _end = 10;
  final TextEditingController _searchController = TextEditingController();
  final _searchNode = FocusNode();
  String _adminUserId = "";
  final VideoManagementBloc _videoManagementBloc =
      VideoManagementBloc(VideoManagementRepository());
  SharedPreffUtil sharedPrefUtil = SharedPreffUtil();
  String? filterId;

  @override
  Widget build(BuildContext context) {
    _videoManagementBloc.add(
        VideoManagementEvent.getSettings(userId: sharedPrefUtil.getAdminId));
    return FutureBuilder(
      future: SharedPreffUtil().init(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const LoaderView();
        }
        return Column(
          children: [
            HeaderView(
              title: AppString.videoManagement.val,
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

  BlocProvider<VideoManagementBloc> _rebuildView() {
    return BlocProvider(
      create: (context) => _videoManagementBloc
        ..add(VideoManagementEvent.getSettings(
            userId: sharedPrefUtil.getAdminId)),
      child: _bodyView(),
    );
  }

  _bodyView() {
    return BlocBuilder<VideoManagementBloc, VideoManagementState>(
      builder: (_, state) {
        return _cardView(state, context);
      },
    );
  }

  CustomCard _cardView(VideoManagementState state, BuildContext context) {
    return CustomCard(
      shape: PR().roundedRectangleBorder(DBL.five.val),
      elevation: DBL.seven.val,
      child: CustomContainer(
          padding: EdgeInsets.all(DBL.twenty.val),
          child: state.isLoading
              ? const TableLoaderView()
              : state.isError
                  ? ErrorView(isClientError: false, errorMessage: state.error)
                  : _VideoManagementView(context, state)),
    );
  }

  _VideoManagementView(BuildContext context, VideoManagementState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        LayoutBuilder(builder: (context, constraints) {
          return _actionView(constraints, context, state);
        }),
        // mAdmins.isNotEmpty
        //     ?
        Column(
          children: [
            CustomSizedBox(height: DBL.fifteen.val),
            CustomSizedBox(
              height: (_limit + 1) * 48,
              child: _faqTable(state, context),
            ),
            CustomSizedBox(height: DBL.twenty.val),
            // if (_totalItems > 10) _paginationView()
          ],
        )
        // : EmptyView(title: AppString.emptyadmin.val),
      ],
    );
  }

  _faqTable(VideoManagementState state, BuildContext context) {
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
              size: ColumnSize.M,
              label: _tableColumnView(
                "",
              ),
            ),
          ],
          rows: _videoManagementBloc.videoList.asMap().entries.map((e) {
            var item = e.value;
            _pageIndex = e.key + 1;
            return DataRow2(
              cells: [
                DataCell(_tableRowView("", _pageIndex.toString())),
                DataCell(_tableRowView(item.title ?? "", '')),
                DataCell(_tableRowView(
                    "",
                    item.userType == 2
                        ? AppString.forClient.val
                        : AppString.forCa.val)),

                // DataCell(_statusBox(item.status ?? false)),
                DataCell(TableActions(
                  isEdit: sharedPrefUtil.getEditAdmin,
                  onEditTap: sharedPrefUtil.getEditAdmin
                      ? () {
                          autoTabRouter?.navigate(VideoUploadRoute(
                              isEdit: "edit",
                              id: item.id,
                              title: item.title,
                              type: item.userType,
                              attachment: item.attachment));
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

  SingleChildScrollView _actionView(BoxConstraints constraints,
      BuildContext context, VideoManagementState state) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: ConstrainedBox(
        constraints: BoxConstraints(minWidth: constraints.maxWidth),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomSizedBox(
              width: DBL.ten.val,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // _searchField(),
                CustomSizedBox(
                  width: DBL.ten.val,
                ),
                _videoUpload()
              ],
            ),
          ],
        ),
      ),
    );
  }

  _videoUpload() {
    return CustomButton(
        onPressed: () {
          autoTabRouter?.navigate(VideoUploadRoute());
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

  // _searchField() {
  //   return CTextField(
  //     focusNode: _searchNode,
  //     width: _isXs(context) ? DBL.threeFifteen.val : DBL.threeHundred.val,
  //     height: DBL.forty.val,
  //     controller: _searchController,
  //     hintText: AppString.search.val,
  //     hintStyle: TS().gRoboto(fontSize: FS.font15.val, fontWeight: FW.w500.val),
  //     onSubmitted: (String value) {
  //       _searchNode.requestFocus();
  //       _getFaqEvent();
  //     },
  //     suffixIcon: InkWell(
  //       onTap: () {
  //         _getFaqEvent();
  //       },
  //       child: CustomSvg(
  //         path: IMG.search.val,
  //         height: DBL.sixteen.val,
  //         width: DBL.sixteen.val,
  //       ),
  //     ),
  //   );
  // }

  // _getFaqEvent() {
  //   _faqBloc.add(FaqEvent.getFaq(
  //     userId: _adminUserId,
  //     page: _page,
  //     limit: _limit,
  //     // searchTerm: _searchController.text.trim().isNotEmpty
  //     //     ? _searchController.text.trim()
  //     //     : null
  //   ));
  // }

  // _paginationView() {
  //   final int totalPages = (_totalItems / _limit).ceil();
  //   return PaginationView(
  //       page: _page,
  //       start: _start,
  //       end: _end,
  //       totalItems: _totalItems,
  //       totalPages: totalPages,
  //       onNextPressed: () {
  //         if (_page < totalPages) {
  //           _page = _page + 1;
  //           _getFaqEvent();
  //         }
  //       },
  //       onItemPressed: (i) {
  //         _page = i;
  //         _getFaqEvent();
  //       },
  //       onPreviousPressed: () {
  //         if (_page > 1) {
  //           _page = _page - 1;
  //           _getFaqEvent();
  //         }
  //       });
  // }

  bool _isXs(context) => MediaQuery.of(context).size.width <= 544;

  bool isLarge(BuildContext context) =>
      MediaQuery.of(context).size.width <= 1236;

  bool isLg(BuildContext context) => MediaQuery.of(context).size.width <= 1370;

  bool isLg1(BuildContext context) => MediaQuery.of(context).size.width <= 976;

  bool isXs(BuildContext context) => MediaQuery.of(context).size.width <= 760;

  bool isXs1(BuildContext context) => MediaQuery.of(context).size.width <= 780;
}
