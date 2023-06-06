import 'package:admin_580_tech/presentation/widget/custom_button.dart';
import 'package:flutter/material.dart';

import '../../core/enum.dart';

class PaginationView extends StatelessWidget {
   const PaginationView({
    Key? key,
    required this.page,
    required this.totalPages,
    required this.onNextPressed,
    required this.onItemPressed,
    required this.onPreviousPressed,
  }) : super(key: key);
  final int page;
  final int totalPages;
  final Function onNextPressed;
  final Function onPreviousPressed;
  final Function(int) onItemPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              onPressed: () {
                // if (page > 1) {
                //   page = page - 1;
                //   // _userBloc.add(UserManagementEvent.getUsers(
                //   //     userId: userId, page: page, limit: _limit));
                // }
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
                    // page = i;
                    // _userBloc.add(UserManagementEvent.getUsers(
                    //     userId: userId, page: page, limit: _limit));
                  },
                ),
            CustomButton(
              onPressed: () {
                // if (page < totalPages) {
                //   page = page + 1;
                //   // _userBloc.add(UserManagementEvent.getUsers(
                //   //     userId: userId, page: page, limit: _limit));
                //   // updateData();
                // }
                onNextPressed();
              },
              text: AppString.next.val,
              borderRadius: 0.0,
              borderWidth: 0.0,
              color: AppColor.white.val,
              textColor: AppColor.primaryColor.val,
            ),
          ],
        ),
      ],
    );
  }
}
