import 'package:admin_580_tech/application/bloc/user_management_detail/user_management_detail_bloc.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/presentation/user_mangement_detail/widgets/user_account_details.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/header_view.dart';
import 'package:flutter/material.dart';

class PaymentMethodView extends StatelessWidget {
  const PaymentMethodView({Key? key, required this.state}) : super(key: key);
  final UserManagementDetailState state;

  @override
  Widget build(BuildContext context) {
    var value = state.response?.user?.paymentMethod;
    return SingleChildScrollView(
      child: Column(
        children: [
          value?.creditCardDetails != null
              ? HeaderView(title: AppString.creditCardDetails.val)
              : CustomSizedBox.shrink(),
          CustomSizedBox(
            height: DBL.eighteen.val,
          ),
          UserAccountDetails(
              label: AppString.accountHolderName.val,
              value: value?.creditCardDetails?.accountHolderName ?? ""),
          CustomSizedBox(
            height: DBL.thirty.val,
          ),
          UserAccountDetails(
              label: AppString.accountNumber.val,
              value: value?.creditCardDetails?.accountNumber ?? ""),
          CustomSizedBox(
            height: DBL.thirty.val,
          ),
          UserAccountDetails(
              label: AppString.expirationDate.val,
              value: value?.creditCardDetails?.expirationDate ?? ""),
          CustomSizedBox(
            height: DBL.thirty.val,
          ),
          UserAccountDetails(
              label: AppString.securityNo.val,
              value: value?.creditCardDetails?.securityNumber.toString() ?? ""),
        ],
      ),
    );
  }
}
