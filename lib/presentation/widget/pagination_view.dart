import 'package:admin_580_tech/presentation/widget/custom_button.dart';
import 'package:flutter/material.dart';

import '../../core/enum.dart';
import 'custom_sizedbox.dart';
import 'custom_text.dart';

class PaginationView extends StatelessWidget {
  const PaginationView({
    Key? key,
    required this.page,
    required this.totalPages,
    required this.onNextPressed,
    required this.onItemPressed,
    required this.onPreviousPressed,
    required this.totalItems,
    required this.start,
    required this.end,
  }) : super(key: key);
  final int page;
  final int totalPages;
  final Function onNextPressed;
  final Function onPreviousPressed;
  final Function(int) onItemPressed;
  final int totalItems;
  final int start;
  final int end;

  @override
  Widget build(BuildContext cqontext) {
    return LayoutBuilder(builder: (context, constraints) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: ConstrainedBox(
          constraints: BoxConstraints(minWidth: constraints.maxWidth),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildPagination(),
              CustomSizedBox(
                width: DBL.fifteen.val,
              ),
              // const Spacer(),
              CustomText3(
                  "${AppString.showing.val} ${start + 1} ${AppString.to.val} $end ${AppString.of.val} $totalItems ${AppString.entries.val}"),
            ],
          ),
        ),
      );
    });
  }

  Row _buildPagination() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              onPressed: () {
                onPreviousPressed();
              },
              text: AppString.previous.val,
              borderRadius: 0.0,
              borderWidth: 0.0,
              color: AppColor.white.val,
              textColor: AppColor.primaryColor.val,
            ),
            for (int i = 1; i <= totalPages; i++)
              if (i == 1 ||
                  i == totalPages ||
                  totalPages <= 5 ||
                  i <= 3 ||
                  i == page ||
                  (i == page - 1 && page - 3 > 1) ||
                  (i == page + 1 && page + 3 < totalPages))
                CustomButton(
                  text: i.toString(),
                  borderRadius: 0.0,
                  minWidth: 16.0,
                  color: page == i
                      ? AppColor.primaryColor.val
                      : AppColor.white.val,
                  textColor: page == i
                      ? AppColor.white.val
                      : AppColor.primaryColor.val,
                  borderWidth: 0.0,
                  onPressed: () {
                    onItemPressed(i);
                  },
                ),
            CustomButton(
              onPressed: () {
                onNextPressed();
              },
              text: AppString.next.val,
              borderRadius: 0.0,
              borderWidth: 0.0,
              color: AppColor.white.val,
              textColor: AppColor.primaryColor.val,
            ),

          ],
        );
  }
}
