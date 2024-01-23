// import 'package:admin_580_tech/application/bloc/user_management_detail/user_management_detail_bloc.dart';
// import 'package:admin_580_tech/domain/user_management_detail/model/user_detail_response.dart';
// import 'package:admin_580_tech/presentation/routes/app_router.gr.dart';
// import 'package:admin_580_tech/presentation/widget/table_loader_view.dart';
// import 'package:data_table_2/data_table_2.dart';
// import 'package:flutter/material.dart';
//
// import '../../../core/enum.dart';
// import '../../../core/responsive.dart';
// import '../../../core/text_styles.dart';
// import '../../side_menu/side_menu_page.dart';
// import '../../widget/cached_image.dart';
// import '../../widget/custom_card.dart';
// import '../../widget/custom_container.dart';
// import '../../widget/custom_data_table_2.dart';
// import '../../widget/custom_padding.dart';
// import '../../widget/custom_selection_area.dart';
// import '../../widget/custom_sizedbox.dart';
// import '../../widget/custom_svg.dart';
// import '../../widget/custom_text.dart';
// import '../../widget/empty_view.dart';
// import '../../widget/error_view.dart';
//
// class SubProfileView extends StatelessWidget {
//   const SubProfileView({Key? key, required this.state}) : super(key: key);
//   final UserManagementDetailState state;
//
//   @override
//   Widget build(BuildContext context) {
//     final mSubProfiles = state.response?.data?.subProfiles ?? [];
//     return CustomCard(
//       elevation: DBL.seven.val,
//       child: CustomContainer(
//           child: state.isLoading
//               ? const TableLoaderView()
//               : state.isError
//                   ? ErrorView(isClientError: false, errorMessage: state.error)
//                   : mSubProfiles.isNotEmpty
//                       ? CustomPadding.only(
//                           left: DBL.twenty.val,
//                           right: DBL.nineteen.val,
//                           child: SingleChildScrollView(
//                             physics: const NeverScrollableScrollPhysics(),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: <Widget>[
//                                 CustomSizedBox(
//                                   height: DBL.four.val,
//                                 ),
//                                 CustomSizedBox(
//                                   height: (10 + 1) * 48,
//                                   child: _profilesTable(mSubProfiles, context),
//                                 ),
//                                 CustomSizedBox(height: DBL.twenty.val),
//                               ],
//                             ),
//                           ),
//                         )
//                       : EmptyView(title: AppString.noProfiles.val)),
//     );
//   }
//
//   _profilesTable(List<SubProfiles> profiles, BuildContext context) {
//     return CSelectionArea(
//       child: CDataTable2(
//         minWidth: 950,
//         dividerThickness: .3,
//         headingRowHeight: 48,
//         dataRowHeight: 60,
//         columns: [
//           DataColumn2(
//             size: ColumnSize.S,
//             fixedWidth: 80,
//             label: _columnsView(context,
//                 text: AppString.slNo.val, fontWeight: FontWeight.bold),
//           ),
//           // DataColumn2(
//           //   size: ColumnSize.S,
//           //   fixedWidth: 80,
//           //   label: _columnsView(context,
//           //       text: AppString.id.val, fontWeight: FontWeight.bold),
//           // ),
//           DataColumn2(
//             size: ColumnSize.L,
//             label: _columnsView(context,
//                 text: AppString.nameAndAge.val, fontWeight: FontWeight.bold),
//           ),
//           DataColumn2(
//             size: ColumnSize.L,
//             label: _columnsView(context,
//                 text: AppString.totalServiceCompleted.val,
//                 fontWeight: FontWeight.bold),
//           ),
//           DataColumn2(
//             size: ColumnSize.L,
//             label: _columnsView(context,
//                 text: AppString.subscriptionLabel.val,
//                 fontWeight: FontWeight.bold),
//           ),
//           DataColumn2(
//             size: ColumnSize.L,
//             label: _columnsView(context,
//                 text: AppString.status.val, fontWeight: FontWeight.bold),
//           ),
//           const DataColumn2(
//             size: ColumnSize.L,
//             label: CustomText(""),
//           ),
//         ],
//         rows: profiles.asMap().entries.map((e) {
//           getIndex(e.key);
//           var item = e.value;
//           return DataRow2(
//             onTap: () {
//               autoTabRouter
//                   ?.navigate(ClientSubProfileDetailsRoute(id: item.id));
//             },
//             cells: [
//               DataCell(_rowsView(
//                 context,
//                 text: getIndex(e.key).toString(),
//               )),
//               // DataCell(_rowsView(
//               //   context,
//               //   text: item.id.toString(),
//               // )),
//               DataCell(_tableRowImage(context,
//                   name: "${item.name?.firstName} ${item.name?.lastName}",
//                   imgUrl: item.profilePic ?? "",
//                   age: item.age ?? '')),
//               DataCell(
//                   _rowsView(context, text: item.completedServices?.toString())),
//               DataCell(_rowsView(context,
//                   icon: item.isSubscribed == true ? Icons.check : Icons.close)),
//               DataCell(InkWell(
//                 onTap: () {
//                   debugPrint('isDelete ${item.isDelete}');
//                 },
//                 child: _rowsView(context,
//                     text: item.isDelete == true
//                         ? AppString.deleted.val
//                         : AppString.active.val),
//               )),
//               DataCell(InkWell(
//                   onTap: () {
//                     autoTabRouter
//                         ?.navigate(ClientSubProfileDetailsRoute(id: item.id));
//                   },
//                   child: CustomContainer(
//                     alignment: Alignment.centerRight,
//                     child: CustomSvg(
//                       path: IMG.eye.val,
//                       height: Responsive.isWeb(context)
//                           ? DBL.fifteen.val
//                           : DBL.twelve.val,
//                       width: Responsive.isWeb(context)
//                           ? DBL.twenty.val
//                           : DBL.eighteen.val,
//                     ),
//                   ))),
//             ],
//           );
//         }).toList(),
//       ),
//     );
//   }
//
//   Widget _rowsView(
//     BuildContext context, {
//     String? text,
//     IconData? icon,
//   }) {
//     return icon == null
//         ? CustomText(
//             '$text',
//             softWrap: true,
//             style: TS().gRoboto(
//                 fontSize: Responsive.isWeb(context)
//                     ? DBL.thirteenPointFive.val
//                     : DBL.twelve.val,
//                 fontWeight: FW.w400.val,
//                 color: AppColor.rowColor.val),
//             textAlign: TextAlign.start,
//           )
//         : Icon(
//             icon,
//             size: 12,
//             color: AppColor.darkGrey.val,
//           );
//   }
//
//   Widget _columnsView(BuildContext context,
//       {String? text, FontWeight? fontWeight = FontWeight.w600}) {
//     return CustomText(
//       '$text',
//       softWrap: true,
//       style: TS().gRoboto(
//           fontSize:
//               Responsive.isWeb(context) ? DBL.fourteen.val : DBL.twelve.val,
//           fontWeight: fontWeight,
//           color: AppColor.columColor.val),
//       textAlign: TextAlign.center,
//     );
//   }
//
//   Widget _tableRowImage(BuildContext context,
//       {required String name, required String imgUrl, required String age}) {
//     return Row(
//       children: [
//         ClipRRect(
//           borderRadius: BorderRadius.circular(10),
//           child: CachedImage(
//               height: DBL.thirty.val, width: DBL.thirty.val, imgUrl: imgUrl),
//         ),
//         CustomSizedBox(width: DBL.twelve.val),
//         Flexible(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               CustomSizedBox(
//                 height: DBL.ten.val,
//               ),
//               Expanded(
//                 flex: 2,
//                 child: CustomText(
//                   name,
//                   style: TS().gRoboto(
//                       fontSize: Responsive.isWeb(context)
//                           ? DBL.fourteen.val
//                           : DBL.twelve.val,
//                       fontWeight: FW.w400.val,
//                       color: AppColor.rowColor.val),
//                 ),
//               ),
//               CustomSizedBox(
//                 height: DBL.three.val,
//               ),
//               Expanded(
//                 flex: 2,
//                 child: age != ''
//                     ? CustomText(
//                         "(${age.toString()})",
//                         style: TS().gRoboto(
//                             fontSize: Responsive.isWeb(context)
//                                 ? DBL.thirteen.val
//                                 : DBL.eleven.val,
//                             fontWeight: FW.w400.val,
//                             color: AppColor.lightGrey7.val),
//                       )
//                     : SizedBox.shrink(),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
//
//   int getIndex(int index) {
//     return index + 1;
//   }
// }
import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/bloc/user_management_detail/user_management_detail_bloc.dart';
import '../../../core/enum.dart';
import '../../../core/properties.dart';
import '../../../core/responsive.dart';
import '../../../core/text_styles.dart';
import '../../../domain/user_management_detail/model/sub_client_response.dart';
import '../../../infrastructure/shared_preference/shared_preff_util.dart';
import '../../../infrastructure/user_management_detail/user_management_detail_repository.dart';
import '../../routes/app_router.gr.dart';
import '../../side_menu/side_menu_page.dart';
import '../../widget/cached_image.dart';
import '../../widget/custom_card.dart';
import '../../widget/custom_container.dart';
import '../../widget/custom_data_table_2.dart';
import '../../widget/custom_dropdown.dart';
import '../../widget/custom_selection_area.dart';
import '../../widget/custom_sizedbox.dart';
import '../../widget/custom_svg.dart';
import '../../widget/custom_text.dart';
import '../../widget/custom_text_field.dart';
import '../../widget/empty_view.dart';
import '../../widget/error_view.dart';
import '../../widget/loader_view.dart';
import '../../widget/pagination_view.dart';
import '../../widget/table_loader_view.dart';

