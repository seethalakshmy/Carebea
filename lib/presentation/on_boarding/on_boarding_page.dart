import 'package:admin_580_tech/application/bloc/onboarding/onboarding_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/enum.dart';
import '../../core/properties.dart';
import '../../core/responsive.dart';
import '../../core/text_styles.dart';
import '../widget/custom_card.dart';
import '../widget/custom_container.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/custom_text.dart';
import '../widget/header_view.dart';
import 'modules/personal_details/personal_details_view.dart';
import 'modules/qualification_details/qialification_view.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late OnboardingBloc _onboardingBloc;
  PageController controller = PageController();
  int currentPage = 0;
  int totalPages = 0;

  @override
  void initState() {
    super.initState();
    _onboardingBloc = OnboardingBloc();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderView(title: AppString.onBoarding.val),
        CustomSizedBox(height: DBL.twenty.val),
        _rebuildView(),
      ],
    );
  }

  BlocProvider<OnboardingBloc> _rebuildView() {
    return BlocProvider(
      create: (context) =>
          _onboardingBloc..add(const OnboardingEvent.personalDetails()),
      child: _bodyView(),
    );
  }

  _bodyView() {
    List<Widget> pages = [
      PersonalDetailsView(
        onboardingBloc: _onboardingBloc,
        pageController: controller,
      ),
      QualificationView(
          state: _onboardingBloc.state, onboardingBloc: _onboardingBloc),
    ];
    setState(() {
      totalPages = pages.length;
    });
    return BlocBuilder<OnboardingBloc, OnboardingState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        return CustomCard(
          shape: PR().roundedRectangleBorder(DBL.eighteen.val),
          elevation: DBL.seven.val,
          child: CustomContainer(
            width: double.infinity,
            height: 900,
            padding: EdgeInsets.all(DBL.twenty.val),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: CustomText(
                    "Step ${currentPage + 1}/$totalPages",
                    softWrap: true,
                    style: TS().gRoboto(
                        fontSize: Responsive.isWeb(context)
                            ? DBL.sixteen.val
                            : DBL.fourteen.val,
                        fontWeight: FW.w500.val,
                        color: AppColor.green2.val),
                    textAlign: TextAlign.start,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: PageView(
                    controller: controller,
                    physics: const NeverScrollableScrollPhysics(),
                    children: pages,
                    onPageChanged: (index) {
                      setState(() {
                        currentPage = index;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
