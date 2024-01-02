import 'package:auto_route/auto_route.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/upcoming-birthdays/upcoming_birthdays_bloc.dart';
import '../../application/bloc/user_managment/user_management_bloc.dart';
import '../../core/enum.dart';
import '../../core/properties.dart';
import '../../core/responsive.dart';
import '../../core/text_styles.dart';
import '../../core/utility.dart';
import '../../domain/upcoming_birthdays/model/upcoming_birthday_response.dart';
import '../../infrastructure/shared_preference/shared_preff_util.dart';
import '../../infrastructure/upcoming_birthday/upcoming_birthday_repository.dart';
import '../routes/app_router.gr.dart';
import '../side_menu/side_menu_page.dart';
import '../widget/cached_image.dart';
import '../widget/custom_button.dart';
import '../widget/custom_card.dart';
import '../widget/custom_container.dart';
import '../widget/custom_data_table_2.dart';
import '../widget/custom_dropdown.dart';
import '../widget/custom_selection_area.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/custom_svg.dart';
import '../widget/custom_text.dart';
import '../widget/empty_view.dart';
import '../widget/error_view.dart';
import '../widget/header_view.dart';
import '../widget/loader_view.dart';
import '../widget/pagination_view.dart';
import '../widget/table_loader_view.dart';

@RoutePage()
class UpcomingBirthdayPage extends StatefulWidget {
  const UpcomingBirthdayPage({Key? key}) : super(key: key);

  @override
  State<UpcomingBirthdayPage> createState() => _UpcomingBirthdayPageState();
}

class _UpcomingBirthdayPageState extends State<UpcomingBirthdayPage> {
  late UpcomingBirthdaysBloc _upcomingBirthdaysBloc;

  List<int> shimmerList = List.generate(10, (index) => (index));
  num _totalItems = 1;

  int pageIndex = 0;
  int _start = 0;
  int _end = 10;

  // final TextEditingController _searchController = TextEditingController();
  String? adminId;
  String? filterId;

