import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/presentation/widget/header_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:html/parser.dart';

import '../../../../application/bloc/onboarding/onboarding_bloc.dart';
import '../../widgets/common_padding_widget.dart';

class Agreement extends StatelessWidget {
  Agreement(
      {Key? key, required this.onboardingBloc, required this.pageController})
      : super(key: key);

  final OnboardingBloc onboardingBloc;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonPaddingWidget(
          child: HeaderView(
            title: AppString.homeHealthAidAgreement.val,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: AppColor.lightBlue1.val,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: CommonPaddingWidget(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: SizedBox(
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: ListView(
                            controller: scrollController,
                            children: [
                              Container(child: Text(htmlContend.toString())),
                              SizedBox(
                                height: 10,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  var htmlContend = parse("""<div>
              
             <p>Gives the caregiver the right to make healthcare decisions on someone else’s behalf. This is common if the patient is not able to speak for themselves and a caregiver is assigned the duty of making decisions for the benefit of the patient. This form also includes a living will that allows the patient to make end-of-life decisions if they should be in a state of incapacitation for a longer period of time.</p>
                      <p>Gives the caregiver the right to make healthcare decisions on someone else’s behalf. This is common if the patient is not able to speak for themselves and a caregiver is assigned the duty of making decisions for the benefit of the patient. This form also includes a living will that allows the patient to make end-of-life decisions if they should be in a state of incapacitation for a longer period of time.</p>
             <p>Gives the caregiver the right to make healthcare decisions on someone else’s behalf. This is common if the patient is not able to speak for themselves and a caregiver is assigned the duty of making decisions for the benefit of the patient. This form also includes a living will that allows the patient to make end-of-life decisions if they should be in a state of incapacitation for a longer period of time.</p>
             <p>Gives the caregiver the right to make healthcare decisions on someone else’s behalf. This is common if the patient is not able to speak for themselves and a caregiver is assigned the duty of making decisions for the benefit of the patient. This form also includes a living will that allows the patient to make end-of-life decisions if they should be in a state of incapacitation for a longer period of time.</p>
             <p>Gives the caregiver the right to make healthcare decisions on someone else’s behalf. This is common if the patient is not able to speak for themselves and a caregiver is assigned the duty of making decisions for the benefit of the patient. This form also includes a living will that allows the patient to make end-of-life decisions if they should be in a state of incapacitation for a longer period of time.</p>

              <!--You can pretty much put any html in here!-->
            </div>""");
}
