import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/onboarding/onboarding_bloc.dart';
import '../../core/enum.dart';
import '../../core/properties.dart';
import '../../core/responsive.dart';
import '../../core/text_styles.dart';
import '../../infrastructure/on_boarding/on_boarding_repository.dart';
import '../widget/custom_card.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/custom_text.dart';
import '../widget/header_view.dart';
import 'modules/preference/preference_view.dart';
import 'modules/qualification_details/qialification_view.dart';
import 'modules/services/services_view.dart';

@RoutePage()
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
    _onboardingBloc = OnboardingBloc(OnBoardingRepository());
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

  Widget _rebuildView() {
    return BlocProvider(
      create: (context) => _onboardingBloc,
      child: _bodyView(),
    );
  }

  Widget _bodyView() {
    List<Widget> pages = [
      // Agreement(
      //   onboardingBloc: _onboardingBloc,
      //   pageController: controller,
      // ),
      //const OtpVerificationView(),
      PersonalDetailsView(
        onboardingBloc: _onboardingBloc,
        pageController: controller,
      ),
      QualificationView(
          state: _onboardingBloc.state,
          onboardingBloc: _onboardingBloc,
          pageController: controller),
      PreferenceView(
        pageController: controller,
        onboardingBloc: _onboardingBloc,
      ),
      ServicesView(
        pageController: controller,
        onboardingBloc: _onboardingBloc,
      ),
      /*ReferenceView(
        onboardingBloc: _onboardingBloc,
        pageController: controller,
      ),
      BuildProfileView(
          pageController: controller, onboardingBloc: _onboardingBloc),
      //HomeHealthAidAgreementView(pageController: controller),
      SetupCompensationView(
          pageController: controller, onboardingBloc: _onboardingBloc),*/
    ];
    setState(() {
      totalPages = pages.length;
    });
    return CustomCard(
      shape: PR().roundedRectangleBorder(DBL.eighteen.val),
      elevation: DBL.seven.val,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 900),
        child: Container(
          padding: EdgeInsets.all(DBL.twenty.val),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
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
              CustomSizedBox(height: DBL.ten.val),
              Expanded(
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
      ),
    );
  }
}