  @override
  void initState() {
    super.initState();
    _upcomingBirthdaysBloc =
        UpcomingBirthdaysBloc(UpcomingBirthdayRepository());
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
          adminId = SharedPreffUtil().getAdminId;

          return Column(
            children: [
              HeaderView(title: AppString.upcomingBirthdays.val),
              CustomSizedBox(height: DBL.twenty.val),
              _reBuildView(),
            ],
          );
        });
  }

  BlocProvider<UpcomingBirthdaysBloc> _reBuildView() {
    return BlocProvider(
      create: (context) => _upcomingBirthdaysBloc
        ..add(UpcomingBirthdayEvent.getUpcomingBirthdays(
          userId: adminId ?? '',
          type: _upcomingBirthdaysBloc.filterId.toString(),
          page: _upcomingBirthdaysBloc.page.toString(),
          limit: _upcomingBirthdaysBloc.limit.toString(),
        )),
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
                _statusDropDown(context),
                // _searchField(),
              ],
            ),
            BlocBuilder<UpcomingBirthdaysBloc, UpcomingBirthdayState>(
              builder: (context, state) {
                return state.isLoading
                    ? const TableLoaderView()
                    : state.isError
                        ? ErrorView(
                            isClientError: false, errorMessage: state.error)
                        : _usersView(
                            context, state.upcomingBirthdayResponse, state);
              },
            ),
          ],
        ),
      ),
    );
  }

  _usersView(BuildContext context, UpcomingBirthdayResponse? value,
      UpcomingBirthdayState state) {
    if (value?.status ?? false) {
      if (value?.data?.finalResult != null &&
          value!.data!.finalResult!.isNotEmpty) {
        ///todo change later
        _totalItems = value.data?.pagination?.totals ?? 5000;
        _upcomingBirthdaysBloc.mUserList.clear();
        _upcomingBirthdaysBloc.mUserList.addAll(value.data?.finalResult ?? []);
      }
    }
    // return mUserList.isNotEmpty
    //     ? \
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CustomSizedBox(height: DBL.fifteen.val),
        CustomSizedBox(
          height: (_upcomingBirthdaysBloc.limit + 1) * 48,
          child: _upcomingBirthdaysBloc.mUserList.isNotEmpty
              ? _usersTable(state, context)
              : EmptyView(title: AppString.noUsersFound.val),
        ),
        CustomSizedBox(height: DBL.twenty.val),
        _upcomingBirthdaysBloc.mUserList.isNotEmpty
            ? _paginationView()
            : const SizedBox.shrink()
      ],
    );
  }

  // CTextField _searchField() {
  //   return CTextField(
  //     width: DBL.threeFifteen.val,
  //     height: DBL.forty.val,
  //     controller: _upcomingBirthdaysBloc.searchController,
  //     hintText: AppString.search.val,
  //     hintStyle: TS().gRoboto(fontSize: FS.font15.val, fontWeight: FW.w500.val),
  //     onChanged: (String value) {
  //       // _userBloc.searchController.text.isEmpty ||
  //       //         _userBloc.searchController.text == ''
  //       //     ?
  //       _userBloc.add(UserManagementEvent.getUsers(
  //           userId: adminId ?? '',
  //           page: _userBloc.page.toString(),
  //           limit: _userBloc.limit.toString(),
  //           searchTerm: _userBloc.searchController.text.trim(),
  //           filterId: _userBloc.filterId));
  //       // : null;
  //     },
  //     onSubmitted: (String value) {
  //       _userBloc.page = 1;
  //       _userBloc.add(UserManagementEvent.getUsers(
  //           userId: adminId ?? '',
  //           page: _userBloc.page.toString(),
  //           limit: _userBloc.limit.toString(),
  //           searchTerm: _userBloc.searchController.text.trim(),
  //           filterId: _userBloc.filterId));
  //       debugPrint('user list length ${_userBloc.mUserList.isEmpty}');
  //     },
  //     suffixIcon: InkWell(
  //       onTap: () {
  //         _userBloc.add(UserManagementEvent.getUsers(
  //             userId: adminId ?? '',
  //             page: _userBloc.page.toString(),
  //             limit: _userBloc.limit.toString(),
  //             searchTerm: _userBloc.searchController.text.trim(),
  //             filterId: _userBloc.filterId));
  //       },
  //       child: CustomSvg(
  //         path: IMG.search.val,
  //         height: DBL.sixteen.val,
  //         width: DBL.sixteen.val,
  //       ),
  //     ),
  //   );
  // }

  CustomDropdown<int> _statusDropDown(BuildContext context) {
    return CustomDropdown<int>(
      onChange: (int value, int index) {
        _upcomingBirthdaysBloc.page = 1;
        _upcomingBirthdaysBloc.filterId = 1;
        _upcomingBirthdaysBloc.add(UpcomingBirthdayEvent.getUpcomingBirthdays(
            userId: adminId ?? '',
            type: _upcomingBirthdaysBloc.filterId.toString(),
            page: _upcomingBirthdaysBloc.page.toString(),
            limit: _upcomingBirthdaysBloc.limit.toString()));
      },
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
      items: [AppString.all.val, AppString.active.val, AppString.inActive.val]
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
    );
  }

  _paginationView() {
    final int totalPages = (_totalItems / _upcomingBirthdaysBloc.limit).ceil();
    return BlocBuilder<UpcomingBirthdaysBloc, UpcomingBirthdayState>(
      builder: (context, state) {
        if (_upcomingBirthdaysBloc.page == 1) {
          _start = 0;
          _end = _upcomingBirthdaysBloc.mUserList.length <
                  _upcomingBirthdaysBloc.limit
              ? _upcomingBirthdaysBloc.mUserList.length
              : _upcomingBirthdaysBloc.limit;
        } else {
          _start =
              (_upcomingBirthdaysBloc.page * _upcomingBirthdaysBloc.limit) - 10;
          _end = _start + _upcomingBirthdaysBloc.mUserList.length;
        }

        return PaginationView(
            page: _upcomingBirthdaysBloc.page,
            totalPages: totalPages,
            end: _end,
            totalItems: _totalItems.toInt(),
            start: _start,
            onNextPressed: () {
              if (_upcomingBirthdaysBloc.page < totalPages) {
                _upcomingBirthdaysBloc.page = _upcomingBirthdaysBloc.page + 1;
                _upcomingBirthdaysBloc.add(
                    UpcomingBirthdayEvent.getUpcomingBirthdays(
                        userId: adminId ?? '',
                        type: _upcomingBirthdaysBloc.filterId.toString(),
                        page: _upcomingBirthdaysBloc.page.toString(),
                        limit: _upcomingBirthdaysBloc.limit.toString()));
                updateData();
              }
            },
            onItemPressed: (i) {
              _upcomingBirthdaysBloc.page = i;
              _upcomingBirthdaysBloc.add(
                  UpcomingBirthdayEvent.getUpcomingBirthdays(
                      userId: adminId ?? '',
                      type: _upcomingBirthdaysBloc.filterId.toString(),
                      page: _upcomingBirthdaysBloc.page.toString(),
                      limit: _upcomingBirthdaysBloc.limit.toString()));
              updateData();
            },
            onPreviousPressed: () {
              if (_upcomingBirthdaysBloc.page > 1) {
                _upcomingBirthdaysBloc.page = _upcomingBirthdaysBloc.page - 1;
                _upcomingBirthdaysBloc.add(
                    UpcomingBirthdayEvent.getUpcomingBirthdays(
                        userId: adminId ?? '',
                        type: _upcomingBirthdaysBloc.filterId.toString(),
                        page: _upcomingBirthdaysBloc.page.toString(),
                        limit: _upcomingBirthdaysBloc.limit.toString()));
                updateData();
              }
            });
      },
    );
  }

  _usersTable(UpcomingBirthdayState state, BuildContext context) {
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
                text: AppString.dateOfBirth.val, fontWeight: FontWeight.bold),
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
        rows: _upcomingBirthdaysBloc.mUserList.asMap().entries.map((e) {
          setIndex(e.key);
          var item = e.value;
          return DataRow2(
            onTap: () {},
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
              DataCell(_rowsView(
                  text: Utility.detailDate(
                      (DateTime.parse(item.dob ?? '').toLocal())))),
              //     DataCell(_rowsView(text: item.clientID)),
              //   DataCell(_rowsView(text: item.date)),
              // DataCell(_tableSwitchBox(item)),

              // DataCell(_statusBox(item.isActive ?? false)),
              DataCell(Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(
                    height: 45,
                    minWidth: 100,
                    onPressed: () {
                      autoTabRouter
                          ?.navigate(SendGiftRoute(userId: item.userId));
                    },
                    text: AppString.sendGift.val,
                    color: AppColor.primaryColor.val,
                    textColor: AppColor.white.val,
                    borderWidth: 1,
                  ),

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
    if (_upcomingBirthdaysBloc.page == 1) {
      pageIndex = index + 1;
    } else {
      pageIndex =
          ((_upcomingBirthdaysBloc.page * _upcomingBirthdaysBloc.limit) - 10) +
              index +
              1;
    }
  }

  void updateData() {
    if (_upcomingBirthdaysBloc.page == 1) {
      _start = 0;
      _end =
          _upcomingBirthdaysBloc.mUserList.length < _upcomingBirthdaysBloc.limit
              ? _upcomingBirthdaysBloc.mUserList.length
              : _upcomingBirthdaysBloc.limit;
    } else {
      _start =
          (_upcomingBirthdaysBloc.page * _upcomingBirthdaysBloc.limit) - 10;
      _end = _start + _upcomingBirthdaysBloc.mUserList.length;
    }
  }

  bool isXs(context) => MediaQuery.of(context).size.width <= 560;
}
