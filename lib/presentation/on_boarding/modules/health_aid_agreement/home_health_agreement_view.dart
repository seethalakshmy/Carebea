// import 'package:admin_580_tech/presentation/on_boarding/widgets/common_padding_widget.dart';
// import 'package:admin_580_tech/presentation/widget/custom_container.dart';
// import 'package:flutter/material.dart';
//
// import '../../../../core/enum.dart';
// import '../../../../core/responsive.dart';
// import '../../../../core/text_styles.dart';
// import '../../../widget/common_next_or_cancel_buttons.dart';
// import '../../../widget/custom_sizedbox.dart';
// import '../../../widget/custom_text.dart';
//
// class HomeHealthAidAgreementView extends StatelessWidget {
//   const HomeHealthAidAgreementView({Key? key, required this.pageController})
//       : super(key: key);
//   final PageController pageController;
//
//   @override
//   Widget build(BuildContext context) {
//     return CommonPaddingWidget(
//         child: CustomContainer(
//       child: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             _topArea(context),
//             CustomText(
//               softWrap: true,
//               "${AppString.dummyAgreementText.val}\n${AppString.dummyAgreementText.val}\n${AppString.dummyAgreementText.val}",
//               style: TS().gRoboto(
//                   fontSize: FS.font14.val,
//                   fontWeight: FW.w400.val,
//                   height: 2,
//                   color: AppColor.matBlack4.val),
//             ),
//             CustomSizedBox(height: DBL.ten.val),
//             _checkboxWidget(),
//             CustomSizedBox(height: DBL.twenty.val),
//             CustomText(
//               AppString.provideDigitalSign.val,
//               style: TS().gRoboto(
//                   fontSize: FS.font16.val,
//                   fontWeight: FW.w500.val,
//                   color: AppColor.black.val),
//             ),
//             CustomSizedBox(height: DBL.ten.val),
//             CustomContainer(
//               width: DBL.threeFifty.val,
//               height: DBL.oneFifty.val,
//               color: AppColor.lightBlue2.val,
//             ),
//             CommonNextOrCancelButtons(
//               leftButtonName: AppString.back.val,
//               rightButtonName: AppString.next.val,
//               onLeftButtonPressed: () {
//                 pageController.jumpToPage(pageController.page!.toInt() - 1);
//               },
//               onRightButtonPressed: () {
//                 pageController.jumpToPage(pageController.page!.toInt() + 1);
//               },
//             )
//           ],
//         ),
//       ),
//     ));
//   }
//
//   _topArea(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         CustomSizedBox(height: DBL.ten.val),
//         CustomText(
//           AppString.homeHealthAidAgreement.val,
//           softWrap: true,
//           style: TS().gRoboto(
//               fontSize: Responsive.isWeb(context)
//                   ? DBL.nineteen.val
//                   : DBL.sixteen.val,
//               fontWeight: FW.w500.val,
//               color: AppColor.primaryColor.val),
//           textAlign: TextAlign.start,
//         ),
//         CustomSizedBox(height: DBL.fifteen.val),
//         CustomContainer(
//           width: MediaQuery.of(context).size.width * 0.8,
//           height: DBL.one.val,
//           color: AppColor.lightGrey.val,
//         ),
//         CustomSizedBox(height: DBL.ten.val),
//       ],
//     );
//   }
//
//   _checkboxWidget() {
//     return Row(
//       children: [
//         Checkbox(
//           value: false,
//           onChanged: (value) {},
//         ),
//         CustomText(
//           AppString.agreementChckboxText.val,
//           style: TS().gRoboto(
//               fontSize: FS.font14.val,
//               fontWeight: FW.w400.val,
//               color: AppColor.matBlack4.val),
//         )
//       ],
//     );
//   }
// }

import 'dart:html';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../application/bloc/caregiver_submit_agreement/caregiver_submit_agreement_bloc.dart';
import '../../../../application/bloc/onboarding/onboarding_bloc.dart';
import '../../../../core/custom_snackbar.dart';
import '../../../../core/enum.dart';
import '../../../../core/responsive.dart';
import '../../../../core/text_styles.dart';
import '../../../../domain/core/api_client.dart';
import '../../../../infrastructure/api_service_s3.dart';
import '../../../../infrastructure/shared_preference/shared_preff_util.dart';
import '../../../widget/common_next_or_cancel_buttons.dart';
import '../../../widget/custom_container.dart';
import '../../../widget/custom_sizedbox.dart' show CustomSizedBox;
import '../../../widget/custom_text.dart';
import '../../widgets/common_padding_widget.dart';
import '../../widgets/image_preview_widget.dart';
import '../../widgets/upload_document_widget.dart';

class HomeHealthAidAgreementView extends StatefulWidget {
  const HomeHealthAidAgreementView(
      {Key? key, required this.pageController, required this.onboardingBloc})
      : super(key: key);
  final OnboardingBloc onboardingBloc;
  final PageController pageController;

  @override
  State<HomeHealthAidAgreementView> createState() =>
      _HomeHealthAidAgreementViewState();
}

