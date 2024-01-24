import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quill_html_editor/quill_html_editor.dart';

import '../../application/bloc/send_gift/send_gift_bloc.dart';
import '../../core/custom_snackbar.dart';
import '../../core/enum.dart';
import '../../core/properties.dart';
import '../../core/text_styles.dart';
import '../../infrastructure/send_gift/send_gift_respository.dart';
import '../../infrastructure/shared_preference/shared_preff_util.dart';
import '../side_menu/side_menu_page.dart';
import '../widget/alert_text_label.dart';
import '../widget/custom_button.dart';
import '../widget/custom_card.dart';
import '../widget/custom_container.dart';
import '../widget/custom_form.dart';
import '../widget/custom_padding.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/custom_text.dart';
import '../widget/details_text_field_with_label.dart';
import '../widget/header_view.dart';
import '../widget/loader_view.dart';

@RoutePage()
class SendGiftPage extends StatefulWidget {
  const SendGiftPage({Key? key, @QueryParam('id') this.userId})
      : super(key: key);

  final String? userId;

  @override
  State<SendGiftPage> createState() => _sendGiftPageState();
}

class _sendGiftPageState extends State<SendGiftPage> {
  final QuillEditorController controller = QuillEditorController();

  final FocusNode titleFocusNode = FocusNode();
  final FocusNode descriptionFocusNode = FocusNode();
  String? userId;

  late SendGiftBloc _sendGiftBloc;
  String? description;

  final AutovalidateMode _validateMode = AutovalidateMode.disabled;
  final _sendGiftFormKey = GlobalKey<FormState>();

  String? htmlText;
  final customToolBarList = [
    ToolBarStyle.bold,
    ToolBarStyle.italic,
    ToolBarStyle.align,
    ToolBarStyle.color,
    ToolBarStyle.background,
    ToolBarStyle.listBullet,
    ToolBarStyle.listOrdered,
    ToolBarStyle.clean,
    ToolBarStyle.addTable,
    ToolBarStyle.editTable,
    ToolBarStyle.size,
    ToolBarStyle.underline,
    ToolBarStyle.redo,
    ToolBarStyle.undo,
    ToolBarStyle.headerOne,
    ToolBarStyle.headerTwo,
    ToolBarStyle.link,
  ];

  getText(QuillEditorController controller) async {
    htmlText = await controller.getText();
    debugPrint('text $htmlText');
    return htmlText;
  }

