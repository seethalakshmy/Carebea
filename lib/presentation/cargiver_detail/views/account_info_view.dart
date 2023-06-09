
import 'package:admin_580_tech/application/bloc/caregiver_detail/caregiver_detail_bloc.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:flutter/material.dart';

import '../../../core/enum.dart';
import '../../user_mangement_detail/widgets/user_account_details.dart';
import '../../widget/custom_sizedbox.dart';

class AccountInfoView extends StatelessWidget {
  const AccountInfoView({Key? key, required this.state}) : super(key: key);
  final CareGiverDetailState state;

  @override
  Widget build(BuildContext context) {
    var value = state.response?.data?.accountDetails;
    return CustomContainer(
      color: AppColor.white.val,
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomSizedBox(
              height: DBL.eighteen.val,
            ),
            UserAccountDetails(
                label: AppString.accountHolderName.val,
                value: value?.accountHolderName ?? ""),
            CustomSizedBox(
              height: DBL.thirty.val,
            ),
            UserAccountDetails(
                label: AppString.routingNo.val,
                value: value?.routingNumber ?? ""),
            CustomSizedBox(
              height: DBL.thirty.val,
            ),
            UserAccountDetails(
                label: AppString.accountNumber.val,
                value: value?.accountNumber ?? ""),
          ],
        ),
      ),
    );
  }
}
