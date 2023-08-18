import 'package:admin_580_tech/application/bloc/dashboard/dashboard_bloc.dart';
import 'package:admin_580_tech/infrastructure/dashboard/dashboard_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../core/enum.dart';
import '../../core/text_styles.dart';
import '../../core/utility.dart';
import '../caregiver_detail/widgets/svg_text.dart';
import 'custom_container.dart';
import 'custom_sizedbox.dart';
import 'custom_text.dart';
import 'custom_text_field.dart';

class DashBoardDatePickerWidget extends StatefulWidget {
  const DashBoardDatePickerWidget(
      {Key? key,
      required this.dateController,
      required this.lastDate,
      required this.initialDate,
      required this.firstDate,
      this.labelSize})
      : super(key: key);
  final TextEditingController dateController;
  final double? labelSize;
  final DateTime initialDate;
  final DateTime firstDate;
  final DateTime lastDate;

  @override
  State<DashBoardDatePickerWidget> createState() =>
      _DashBoardDatePickerWidgetState();
}

class _DashBoardDatePickerWidgetState extends State<DashBoardDatePickerWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _datePicker(),
      ],
    );
  }

  _datePicker() {
    return InkWell(
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () async {
        String date = await Utility.selectDateDashboard(
          context,
          widget.initialDate,
          widget.firstDate,
          widget.lastDate,
        );
        print('hai ${DateTime.parse(date)}');
        String formattedDate =
            DateFormat('yyyy-MM-ddTHH:mm:ss').format(DateTime.parse(date));
        print('formaterd date$formattedDate');

        String convertedDate = Utility.detailDate(DateTime.parse(date));
        print("asas $date");
        print("asas $convertedDate");

        setState(() {
          widget.dateController.text = convertedDate;
        });
      },
      child: IgnorePointer(
        child: CustomSizedBox(
          width: 150,
          height: 48,
          child: BlocProvider(
            create: (context) => DashboardBloc(DashboardRepository()),
            child: BlocBuilder<DashboardBloc, DashboardState>(
              builder: (context, state) {
                return CTextField(
                  hintText: Utility.detailDate(DateTime.now()),
                  hintStyle: TS().gRoboto(
                      fontWeight: FW.w400.val,
                      color: AppColor.label.val,
                      fontSize: FS.font16.val),
                  controller: widget.dateController,
                  onTap: () {},
                  onChanged: (val) {},
                  textInputAction: TextInputAction.next,
                  keyBoardType: TextInputType.text,
                  prefixIcon: CustomContainer(
                    alignment: Alignment.center,
                    width: 30,
                    height: 30,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SVGText(
                        path: IMG.calender.val,
                        name: "",
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