class _HomeHealthAidAgreementViewState
    extends State<HomeHealthAidAgreementView> {
  PlatformFile? file;
  List<PlatformFile> bytesList = [];
  bool listUpdated = false;
  bool isLoading = false;
  final apiClient = ApiClient();
  SharedPreffUtil sharedPreffUtil = SharedPreffUtil();

  @override
  Widget build(BuildContext context) {
    return BlocListener<CaregiverSubmitAgreementBloc,
        CaregiverSubmitAgreementState>(
      listener: (context, state) {
        state.when(
            initial: () {},
            loading: () {},
            failed: (error) {
              CSnackBar.showError(context, msg: error);
            },
            success: (data) async {
              widget.onboardingBloc.add(
                OnboardingEvent.securityDocumentUpload(bytesList, listUpdated),
              );
              // context.router.navigate(const CaregiverCreationRoute());
              // widget.pageController
              //     .jumpToPage(widget.pageController.page!.toInt() + 1);
              final uri = Uri.parse("http://43.204.9.191");
              if (await canLaunchUrl(uri)) {
                window.close();
                launchUrl(uri);
              }
            });
      },
      child: CommonPaddingWidget(
          child: CustomContainer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _topArea(context),
              CustomText(
                softWrap: true,
                "${AppString.dummyAgreementText.val}\n${AppString.dummyAgreementText.val}\n${AppString.dummyAgreementText.val}",
                style: TS().gRoboto(
                    fontSize: FS.font14.val,
                    fontWeight: FW.w400.val,
                    height: 2,
                    color: AppColor.matBlack4.val),
              ),
              // CustomSizedBox(height: DBL.ten.val),
              // _checkboxWidget(),
              CustomSizedBox(height: DBL.twenty.val),
              CustomText(
                AppString.uploadSignature.val,
                style: TS().gRoboto(
                    fontSize: FS.font16.val,
                    fontWeight: FW.w500.val,
                    color: AppColor.black.val),
              ),
              CustomSizedBox(height: DBL.ten.val),
              // CustomContainer(
              //   width: DBL.threeFifty.val,
              //   height: DBL.oneFifty.val,
              //   color: AppColor.lightBlue2.val,
              // ),
              if (file?.bytes == null)
                CustomContainer(
                  width: DBL.threeFifty.val,
                  height: DBL.oneFifty.val,
                  color: AppColor.lightBlue2.val,
                ),
              if (file?.bytes != null)
                ImagePreviewWidget(
                  bytes: file!.bytes!,
                  onRemoveTap: () {
                    setState(() {
                      bytesList.remove(file);
                      file = null;
                    });
                  },
                ),
              UploadDocumentWidget(
                isSignature: true,
                onTap: () async {
                  FilePickerResult? result =
                      await FilePicker.platform.pickFiles(
                    type: FileType.custom,
                    allowedExtensions: [
                      'jpg',
                      'png',
                    ],
                    withData: true,
                  );
                  if (result != null) {
                    setState(() {
                      file = result.files.single;
                      for (PlatformFile file in result.files) {
                        bytesList.add(file);
                        listUpdated = !listUpdated;
                        if (bytesList.length == 2) {
                          break;
                        }
                      }
                    });
                  } else {
                    // User canceled the picker
                  }
                },
              ),
              CommonNextOrCancelButtons(
                isLoading: isLoading,
                leftButtonName: AppString.back.val,
                rightButtonName: AppString.agree.val,
                onLeftButtonPressed: () {
                  widget.pageController
                      .jumpToPage(widget.pageController.page!.toInt() - 1);
                },
                onRightButtonPressed: () async {
                  if (file != null) {
                    setState(() {
                      isLoading = true;
                    });

                    final url = await uploadDocumentsToAwsS3(
                        AppString.hhaDocument.val,
                        SharedPreffUtil().getCareGiverUserId,
                        bytesList.first);

                    if (url != null) {
                      if (!context.mounted) return null;
                      context.read<CaregiverSubmitAgreementBloc>().add(
                          CaregiverSubmitAgreementEvent.submit(
                              signatureUrl: url));
                    } else {
                      if (!context.mounted) return null;
                      CSnackBar.showError(context,
                          msg: AppString.pleaseUploadSignature.val);
                      setState(() {
                        isLoading = true;
                      });
                    }
                  } else {
                    CSnackBar.showError(context,
                        msg: AppString.pleaseUploadSignature.val);
                  }
                },
              )
            ],
          ),
        ),
      )),
    );
  }

  _topArea(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSizedBox(height: DBL.ten.val),
        CustomText(
          AppString.homeHealthAidAgreement.val,
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
      ],
    );
  }

  _checkboxWidget() {
    return Row(
      children: [
        Checkbox(
          value: false,
          onChanged: (value) {},
        ),
        CustomText(
          AppString.agreementChckboxText.val,
          style: TS().gRoboto(
              fontSize: FS.font14.val,
              fontWeight: FW.w400.val,
              color: AppColor.matBlack4.val),
        )
      ],
    );
  }

  Future<String?> uploadDocumentsToAwsS3(
      String folderName, String userId, PlatformFile pickedItem) async {
    String url = await ApiServiceS3().uploadImage(
        pickedFile: pickedItem.bytes!,
        format: pickedItem.name.split('.').last,
        folderName: folderName,
        userId: userId,
        context: context);
    widget.onboardingBloc.uploadedDocumentList.add(url);
    return url;
  }
}
