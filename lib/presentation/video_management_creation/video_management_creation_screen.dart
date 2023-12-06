import 'dart:developer';

import 'package:admin_580_tech/infrastructure/upload_video/upload_video_repository.dart';
import 'package:admin_580_tech/presentation/widget/custom_button.dart';
import 'package:admin_580_tech/presentation/widget/custom_form.dart';
import 'package:admin_580_tech/presentation/widget/custom_padding.dart';
import 'package:auto_route/auto_route.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../application/bloc/upload_video/upload_video_bloc.dart';
import '../../core/custom_snackbar.dart';
import '../../core/enum.dart';
import '../../core/properties.dart';
import '../../core/text_styles.dart';
import '../../infrastructure/api_service_s3.dart';
import '../../infrastructure/shared_preference/shared_preff_util.dart';
import '../on_boarding/modules/qualification_details/widgets/yes_no_radio_button_widget.dart';
import '../on_boarding/widgets/upload_document_widget.dart';
import '../routes/app_router.gr.dart';
import '../side_menu/side_menu_page.dart';
import '../widget/cached_image.dart';
import '../widget/custom_card.dart';
import '../widget/custom_container.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/custom_text.dart';
import '../widget/details_text_field_with_label.dart';
import '../widget/header_view.dart';
import '../widget/loader_view.dart';

@RoutePage()
class VideoUploadPage extends StatefulWidget {
  const VideoUploadPage(
      {Key? key,
      @QueryParam('edit') this.isEdit,
      @QueryParam('title') this.title,
      @QueryParam('type') this.type,
      @QueryParam('attachment') this.attachment,
      @QueryParam('id') this.id})
      : super(key: key);

  /// To do change :- change these two variables to bool for now getting error like " NoSuchMethodError: 'toLowerCase"  when extracting using auto-route
  final String? isEdit;
  final String? id;
  final String? title;
  final num? type;
  final String? attachment;

  @override
  State<VideoUploadPage> createState() => _VideoUploadPageState();
}

class _VideoUploadPageState extends State<VideoUploadPage> {
  final FocusNode titleFocusNode = FocusNode();

  late UploadVideoBloc _videoBloc;

  final AutovalidateMode _validateMode = AutovalidateMode.disabled;
  final _formKey = GlobalKey<FormState>();
  String adminUserID = "";
  String settingsId = "";
  String? title = "";
  num type = 0;
  String attachment = "";

  bool? _isEdit;
  PlatformFile? file;
  XFile? pickedFile;
  List<PlatformFile> bytesList = [];
  List<String> docPathList = [];
  bool listUpdated = false;

