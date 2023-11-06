import 'package:admin_580_tech/application/bloc/user_management_detail/user_management_detail_bloc.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/presentation/user_mangement_detail/widgets/user_account_details.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:admin_580_tech/presentation/widget/header_view.dart';
import 'package:flutter/material.dart';

import '../../widget/empty_view.dart';

class PaymentMethodView extends StatelessWidget {
  const PaymentMethodView({Key? key, required this.state}) : super(key: key);
  final UserManagementDetailState state;

  @override
  Widget build(BuildContext context) {
    var value = state.response?.data?.paymentMethod;
    print("checking $value");
    print('inside payment ${value?.name}');
    return SingleChildScrollView(
        child: value?.type == 1
            ? Column(
                children: [
                  value?.type == 1
                      ? HeaderView(title: AppString.creditCardDetails.val)
                      : CustomSizedBox.shrink(),
                  CustomSizedBox(
                    height: DBL.eighteen.val,
                  ),
                  UserAccountDetails(
                      label: AppString.accountHolderName.val,
                      value: value?.name ?? ""),
                  CustomSizedBox(
                    height: DBL.thirty.val,
                  ),
                  UserAccountDetails(
                      label: AppString.cardNumber.val,
                      value: formatCardNumber(value?.cardNumber ?? '')),
                  CustomSizedBox(
                    height: DBL.thirty.val,
                  ),
                  UserAccountDetails(
                      label: AppString.expirationDate.val,
                      value: value?.expiry ?? ""),
                  CustomSizedBox(
                    height: DBL.thirty.val,
                  ),
                  // UserAccountDetails(
                  //     label: AppString.securityNo.val,
                  //     value: value?.securityNumber ?? ""),
                ],
              )
            : Column(
                children: [
                  HeaderView(title: AppString.achDetails.val),
                  CustomSizedBox(
                    height: DBL.eighteen.val,
                  ),
                  // UserAccountDetails(
                  //     label: AppString.accountHolderName.val,
                  //     value: value?.name ?? ""),
                  // CustomSizedBox(
                  //   height: DBL.thirty.val,
                  // ),
                  UserAccountDetails(
                      label: AppString.accountNumber.val,
                      value: value?.accountNumber ?? ""),
                  CustomSizedBox(
                    height: DBL.thirty.val,
                  ),
                  UserAccountDetails(
                      label: AppString.routingNo.val,
                      value: value?.routingNumber ?? ""),
                  // CustomSizedBox(
                  //   height: DBL.thirty.val,
                  // ),
                  // UserAccountDetails(
                  //     label: AppString.securityNo.val,
                  //     value: value?.securityNumber ?? ""),
                ],
              ));
  }

  formatCardNumber(String cardNumber) {
    var formattedCardNumber = cardNumber.replaceRange(0, 11, '************');
    return formattedCardNumber;
  }
}
