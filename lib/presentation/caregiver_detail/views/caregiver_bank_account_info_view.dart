import 'package:admin_580_tech/application/bloc/caregiver_detail/caregiver_detail_bloc.dart';
import 'package:admin_580_tech/domain/caregiver_detail/model/caregiver_detail_response.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:flutter/material.dart';

import '../../../core/enum.dart';
import '../../user_mangement_detail/widgets/user_account_details.dart';
import '../../widget/custom_sizedbox.dart';

class CareGiverBankAccountInfoView extends StatelessWidget {
  const CareGiverBankAccountInfoView({Key? key, required this.state})
      : super(key: key);
  final CareGiverDetailState state;

  @override
  Widget build(BuildContext context) {
    var value = state.response?.data?.accountDetails;
    return CustomContainer(
      color: AppColor.white.val,
      child: _body(value),
    );
  }

  SingleChildScrollView _body(AccountDetails? value) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomSizedBox(
            height: DBL.eighteen.val,
          ),
          UserAccountDetails(
              label: AppString.accountHolderName.val,
              value: value?.accName ?? ""),
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
              value: value?.accNumber ?? ""),
        ],
      ),
    );
  }
}
