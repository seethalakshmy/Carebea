import 'package:admin_580_tech/application/bloc/sub_profile_details/sub_profile_details_bloc.dart';
import 'package:flutter/material.dart';

import '../../../core/enum.dart';
import '../../../core/utility.dart';
import '../../../domain/subProfile_details/model/sub_profile_detail_response.dart';
import '../../widget/custom_container.dart';
import '../../widget/custom_sizedbox.dart';
import '../../widget/empty_view.dart';
import '../../widget/row_combo.dart';

class SubscriptionDetailsView extends StatelessWidget {
  const SubscriptionDetailsView({Key? key, required this.state})
      : super(key: key);
  final SubProfileDetailState state;

  @override
  Widget build(BuildContext context) {
    SubscriptionDetails? subscriptionDetails =
        state.response!.data!.isSubscriptionActive!
            ? state.response?.data?.subscriptionDetails?.first
            : null;
    return CustomContainer(
      padding: EdgeInsets.symmetric(
          horizontal: DBL.twentyFive.val, vertical: DBL.twentyFive.val),
      color: AppColor.white.val,
      child: SingleChildScrollView(
        child: _rightView(subscriptionDetails),
      ),
    );
  }

  RowColonCombo _planeName(SubscriptionDetails? subscriptionDetails) {
    return RowColonCombo.threeSeventy(
        label: AppString.planName.val,
        value: '',
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _planeAmount(SubscriptionDetails? subscriptionDetails) {
    return RowColonCombo.threeSeventy(
        label: AppString.planAmount.val,
        value: '\$ ${subscriptionDetails?.subscriptionPlanFee}' ?? '',
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _startDateView(SubscriptionDetails? subscriptionDetails) {
    return RowColonCombo.threeSeventy(
        label: AppString.startDate.val,
        value: Utility.serviceDate(
            (DateTime.tryParse(subscriptionDetails?.startedAt ?? '') ??
                    DateTime.now())
                .toLocal()),
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _recurringDateView(SubscriptionDetails? subscriptionDetails) {
    return RowColonCombo.threeSeventy(
        label: AppString.renewalDate.val,
        value: '',
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _subscriptionStatus(SubscriptionDetails? subscriptionDetails) {
    return RowColonCombo.threeSeventy(
        valueColor: subscriptionDetails?.isActive == false
            ? AppColor.red.val
            : AppColor.green.val,
        label: AppString.subscriptionStatus.val,
        value: subscriptionDetails?.isActive == true
            ? AppString.active.val
            : AppString.inActive.val,
        fontSize: FS.font13PointFive.val);
  }

  RowColonCombo _endDateView(SubscriptionDetails? subscriptionDetails) {
    return RowColonCombo.threeSeventy(
        label: AppString.endDate.val,
        value: Utility.serviceDate(
            DateTime.tryParse(subscriptionDetails?.expiry ?? '') ??
                DateTime.now().toLocal()),
        fontSize: FS.font13PointFive.val);
  }

  Widget _rightView(SubscriptionDetails? subscriptionDetails) {
    return state.response!.data!.isSubscriptionActive!
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _planeName(subscriptionDetails),
              CustomSizedBox(
                height: DBL.six.val,
              ),
              _planeAmount(subscriptionDetails),
              CustomSizedBox(
                height: DBL.six.val,
              ),
              _startDateView(subscriptionDetails),
              CustomSizedBox(
                height: DBL.six.val,
              ),
              _endDateView(subscriptionDetails),
              CustomSizedBox(
                height: DBL.six.val,
              ),
              _recurringDateView(subscriptionDetails),
              CustomSizedBox(
                height: DBL.six.val,
              ),
              _subscriptionStatus(subscriptionDetails),
            ],
          )
        : EmptyView(
            title: AppString.noDataFound.val,
          );
  }

  bool isLg(BuildContext context) => MediaQuery.of(context).size.width <= 1236;
}
