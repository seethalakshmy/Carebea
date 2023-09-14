import 'package:admin_580_tech/application/bloc/caregiver-profile/caregiver_profile_bloc.dart';
import 'package:admin_580_tech/core/enum.dart';
import 'package:admin_580_tech/presentation/widget/custom_container.dart';
import 'package:admin_580_tech/presentation/widget/custom_sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:pdf_render/pdf_render_widgets.dart';

class CareGiverAgreementView extends StatelessWidget {
  CareGiverAgreementView({Key? key, required this.state}) : super(key: key);
  final CareGiverProfileState state;
  final pdfController = PdfViewerController();

  // String content =
  //     "Gives the caregiver the right to make healthcare decisions on someone else’s behalf. This is common if the patient is not able to "
  //     "speak for themselves and a caregiver is assigned the duty of makingdecisions for the benefit of the patient. This form also includes a living will that allows the patient to make end-of-life decisions if they should be in a state of incapacitation for a longer period of time. speak for themselves and a caregiver is assigned the duty of makingdecisions for the benefit of the patient. This form also includes a "
  //     "living will that allows the patient to make end-of-life decisions if they should be in a state of time.\n"
  //     "Gives the caregiver the right to make healthcare decisions on someone else’s behalf. "
  //     "This is common if the patient is not able to speak for themselves and a caregiver is assigned the duty of making decisions for the benefit of the patient. This form also includes a living will that allows the patient to make end-of-life decisions if they should be in a state of incapacitation for a longer period of time. This form also includes a living will that allows the patient to make end-of-life decisions if they should be in a state of incapacitation for a longer period of time\n"
  //     "Gives the caregiver the right to make healthcare decisions on someone else’s behalf. This is common if the patient is not able to speak for themselves and a caregiver is assigned the duty of making"
  //     "decisions for the benefit of the patient. This form also includes a living will that allows the patient to make end-of-life decisions if they should be in a state of incapacitation for a longer period of time.\n"
  //     "Gives the caregiver the right to make healthcare decisions on someone else’s behalf. This is common if the patient is not able to speak for themselves and a caregiver is assigned the duty of making"
  //     "decisions for the benefit of the patient. This form also includes a living will that allows the patient to make end-of-life decisions if they should be in a state of incapacitation for a longer period of time."
  //     "Gives the caregiver the right to make healthcare decisions on someone else’s behalf. This is common if the patient is not able to "
  //     "speak for themselves and a caregiver is assigned the duty of makingdecisions for the benefit of the patient. This form also includes a living will that allows the patient to make end-of-life decisions if they should be in a state of incapacitation for a longer period of time. speak for themselves and a caregiver is assigned the duty of makingdecisions for the benefit of the patient. This form also includes a living will that allows the patient to make end-of-life decisions if they should be in a state of "
  //     "Gives the caregiver the right to make healthcare decisions on someone else’s behalf. ";

  @override
  Widget build(BuildContext context) {
    String content = state.response?.data?.agreement ?? "";
    return _buildBody(content, context);
  }

  CustomContainer _buildBody(String content, BuildContext context) {
    return CustomContainer(
      padding: EdgeInsets.symmetric(
          horizontal: DBL.twentyFive.val, vertical: DBL.twentyFive.val),
      color: AppColor.white.val,
      child: SingleChildScrollView(
        child: Column(
          children: [
            content.isEmpty
                ? const SizedBox()
                : Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.9,
                    alignment: Alignment.center,
                    child: PdfViewer.openFile(
                      content,
                      viewerController: pdfController,
                      onError: (err) => print(err),
                      params: const PdfViewerParams(
                          minScale: 0.2,
                          scrollDirection: Axis.vertical,
                          padding: 10,
                          scaleEnabled: false,
                          maxScale: 100),
                    ),
                  ),
            CustomSizedBox(
              height: DBL.ten.val,
            ),
          ],
        ),
      ),
    );
  }
}