  @override
  void initState() {
    super.initState();
    _videoBloc = UploadVideoBloc(UploadVideoRepository());
    adminUserID = SharedPreffUtil().getAdminId;
    settingsId =
        autoTabRouter?.currentChild?.queryParams.getString("id", "") ?? "";
    print('testing 12 ${settingsId}');
    print('testing 123 ${_isEdit}');
    print('testing 123 $title');
    _videoBloc.title.text =
        autoTabRouter?.currentChild?.queryParams.getString("title", '') ?? '';
    type = autoTabRouter?.currentChild?.queryParams.getNum("type", 0) ?? 0;
    attachment =
        autoTabRouter?.currentChild?.queryParams.getString("attachment", '') ??
            '';

    debugPrint("attachment $attachment");

    if (autoTabRouter!.currentChild!.queryParams
        .getString('edit', "")
        .isNotEmpty) {
      _isEdit = true;
    } else {
      _isEdit = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _videoBloc,
      child: FutureBuilder(
          future: SharedPreffUtil().init(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const LoaderView();
            }
            return Column(
              children: [
                HeaderView(
                  title: _isEdit!
                      ? AppString.updateVideo.val
                      : AppString.videoUpload.val,
                ),
                CustomSizedBox(height: DBL.ten.val),
                _rebuildView(),
              ],
            );
          }),
    );
  }

  _rebuildView() {
    return BlocBuilder<UploadVideoBloc, VideoUploadState>(
      bloc: _videoBloc,
      builder: (context, state) {
        // return _bodyView(context, state);
        return state.isLoading ? _bodyView(context, state) : const LoaderView();
      },
    );
  }

  _bodyView(BuildContext context, VideoUploadState state) {
    // if (state.viewResponse != null) {
    //   _questionController.text = state.viewResponse?.data?.firstName ?? "";
    //   _answerController.text = state.viewResponse?.data?.lastName ?? "";
    // }
    return CustomPadding.symmetric(
      horizontal: DBL.sixteen.val,
      child: CustomCard(
        shape: PR().roundedRectangleBorder(DBL.five.val),
        elevation: DBL.seven.val,
        child: CustomContainer(
            padding: EdgeInsets.symmetric(
                horizontal: DBL.forty.val, vertical: DBL.eighteen.val),
            child: _uploadVideoView(state)),
      ),
    );
  }

  _uploadVideoView(VideoUploadState state) {
    // html.File convertedFile = html.File(file!.bytes!.toList(), file!.name);
    return BlocBuilder<UploadVideoBloc, VideoUploadState>(
      bloc: _videoBloc,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StatefulBuilder(builder: (context, rebuild) {
              log("rebuilded ${bytesList.length}");
              return Column(
                children: [
                  _forClientCheckBoxWidget(),
                  SizedBox(
                    height: 20,
                  ),
                  CForm(
                    formKey: _formKey,
                    autoValidateMode: _validateMode,
                    child: Row(
                      children: [
                        CustomSizedBox(
                          width: DBL.twoEighty.val,
                          child: DetailsTextFieldWithLabel(
                            isMandatory: true,
                            maxLines: 20,
                            labelName: AppString.title.val,
                            focusNode: titleFocusNode,
                            controller: _videoBloc.title,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return AppString.titleError.val;
                              }
                              return null;
                            },
                            textInputAction: TextInputAction.next,
                            textInputType: TextInputType.text,
                            suffixIcon: const CustomContainer(width: 0),
                          ),
                        ),
                        // CustomSizedBox(
                        //   width: DBL.twoEighty.val,
                        //   child: DetailsTextFieldWithLabel(
                        //     maxLines: 10,
                        //     isIgnore: _isView!,
                        //     isMandatory: true,
                        //     labelName: AppString.answer.val,
                        //     focusNode: answerFocusNode,
                        //     controller: _faqCreationBloc.answerController,
                        //     validator: (value) {
                        //       if (value == null || value.isEmpty) {
                        //         return AppString.answerError.val;
                        //       }
                        //       return null;
                        //     },
                        //     textInputAction: TextInputAction.next,
                        //     textInputType: TextInputType.text,
                        //     suffixIcon: const CustomContainer(width: 0),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  bytesList.isNotEmpty || attachment != ''
                      ?
                      // Chewie(
                      //         controller: ChewieController(
                      //           overlay: Container(
                      //             color: Colors.transparent,
                      //           ),
                      //           videoPlayerController:
                      //               VideoPlayerController.file(convertedFile as File),
                      //           autoPlay: false,
                      //           looping: false,
                      //           allowFullScreen: true,
                      //           showOptions: false,
                      //           aspectRatio: 16 /
                      //               9, // Adjust this as per your video's aspect ratio
                      //           // Placeholder image for the thumbnail
                      //           placeholder: AspectRatio(
                      //             aspectRatio: 16 / 9,
                      //             // child: Container(
                      //             //   alignment: Alignment.center,
                      //             //   // color: Colors.black,
                      //             //   child: Image.asset(
                      //             //     fit: BoxFit.fill,
                      //             //   ),
                      //             // ),
                      //           ),
                      //         ),
                      //       )
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CachedImage(
                              imgUrl: attachment,
                            ),
                            CustomText('Uploaded'),
                            IconButton(
                                onPressed: () {
                                  bytesList.clear();
                                  log('bytlist ${bytesList.length}');
                                },
                                icon: Icon(
                                  Icons.close,
                                  size: 10,
                                ))
                          ],
                        )
                      : _uploadDocumentWidget(rebuild),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomButton(
                        height: DBL.fortyEight.val,
                        minWidth: DBL.oneForty.val,
                        onPressed: () {
                          context.router.navigate(const VideoManagementRoute());
                        },
                        text: AppString.cancel.val,
                        color: AppColor.white.val,
                        textColor: AppColor.primaryColor.val,
                        borderWidth: 1,
                      ),
                      CustomSizedBox(width: DBL.twenty.val),
                      BlocBuilder<UploadVideoBloc, VideoUploadState>(
                        builder: (context, state) {
                          return CustomButton(
                            isLoading: state.isLoadingButton,
                            height: DBL.fortyEight.val,
                            minWidth: DBL.oneForty.val,
                            onPressed: () async {
                              await uploadVideo(state);

                              checkInputData(state);
                            },
                            text: _isEdit!
                                ? AppString.update.val
                                : AppString.save.val,
                            color: AppColor.primaryColor.val,
                            textColor: AppColor.white.val,
                          );
                        },
                      )
                    ],
                  ),
                ],
              );
            }),
            // : Wrap(
            //     children: [
            //       CustomText(AppString.done.val),
            //       IconButton(
            //           onPressed: () {
            //             _videoBloc.uploadedVideo = '';
            //           },
            //           icon: Icon(Icons.close))
            //     ],
            //   ),
          ],
        );
      },
    );
  }

  _uploadDocumentWidget(void Function(void Function()) rebuild) {
    return UploadDocumentWidget(
      isVideoUpload: true,
      onTap: () async {
        FilePickerResult? result = await FilePicker.platform.pickFiles(
          type: FileType.custom,
          allowedExtensions: [
            'avi',
            'flv',
            'mkv',
            'mov',
            'mp4',
            'mpeg',
            'webm',
            'wmv'
          ],
          withData: true,
        );
        if (result != null) {
          file = result.files.single;
          for (PlatformFile file in result.files) {
            bytesList.add(file);
            listUpdated = !listUpdated;
            if (bytesList.length == 2) {
              break;
            }
          }
          rebuild(() {});
          // widget.onboardingBloc.add(
          //   OnboardingEvent.securityDocumentUpload(bytesList, listUpdated),
          // );
        } else {
          // User canceled the picker
        }
      },
      isSignature: false,
    );
  }

  _forClientCheckBoxWidget() {
    return Row(
      children: [
        CustomText(AppString.videoFor.val,
            style: TS().gRoboto(
                fontWeight: FW.w400.val,
                color: AppColor.label8.val,
                fontSize: FS.font14.val)),
        const CustomSizedBox(width: 20),
        BlocBuilder<UploadVideoBloc, VideoUploadState>(
          builder: (context, state) {
            return YesNoRadioButtonWidget(
              yesLabel: AppString.forClient.val,
              noLabel: AppString.forCa.val,
              onChanged: (val) {
                BlocProvider.of<UploadVideoBloc>(context)
                    .add(VideoUploadEvent.radioForClient(isSelected: val ?? 0));
              },
              groupValue: state.isForClient,
            );
          },
        )
      ],
    );
  }

  uploadVideo(VideoUploadState state) async {
    if (bytesList.isNotEmpty) {
      await uploadVideoToAwsS3(AppString.documents.val,
          SharedPreffUtil().getCareGiverUserId, bytesList.first, state);
    }
  }

  checkInputData(VideoUploadState state) {
    if (_formKey.currentState!.validate()) {
      debugPrint("vido uploaded ${_videoBloc.uploadedVideo}");
      // if (_isEdit!) {
      //   if (_videoBloc.uploadedVideo == '') {
      //     CSnackBar.showError(context, msg: 'Please attach video');
      //   } else {
      //     print('inside api call $settingsId');
      //     _videoBloc.add(VideoUploadEvent.addSettings(
      //         adminId: adminUserID,
      //         title: _videoBloc.title.text,
      //         settingsId: settingsId,
      //         attachment: _videoBloc.uploadedVideo,
      //         userType: state.isForClient == 0 ? 2 : 1,
      //         context: context));
      //   }
      // }
      // else {
      if (_videoBloc.uploadedVideo == '') {
        CSnackBar.showError(context, msg: 'Please attach video');
      } else {
        _videoBloc.add(VideoUploadEvent.addSettings(
            adminId: adminUserID,
            title: _videoBloc.title.text,
            attachment: _videoBloc.uploadedVideo,
            userType: state.isForClient == 0 ? 2 : 1,
            context: context));
      }
      // }
    }
  }

  Future<void> uploadVideoToAwsS3(String folderName, String userId,
      PlatformFile pickedItem, VideoUploadState state) async {
    _videoBloc.uploadedVideo = await ApiServiceS3().uploadImage(
        pickedFile: pickedItem.bytes!,
        format: pickedItem.name.split('.').last,
        folderName: folderName,
        userId: userId,
        context: context);
  }

  @override
  void dispose() {
    _videoBloc.title.dispose();
    titleFocusNode.dispose();

    super.dispose();
  }
}