  @override
  void initState() {
    super.initState();
    userId = autoTabRouter?.currentChild?.queryParams.getString("id", "") ?? "";
    _sendGiftBloc = SendGiftBloc(SendGiftRepository());
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: SharedPreffUtil().init(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const LoaderView();
          }
          return Column(
            children: [
              HeaderView(title: AppString.sendGift.val),
              CustomSizedBox(height: DBL.ten.val),
              _rebuildView(),
            ],
          );
        });
  }

  _rebuildView() {
    return BlocProvider(
      create: (context) => _sendGiftBloc,
      child: BlocBuilder<SendGiftBloc, SendGiftState>(
        builder: (context, state) {
          return _bodyView(context, state);
        },
      ),
    );
  }

  _bodyView(BuildContext context, SendGiftState state) {
    return CustomPadding.symmetric(
      horizontal: DBL.sixteen.val,
      child: CustomCard(
        shape: PR().roundedRectangleBorder(DBL.five.val),
        elevation: DBL.seven.val,
        child: CustomContainer(
            padding: EdgeInsets.symmetric(
                horizontal: DBL.forty.val, vertical: DBL.eighteen.val),
            child: _createFaqView(state)),
      ),
    );
  }

  _createFaqView(SendGiftState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        CForm(
            formKey: _sendGiftFormKey,
            autoValidateMode: _validateMode,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSizedBox(
                  width: DBL.twoEighty.val,
                  child: DetailsTextFieldWithLabel(
                    isMandatory: true,
                    maxLines: 20,
                    labelName: AppString.subject.val,
                    focusNode: titleFocusNode,
                    controller: _sendGiftBloc.titleController,
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
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CustomText(AppString.message.val,
                        style: TS().gRoboto(
                            fontWeight: FW.w400.val,
                            color: AppColor.label8.val,
                            fontSize: FS.font16.val)),
                    CustomPadding.only(
                      left: DBL.five.val,
                      child: CustomText(
                        AppString.mandatorySymbol.val,
                        style: TS().gRoboto(
                            color: AppColor.red.val, fontSize: FS.font15.val),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),

                ToolBar(
                  controller: controller,
                  toolBarConfig: customToolBarList,
                  toolBarColor: AppColor.lightGrey.val,
                  activeIconColor: Colors.green,
                  padding: const EdgeInsets.all(8),
                  iconSize: 20,
                ),
                // ToolBar(
                //   toolBarColor: AppColor.lightGrey.val,
                //   activeIconColor: Colors.green,
                //   padding: const EdgeInsets.all(8),
                //   iconSize: 20,
                //   controller: controller,
                // ),

                BlocBuilder<SendGiftBloc, SendGiftState>(
                  builder: (context, state) {
                    return QuillHtmlEditor(
                      text:
                          'Wishing you a day filled with joy and celebration! Thank you for being a valued part of our ama-gi family.',
                      controller: controller,
                      isEnabled: true,
                      minHeight: 300,
                      hintTextAlign: TextAlign.start,
                      padding: const EdgeInsets.only(left: 10, top: 5),
                      hintTextPadding: EdgeInsets.zero,
                      loadingBuilder: (context) {
                        return const Center(
                            child: CircularProgressIndicator(
                          strokeWidth: 0.4,
                        ));
                      },
                    );
                  },
                ),
                // CustomSizedBox(
                //   width: DBL.twoEighty.val,
                //   child: DetailsTextFieldWithLabel(
                //     maxLines: 10,
                //     isMandatory: true,
                //     labelName: AppString.description.val,
                //     focusNode: descriptionFocusNode,
                //     controller: _sendGiftBloc.descriptionController,
                //     validator: (value) {
                //       if (value == null || value.isEmpty) {
                //         return AppString.descriptionError.val;
                //       }
                //       return null;
                //     },
                //     textInputAction: TextInputAction.next,
                //     textInputType: TextInputType.text,
                //     suffixIcon: const CustomContainer(width: 0),
                //   ),
                // ),

                BlocBuilder<SendGiftBloc, SendGiftState>(
                  builder: (context, state) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          child: CustomButton(
                            mouseCursor: MouseCursor.defer,
                            isLoading: state.isLoadingButton,
                            height: DBL.fortyFive.val,
                            minWidth: DBL.oneTwenty.val,
                            onPressed: () async {
                              debugPrint(
                                  "loading test ${state.isLoadingButton}");
                              await getText(controller);

                              if (htmlText!.isEmpty || htmlText == '') {
                                CSnackBar.showError(context!,
                                    msg: AppString.descriptionError.val);
                              }
                              await checkInputData(state);
                              debugPrint(
                                  "loading test after function ${state.isLoadingButton}");
                            },
                            text: AppString.sendGift.val,
                            color: AppColor.primaryColor.val,
                            textColor: AppColor.white.val,
                          ),
                        ),
                      ],
                    );
                  },
                )
              ],
            ))
      ],
    );
  }

  checkInputData(SendGiftState state) {
    if (_sendGiftFormKey.currentState!.validate()) {
      debugPrint("loading yes ${state.isLoadingButton}");
      _sendGiftBloc.add(SendGiftEvent.sendGift(
          context: context,
          userId: userId ?? '',
          title: _sendGiftBloc.titleController.text.trim(),
          description: htmlText?.trim() ?? ''));
    }
  }

  @override
  void dispose() {
    _sendGiftBloc.titleController.dispose();
    _sendGiftBloc.descriptionController.dispose();

    super.dispose();
  }
}
