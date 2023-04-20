import 'package:admin_580_tech/application/bloc/caregiver_list/data_table_bloc.dart';
import 'package:admin_580_tech/core/color.dart';
import 'package:admin_580_tech/core/image.dart';
import 'package:admin_580_tech/core/responsive.dart';
import 'package:admin_580_tech/core/string.dart';
import 'package:admin_580_tech/core/string_extension.dart';
import 'package:admin_580_tech/core/theme.dart';
import 'package:admin_580_tech/domain/caregiver_list/care_givers_response.dart';
import 'package:admin_580_tech/infrastructure/caregiver_list/care_giver_list_repository.dart';
import 'package:admin_580_tech/presenation/caregiver_list/widgets/caregiver_list.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterx/flutterx.dart';

class CareGiverListPage extends StatefulWidget {
  const CareGiverListPage({Key? key}) : super(key: key);

  @override
  State<CareGiverListPage> createState() => _CareGiverListPageState();
}

class _CareGiverListPageState extends State<CareGiverListPage> {
  final DataTableBloc _dataTableBloc = DataTableBloc(CareGiverListRepository());

  List<Caregivers> mCareGiverList = [];
  int totalPages = 1;
  final int _dropValue = 10;
  int _page = 0;


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget? nextView;
    return Column(
      children: [
        Card(
            shadowColor: ColorConst.primary.withOpacity(0.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            elevation: 7,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              child: Text(
                Strings.caregiver,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            )),
        FxBox.h20,
        BlocProvider(
          create: (context) => _dataTableBloc
            ..add(const DataTableEvent.rebuild(page: 1, limit: 10)),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
            elevation: 7,
            child: Container(
              padding: const EdgeInsets.all(20),
              child: BlocBuilder<DataTableBloc, DataTableState>(
                builder: (context, state) {
                  state.when(initial: () {
                    nextView = const CircularProgressIndicator();
                  }, loading: () {
                    nextView = const CircularProgressIndicator();
                  }, success: (CaregiversResponse? value) {
                    nextView = _bodyView(context, value);
                  }, error: (String? value) {
                    nextView = const Text("got error");
                  });
                  return nextView!;
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column _bodyView(BuildContext context, CaregiversResponse? value) {
    if (value?.status ?? false) {
      if (value?.data?.caregivers != null &&
          value!.data!.caregivers!.isNotEmpty) {
        totalPages = value.data!.pagination!.totals ?? 1;
        mCareGiverList.clear();
        value.data!.caregivers!.asMap().forEach((index, value) {
          var id = index + 1;
          print('index is $id');
          mCareGiverList.add(Caregivers(
            id: index+1,
              userId: value.userId,
              mobile: value.mobile,
              onBoardingStatus: value.onBoardingStatus,
              email: value.email,
              dob: value.dob,
              name: value.name,
              profile: value.profile));
        });
      } else {
        /// empty view
      }
    } else {
      /// empty view
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          Strings.recent.trim(),
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        FxBox.h20,
        SizedBox(
          height: totalPages < _dropValue
              ? (totalPages* 48)
              : (_dropValue + 1) * 48,
          child: DataTable2(
            minWidth: 950,
            dividerThickness: 1.0,
            headingRowHeight: 48,
            dataRowHeight: 48,
            columns: [
              DataColumn2(
                size: ColumnSize.S,
                label:
                    buildColumn(text: Strings.id, fontWeight: FontWeight.bold),
              ),
              DataColumn2(
                size: ColumnSize.L,
                label: buildColumn(
                    text: Strings.name, fontWeight: FontWeight.bold),
              ),
              DataColumn2(
                size: ColumnSize.L,
                label: buildColumn(
                    text: Strings.emailID, fontWeight: FontWeight.bold),
              ),
              DataColumn2(
                size: ColumnSize.L,
                label: buildColumn(
                    text: Strings.phoneNo.capitalize(),
                    fontWeight: FontWeight.bold),
              ),
              DataColumn2(
                size: ColumnSize.M,
                label: buildColumn(
                    text: Strings.status, fontWeight: FontWeight.bold),
              ),
            ],
            rows: mCareGiverList
                .map(
                  (e) => DataRow2(
                    cells: [
                      DataCell(buildRow(text: e.id.toString())),
                      DataCell(_tableRowImage(e.name?.firstName ?? "")),
                      DataCell(buildRow(text: e.email ?? "")),
                      DataCell(buildRow(text: e.mobile)),
                      DataCell(_statusBox(ColorConst.successDark,
                          e.onBoardingStatus ?? "No status")),
                    ],
                  ),
                )
                .toList(),
          ),
        ),
        FxBox.h20,
        Responsive.isMobile(context)
            ? Column(
                children: _pagination(),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: _pagination(),
              )
      ],
    );
  }

  List<Widget> _pagination() {
    return [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FxButton(
            onPressed: () {

              if (_page > 0 ){
                _page = _page -1;
                print('page ${ (_page +1)- 1}');
                _dataTableBloc
                    .add(DataTableEvent.rebuild(page: (_page +1)- 1, limit: 10));
              }

              // updateData();
            },
            text: 'Previous',
            borderRadius: 0.0,
            borderWidth: 0.0,
            color: ColorConst.white,
            textColor: isDark
                ? null
                : Theme.of(context).colorScheme.onPrimaryContainer,
          ),
          Wrap(
            children: List.generate(
              (totalPages / _dropValue).ceil(),
              (index) => FxButton(
                text: '${index + 1}',
                borderRadius: 0.0,
                minWidth: 16.0,
                color: _page == index
                    ? isDark
                        ? Theme.of(context).colorScheme.inversePrimary
                        : Theme.of(context).colorScheme.onPrimaryContainer
                    : ColorConst.white,
                textColor: _page == index
                    ? ColorConst.white
                    : isDark
                        ? null
                        : Theme.of(context).colorScheme.onPrimaryContainer,
                borderWidth: 0.0,
                onPressed: () {
                  _page = index;

                  _dataTableBloc
                      .add(DataTableEvent.rebuild(page: _page, limit: 10));
                  // updateData();
                },
              ),
            ),
          ),
          FxButton(
            onPressed: () {
              if (_page < (totalPages / _dropValue).ceil() - 1) {
                _page = _page + 1;
                print('reached here... $_page');
                _dataTableBloc
                    .add(DataTableEvent.rebuild(page: _page +1, limit: 10));
              }
              // updateData();
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

  Widget buildRow({String? text, FontWeight? fontWeight = FontWeight.w500}) {
    return Text(
      '$text',
      softWrap: true,
      style: TextStyle(fontSize: 13.5, fontWeight: fontWeight),
      textAlign: TextAlign.center,
    );
  }

  Widget buildColumn({String? text, FontWeight? fontWeight = FontWeight.w700}) {
    return Text(
      '$text',
      softWrap: true,
      style: TextStyle(fontSize: 15.5, fontWeight: fontWeight),
      textAlign: TextAlign.center,
    );
  }

  // void updateData() {
  //   print('called update data');
  //   if (_page == 0) {
  //     _start = 0;
  //     _end = totalPages < _dropValue
  //         ? totalPages
  //         : _dropValue;
  //   } else {
  //     _start = _page * _dropValue;
  //     _end = _start +
  //         (totalPages < _dropValue
  //             ? totalPages
  //             : _dropValue);
  //     _end = _end < totalPages ? _end : totalPages;
  //   }
  //   print('valu == $_end and $_dropValue');
  // }

  Widget _tableRowImage(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const CircleAvatar(
          maxRadius: 15,
          backgroundImage: AssetImage(Images.profileImage),
        ),
        FxBox.w10,
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 13.5,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  Widget _statusBox(
    Color? color,
    String text,
  ) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w700,
        color: color,
      ),
    );
  }
}
