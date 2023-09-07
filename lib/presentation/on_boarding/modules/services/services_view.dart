import 'package:admin_580_tech/core/custom_snackbar.dart';
import 'package:admin_580_tech/infrastructure/shared_preference/shared_preff_util.dart';
import 'package:admin_580_tech/presentation/on_boarding/widgets/common_padding_widget.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/bloc/onboarding/onboarding_bloc.dart';
import '../../../../core/enum.dart';
import '../../../../core/responsive.dart';
import '../../../../core/text_styles.dart';
import '../../../../domain/on_boarding/models/services/service_request_model.dart';
import '../../../widget/common_next_or_cancel_buttons.dart';
import '../../../widget/custom_shimmer.dart';
import '../../../widget/custom_sizedbox.dart';
import '../../../widget/custom_text.dart';

class ServicesView extends StatefulWidget {
  const ServicesView(
      {Key? key, required this.pageController, required this.onboardingBloc})
      : super(key: key);
  final PageController pageController;
  final OnboardingBloc onboardingBloc;

  @override
  State<ServicesView> createState() => _ServicesViewState();
}

class _ServicesViewState extends State<ServicesView> {
  @override
  void initState() {
    widget.onboardingBloc.add(const OnboardingEvent.getServices());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OnboardingBloc, OnboardingState>(
      listener: (context, listenerState) {
        return listenerState.submitServiceOption.fold(() {}, (some) {
          some.fold((l) {
            CSnackBar.showError(context, msg: l.error);
          }, (r) {
            print(
                "inside listener nextClicked : ${widget.onboardingBloc.nextButtonClicked}");
            if (widget.onboardingBloc.nextButtonClicked) {
              widget.pageController
                  .jumpToPage(widget.pageController.page!.toInt() + 1);
            }
          });
        });
      },
      builder: (context, state) {
        return CommonPaddingWidget(
          child: CustomContainer(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _topArea(context),
                  CustomSizedBox(height: DBL.twenty.val),
                  _listView(state),
                  CommonNextOrCancelButtons(
                    isLoading: state.isLoading,
                    leftButtonName: AppString.back.val,
                    rightButtonName: AppString.next.val,
                    onLeftButtonPressed: () {
                      widget.onboardingBloc.nextButtonClicked = false;
                      widget.pageController
                          .jumpToPage(widget.pageController.page!.toInt() - 1);
                    },
                    onRightButtonPressed: () {
                      widget.onboardingBloc.nextButtonClicked = true;
                      if (widget.onboardingBloc.selectedTier1ServiceList
                              .isEmpty &&
                          widget.onboardingBloc.selectedTier2ServiceList
                              .isEmpty) {
                        CSnackBar.showError(context,
                            msg: AppString.pleaseSelectOneService.val);
                      } else {
                        widget.onboardingBloc.add(
                            OnboardingEvent.submitServices(
                                userId:
                                    SharedPreffUtil().getIsFromWebsite == true
                                        ? SharedPreffUtil().getAccessToken
                                        : SharedPreffUtil().getCareGiverUserId,
                                services: ServicesRequest(
                                  tier1: widget
                                      .onboardingBloc.selectedTier1ServiceList,
                                  tier2: widget
                                      .onboardingBloc.selectedTier2ServiceList,
                                )));
                      }
                      widget.onboardingBloc.nextButtonClicked = true;
                    },
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  _topArea(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSizedBox(height: DBL.ten.val),
        CustomText(
          AppString.services.val,
          softWrap: true,
          style: TS().gRoboto(
              fontSize: Responsive.isWeb(context)
                  ? DBL.nineteen.val
                  : DBL.sixteen.val,
              fontWeight: FW.w500.val,
              color: AppColor.primaryColor.val),
          textAlign: TextAlign.start,
        ),
        CustomSizedBox(height: DBL.fifteen.val),
        CustomContainer(
          width: MediaQuery.of(context).size.width * 0.8,
          height: DBL.one.val,
          color: AppColor.lightGrey.val,
        ),
        CustomSizedBox(height: DBL.ten.val),
        CustomText(
          AppString.selectAllServices.val,
          softWrap: true,
          style: TS().gRoboto(
              fontSize: Responsive.isWeb(context)
                  ? DBL.sixteen.val
                  : DBL.fourteen.val,
              fontWeight: FW.w400.val,
              color: AppColor.black.val),
          textAlign: TextAlign.start,
        ),
        CustomSizedBox(height: DBL.ten.val),
        CustomContainer(
          padding: const EdgeInsets.only(left: 10),
          alignment: Alignment.centerLeft,
          height: 40,
          width: double.infinity,
          color: AppColor.darkGreen.val,
          child: CustomText(
            AppString.services.val,
            softWrap: true,
            style: TS().gRoboto(
                fontSize: Responsive.isWeb(context)
                    ? DBL.nineteen.val
                    : DBL.sixteen.val,
                fontWeight: FW.w400.val,
                color: AppColor.white.val),
            textAlign: TextAlign.start,
          ),
        )
      ],
    );
  }

  _listView(OnboardingState state) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return CustomContainer(
          height: DBL.one.val,
          color: AppColor.lightGrey.val,
        );
      },
      shrinkWrap: true,
      itemCount: state.isInitialLoading ? 10 : state.serviceList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: state.isInitialLoading
              ? const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                        child: CustomShimmerWidget.rectangular(height: 40)),
                    CustomSizedBox(width: 10),
                    CustomShimmerWidget.rectangular(height: 20, width: 20)
                  ],
                )
              : Row(
                  children: [
                    Expanded(child: Text(state.serviceList[index].name)),
                    Checkbox(
                      activeColor: AppColor.primaryColor.val,
                      fillColor:
                          MaterialStateProperty.all(AppColor.primaryColor.val),
                      checkColor: AppColor.white.val,
                      value: state.serviceList[index].selected,
                      onChanged: (value) {
                        //state.serviceList[index].selected = value!;

                        widget.onboardingBloc.add(
                            OnboardingEvent.serviceSelected(index, value!));
                        if (!state.serviceList[index].selected) {
                          if (state.serviceList[index].type == 1) {
                            widget.onboardingBloc.selectedTier1ServiceList
                                .add(state.serviceList[index].id);
                          } else {
                            widget.onboardingBloc.selectedTier2ServiceList
                                .add(state.serviceList[index].id);
                          }
                        } else {
                          if (state.serviceList[index].type == 1) {
                            widget.onboardingBloc.selectedTier1ServiceList
                                .remove(state.serviceList[index].id);
                          } else {
                            widget.onboardingBloc.selectedTier2ServiceList
                                .remove(state.serviceList[index].id);
                          }
                        }
                      },
                    ),
                  ],
                ),
        );
      },
    );
  }
}