@RoutePage()
class SubProfileView extends StatefulWidget {
  SubProfileView({Key? key, required this.userId}) : super(key: key);

  String userId;

  @override
  State<SubProfileView> createState() => _SubProfileViewState();
}

class _SubProfileViewState extends State<SubProfileView> {
  late UserManagementDetailBloc _userBloc;

  List<int> shimmerList = List.generate(10, (index) => (index));
  int _totalItems = 1;

  int pageIndex = 0;
  int _start = 0;
  int _end = 10;
  // final TextEditingController _searchController = TextEditingController();
  // bool? filterId;

  @override
  void initState() {
    super.initState();
    _userBloc = UserManagementDetailBloc(UserManagementDetailRepository());
  }

  @override
  void dispose() {
    super.dispose();
    // _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: SharedPreffUtil().init(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return LoaderView();
          }

          return Column(
            children: [
              _reBuildView(),
            ],
          );
        });
  }

  BlocProvider<UserManagementDetailBloc> _reBuildView() {
    return BlocProvider(
      create: (context) => _userBloc
        ..add(UserManagementDetailEvent.getSubClients(
            userId: widget.userId,
            page: _userBloc.page.toString(),
            limit: _userBloc.limit.toString(),
            searchTerm: _userBloc.searchController.text.trim())),
      // ..add(UserManagementEvent.getUsers(
      //     userId: adminId ?? '',
      //     page: _userBloc.page.toString(),
      //     limit: _userBloc.limit.toString(),
      //     searchTerm: _userBloc.searchController.text.trim(),
      //     filterId: _userBloc.filterId)),
      child: _bodyView(),
    );
  }

  CustomCard _bodyView() {
    return CustomCard(
      shape: PR().roundedRectangleBorder(DBL.eighteen.val),
      elevation: DBL.seven.val,
      child: CustomContainer(
        padding: EdgeInsets.all(DBL.twenty.val),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // _statusDropDown(context),
                _searchField(),
              ],
            ),
            BlocBuilder<UserManagementDetailBloc, UserManagementDetailState>(
              builder: (context, state) {
                return state.isLoading
                    ? const TableLoaderView()
                    : state.isError
                        ? ErrorView(
                            isClientError: false, errorMessage: state.error)
                        : _usersView(context, state.subClientResponse, state);
              },
            ),
          ],
        ),
      ),
    );
  }

  _usersView(BuildContext context, SubClientResponse? value,
      UserManagementDetailState state) {
    if (value?.status ?? false) {
      if (value?.data?.profiles != null && value!.data!.profiles!.isNotEmpty) {
        ///todo change later
        _totalItems = (value.data?.totalCount)?.toInt() ?? 5000;
        _userBloc.subUserList.clear();
        _userBloc.subUserList.addAll(value.data?.profiles ?? []);
        debugPrint("dataaaaa ${_userBloc.subUserList}");
      }
    }
    // return mUserList.isNotEmpty
    //     ? \
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CustomSizedBox(height: DBL.fifteen.val),
        CustomSizedBox(
          height: (_userBloc.limit + 1) * 48,
          child: _userBloc.subUserList.isNotEmpty
              ? _usersTable(state, context)
              : EmptyView(title: AppString.noUsersFound.val),
        ),
        CustomSizedBox(height: DBL.twenty.val),
        _userBloc.subUserList.isNotEmpty
            ? _paginationView()
            : const SizedBox.shrink()
      ],
    );
  }

  CTextField _searchField() {
    return CTextField(
      width: DBL.threeFifteen.val,
      height: DBL.forty.val,
      controller: _userBloc.searchController,
      hintText: AppString.search.val,
      hintStyle: TS().gRoboto(fontSize: FS.font15.val, fontWeight: FW.w500.val),
      onChanged: (String value) {
        // _userBloc.searchController.text.isEmpty ||
        //         _userBloc.searchController.text == ''
        //     ?
        _userBloc.add(UserManagementDetailEvent.getSubClients(
            userId: widget.userId,
            page: _userBloc.page.toString(),
            limit: _userBloc.limit.toString(),
            searchTerm: _userBloc.searchController.text.trim()));
        // _userBloc.add(UserManagementEvent.getUsers(
        //     userId: adminId ?? '',
        //     page: _userBloc.page.toString(),
        //     limit: _userBloc.limit.toString(),
        //     searchTerm: _userBloc.searchController.text.trim(),
        //     filterId: _userBloc.filterId));
        // : null;
      },
      onSubmitted: (String value) {
        _userBloc.page = 1;
        _userBloc.add(UserManagementDetailEvent.getSubClients(
            userId: widget.userId,
            page: _userBloc.page.toString(),
            limit: _userBloc.limit.toString(),
            searchTerm: _userBloc.searchController.text.trim()));

        // _userBloc.add(UserManagementEvent.getUsers(
        //     userId: adminId ?? '',
        //     page: _userBloc.page.toString(),
        //     limit: _userBloc.limit.toString(),
        //     searchTerm: _userBloc.searchController.text.trim(),
        //     filterId: _userBloc.filterId));
      },
      suffixIcon: InkWell(
        onTap: () {
          _userBloc.add(UserManagementDetailEvent.getSubClients(
              userId: widget.userId,
              page: _userBloc.page.toString(),
              limit: _userBloc.limit.toString(),
              searchTerm: _userBloc.searchController.text.trim()));
        },
        child: CustomSvg(
          path: IMG.search.val,
          height: DBL.sixteen.val,
          width: DBL.sixteen.val,
        ),
      ),
    );
  }

  // CustomDropdown<int> _statusDropDown(BuildContext context) {
  //   return CustomDropdown<int>(
  //     onChange: (int value, int index) {
  //       _userBloc.page = 1;
  //       _userBloc.filterId = index == 1
  //           ? true
  //           : index == 2
  //               ? false
  //               : null;
  //
  //       _userBloc.add(UserManagementEvent.getUsers(
  //           userId: adminId ?? '',
  //           page: _userBloc.page.toString(),
  //           limit: _userBloc.limit.toString(),
  //           searchTerm: _userBloc.searchController.text.trim(),
  //           filterId: _userBloc.filterId));
  //     },
  //     dropdownButtonStyle: DropdownButtonStyle(
  //       mainAxisAlignment: MainAxisAlignment.start,
  //       width: DBL.oneForty.val,
  //       height:
  //           Responsive.isMobile(context) ? DBL.fortyFive.val : DBL.forty.val,
  //       elevation: DBL.zero.val,
  //       padding: EdgeInsets.only(left: DBL.fifteen.val),
  //       backgroundColor: Colors.white,
  //       primaryColor: AppColor.white.val,
  //     ),
  //     dropdownStyle: DropdownStyle(
  //       borderRadius: BorderRadius.circular(DBL.zero.val),
  //       elevation: 2,
  //       color: AppColor.white.val,
  //       padding: EdgeInsets.all(DBL.five.val),
  //     ),
  //     items: [AppString.all.val, AppString.active.val, AppString.inActive.val]
  //         .asMap()
  //         .entries
  //         .map(
  //           (item) => DropdownItem<int>(
  //             value: item.key,
  //             child: Padding(
  //               padding: EdgeInsets.all(DBL.eight.val),
  //               child: Text(
  //                 item.value,
  //                 style: TS().gRoboto(
  //                     fontWeight: FW.w500.val,
  //                     fontSize: FS.font15.val,
  //                     color: AppColor.columColor2.val),
  //               ),
  //             ),
  //           ),
  //         )
  //         .toList(),
  //     child: CustomText(
  //       AppString.status.val,
  //       style: TS().gRoboto(
  //           fontWeight: FW.w500.val,
  //           fontSize: FS.font15.val,
  //           color: AppColor.columColor2.val),
  //     ),
  //   );
  // }

  _paginationView() {
    final int totalPages = (_totalItems / _userBloc.limit).ceil();
    return BlocBuilder<UserManagementDetailBloc, UserManagementDetailState>(
      builder: (context, state) {
        if (_userBloc.page == 1) {
          _start = 0;
          _end = _userBloc.subUserList.length < _userBloc.limit
              ? _userBloc.subUserList.length
              : _userBloc.limit;
        } else {
          _start = (_userBloc.page * _userBloc.limit) - 10;
          _end = (_start + _userBloc.subUserList.length).toInt();
        }

        return PaginationView(
            page: _userBloc.page,
            totalPages: totalPages,
            end: _end,
            totalItems: _totalItems,
            start: _start,
            onNextPressed: () {
              if (_userBloc.page < totalPages) {
                _userBloc.page = _userBloc.page + 1;
                _userBloc.add(UserManagementDetailEvent.getSubClients(
                    userId: widget.userId,
                    page: _userBloc.page.toString(),
                    limit: _userBloc.limit.toString(),
                    searchTerm: _userBloc.searchController.text.trim()));

                updateData();
              }
            },
            onItemPressed: (i) {
              _userBloc.page = i;
              _userBloc.add(UserManagementDetailEvent.getSubClients(
                  userId: widget.userId,
                  page: _userBloc.page.toString(),
                  limit: _userBloc.limit.toString(),
                  searchTerm: _userBloc.searchController.text.trim()));

              updateData();
            },
            onPreviousPressed: () {
              if (_userBloc.page > 1) {
                _userBloc.page = _userBloc.page - 1;
                _userBloc.add(UserManagementDetailEvent.getSubClients(
                    userId: widget.userId,
                    page: _userBloc.page.toString(),
                    limit: _userBloc.limit.toString(),
                    searchTerm: _userBloc.searchController.text.trim()));

                updateData();
              }
            });
      },
    );
  }

  _usersTable(UserManagementDetailState state, BuildContext context) {
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
            size: ColumnSize.L,
            fixedWidth: Responsive.isWeb(context)
                ? MediaQuery.of(context).size.width * .17
                : DBL.twoHundred.val,
            label: _columnsView(
                text: AppString.clientName.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            size: ColumnSize.L,
            label: _columnsView(
                text: AppString.emailAddress.val, fontWeight: FontWeight.bold),
          ),
          DataColumn2(
            size: ColumnSize.M,
            label: _columnsView(
                text: AppString.phoneNumber.val, fontWeight: FontWeight.bold),
          ),
          /*  DataColumn2(
            size: ColumnSize.L,
            label: _columnsView(
                text: AppString.clientId.val, fontWeight: FontWeight.bold),
          ),*/
          /* DataColumn2(
            size: ColumnSize.L,
            label: _columnsView(
                text: AppString.createdDate.val, fontWeight: FontWeight.bold),
          ),*/
          // DataColumn2(
          //   size: ColumnSize.S,
          //   label: _columnsView(
          //       text: AppString.status.val, fontWeight: FontWeight.bold),
          // ),
          DataColumn2(
            size: ColumnSize.S,
            fixedWidth: Responsive.isWeb(context)
                ? MediaQuery.of(context).size.width * .1
                : DBL.oneSeventy.val,
            label: const CustomText(""),
          ),
        ],
        rows: _userBloc.subUserList.asMap().entries.map((e) {
          setIndex(e.key);
          var item = e.value;
          debugPrint("items ${e.value}");
          return DataRow2(
            onTap: () {
              autoTabRouter
                  ?.navigate(ClientSubProfileDetailsRoute(id: item.id));
            },
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
              //     DataCell(_rowsView(text: item.clientID)),
              //   DataCell(_rowsView(text: item.date)),
              // DataCell(_tableSwitchBox(item)),

              // DataCell(_statusBox(item.isActive ?? false)),
              DataCell(Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: () {
                        autoTabRouter?.navigate(
                            ClientSubProfileDetailsRoute(id: item.id));
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
          child: Tooltip(
            message: text,
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
        ),
      ],
    );
  }

  Widget _rowsView({
    String? text,
  }) {
    return Tooltip(
      message: text,
      child: CustomText(
        '$text',
        softWrap: true,
        style: TS().gRoboto(
            fontSize: Responsive.isWeb(context)
                ? DBL.thirteenPointFive.val
                : DBL.twelve.val,
            fontWeight: FW.w400.val,
            color: AppColor.rowColor.val),
        textAlign: TextAlign.start,
        overflow: TextOverflow.ellipsis,
      ),
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
      textAlign: TextAlign.center,
    );
  }

  // _statusBox(bool isActive) {
  //   return CustomContainer.decoration(
  //     width: DBL.seventy.val,
  //     height: DBL.thirty.val,
  //     padding:
  //         EdgeInsets.symmetric(vertical: DBL.five.val, horizontal: DBL.ten.val),
  //     decoration: BoxDecoration(
  //         color: isActive ? AppColor.green3.val : AppColor.offWhite.val,
  //         borderRadius: PR().circularRadius(DBL.eight.val)),
  //     child: CustomText(
  //       textAlign: TextAlign.center,
  //       isActive ? AppString.active.val : AppString.inActive.val,
  //       style: TS().gRoboto(
  //         fontWeight: FW.w500.val,
  //         fontSize: FS.font12.val,
  //         color: isActive ? AppColor.green.val : AppColor.lightGrey6.val,
  //       ),
  //     ),
  //   );
  // }

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
      _end = _userBloc.subUserList.length < _userBloc.limit
          ? _userBloc.subUserList.length
          : _userBloc.limit;
    } else {
      _start = (_userBloc.page * _userBloc.limit) - 10;
      _end = _start + _userBloc.subUserList.length;
    }
  }

  // _tableSwitchBox(FinalResult item) {
  //   log("rebuilded ${item.status} ${item.name?.firstName}");
  //
  //   return TableSwitchBox(
  //     value: item.status!,
  //     onToggle: () {
  //       bool status = item.status == true ? false : true;
  //       _userBloc.add(UserManagementEvent.changeClientStatus(
  //         userId: item.id ?? '',
  //         adminId: adminId ?? '',
  //         status: status,
  //         context: context,
  //       ));
  //       _userBloc.searchController.clear();
  //     },
  //   );
  // }

  bool isXs(context) => MediaQuery.of(context).size.width <= 560;
}
