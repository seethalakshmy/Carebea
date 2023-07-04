import 'package:admin_580_tech/application/bloc/onboarding/onboarding_bloc.dart';
import 'package:admin_580_tech/presentation/on_boarding/modules/reference/reference_view.dart';
import 'package:admin_580_tech/presentation/on_boarding/modules/services/services_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/enum.dart';
import '../../core/properties.dart';
import '../../core/responsive.dart';
import '../../core/text_styles.dart';
import '../widget/custom_card.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/custom_text.dart';
import '../widget/header_view.dart';
import 'modules/build_profile/build_profile_view.dart';
import 'modules/personal_details/personal_details_view.dart';
import 'modules/preference/preference_view.dart';
import 'modules/qualification_details/qialification_view.dart';
import 'modules/setup_compensation/setup_compensation_view.dart';

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

  Widget _rebuildView() {
    return BlocProvider(
      create: (context) =>
          _onboardingBloc..add(const OnboardingEvent.personalDetails()),
      child: _bodyView(),
    );
  }

  Widget _bodyView() {
    List<Widget> pages = [
      QualificationView(
          state: _onboardingBloc.state,
          onboardingBloc: _onboardingBloc,
          pageController: controller),
      PersonalDetailsView(
        onboardingBloc: _onboardingBloc,
        pageController: controller,
      ),
      PreferenceView(
        onboardingBloc: _onboardingBloc,
        pageController: controller,
      ),
      ServicesView(pageController: controller),
      ReferenceView(
        onboardingBloc: _onboardingBloc,
        pageController: controller,
      ),
      BuildProfileView(
          pageController: controller, onboardingBloc: _onboardingBloc),
      //HomeHealthAidAgreementView(pageController: controller),
      SetupCompensationView(
          pageController: controller, onboardingBloc: _onboardingBloc),
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
