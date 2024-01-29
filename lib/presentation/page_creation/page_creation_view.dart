import 'dart:developer';

import 'package:admin_580_tech/presentation/page_creation/widget/radio_button_widget.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quill_html_editor/quill_html_editor.dart';

import '../../application/bloc/page/page_bloc.dart';
import '../../core/custom_snackbar.dart';
import '../../core/enum.dart';
import '../../core/text_styles.dart';
import '../../infrastructure/page/page_repository.dart';
import '../../infrastructure/shared_preference/shared_preff_util.dart';
import '../caregiver_creation/widgets/details_text_field_with_label.dart';
import '../side_menu/side_menu_page.dart';
import '../widget/alert_text_label.dart';
import '../widget/custom_button.dart';
import '../widget/custom_container.dart';
import '../widget/custom_form.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/custom_text.dart';
import '../widget/header_view.dart';

@RoutePage()
class PageCreationPage extends StatefulWidget {
  PageCreationPage(
      {Key? key,
      @QueryParam('heading') this.heading,
      @QueryParam('title') this.title,
      @QueryParam('id') this.id,
      @QueryParam('description') this.description,
      @QueryParam('isEdit') this.isEdit,
      @QueryParam('forWhom') this.forWhom})
      : super(key: key);
  final String? heading;
  final String? title;
  final String? id;
  final String? description;
  final num? forWhom;
  final bool? isEdit;

  @override
  State<PageCreationPage> createState() => _PageCreationPageState();
}

class _PageCreationPageState extends State<PageCreationPage> {
  final QuillEditorController controller = QuillEditorController();

  PageBloc pageBloc = PageBloc(PageRepo());
  String? id;
  String? description;
  num? forWhom;
  String? adminUserID;
  String? heading;
  final FocusNode titleFocusNode = FocusNode();
  final _pageFormKey = GlobalKey<FormState>();
  final AutovalidateMode _validateMode = AutovalidateMode.disabled;

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
    // _faqCreationBloc = FaqCreationBloc(FaqCreationRepository());
    heading =
        autoTabRouter?.currentChild?.queryParams.getString("heading", "") ?? '';
    log("initState called");
    adminUserID = SharedPreffUtil().getAdminId;
    id = autoTabRouter?.currentChild?.queryParams.getString("id", "") ?? "";

    description =
        autoTabRouter?.currentChild?.queryParams.getString("description", "") ??
            '';
    forWhom =
        autoTabRouter?.currentChild?.queryParams.getNum("forWhom", 0) ?? 0;
    debugPrint("forwhom $forWhom");
    debugPrint("description passed $description");
    pageBloc.titleController.text =
        autoTabRouter?.currentChild?.queryParams.getString("title", "") ?? '';
    pageBloc.radioValue = forWhom!.toInt();
    // _faqCreationBloc.add(FaqCreationEvent.getFaq(id: adminId));
    log("radioValue ${pageBloc.radioValue}");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderView(title: heading ?? ''),
            CustomSizedBox(height: DBL.twenty.val),
            _forWhoWidget(),
            CForm(
              formKey: _pageFormKey,
              autoValidateMode: _validateMode,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomSizedBox(
                    width: DBL.twoEighty.val,
                    child: DetailsTextFieldWithLabel(
                      isMandatory: true,
                      maxLines: 20,
                      labelName: AppString.title.val,
                      focusNode: titleFocusNode,
                      controller: pageBloc.titleController,
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

                  BlocBuilder<PageBloc, PageState>(
                    builder: (context, state) {
                      return QuillHtmlEditor(
                        text: description ?? '',
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
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            BlocBuilder<PageBloc, PageState>(
              bloc: pageBloc,
              builder: (context, state) {
                log("state is ${state}");
                return Row(
                  children: [
                    Spacer(),
                    state.when(initial: (isLoading, isError, isForClient,
                        response, getPagesResponse, radioValue) {
                      return CustomButton(
                          minWidth: 100,
                          height: 50,
                          isLoading: isLoading,
                          text:
                              // id == ''
                              //     ? AppString.submit.val
                              AppString.update.val,
                          onPressed: () async {
                            await getText(controller);
                            if (pageBloc.titleController.text.isNotEmpty ||
                                pageBloc.titleController.text.trim() != "") {
                              if (htmlText!.isEmpty || htmlText == '') {
                                CSnackBar.showError(context!,
                                    msg: AppString.descriptionError.val);
                              }
                            }
                            debugPrint("content $htmlText");
                            debugPrint("for $forWhom");
                            if (!mounted) return;
                            if (_pageFormKey.currentState!.validate() &&
                                htmlText!.isNotEmpty &&
                                htmlText != '') {
                              // (id == ''
                              //     ? pageBloc.add(PageEvent.createPage(
                              //         title:
                              //             pageBloc.titleController.text.trim(),
                              //         description: htmlText ?? '',
                              //         pageFor: radioValue == 0
                              //             ? '1'
                              //             : radioValue == 1
                              //                 ? '2'
                              //                 : '3',
                              //         context: context,
                              //       ))
                              pageBloc.add(PageEvent.updatePage(
                                userId: adminUserID ?? '',
                                id: id ?? '',
                                title: pageBloc.titleController.text.trim(),
                                description: htmlText ?? '',
                                pageFor: radioValue == 0
                                    ? '1'
                                    : radioValue == 1
                                        ? '2'
                                        : '3',
                                context: context,
                              ));
                            }
                          });
                    }, loading: () {
                      return IgnorePointer(
                        ignoring: true,
                        child: CustomButton(
                            isLoading: true,
                            text:
                                // id == ''
                                //     ? AppString.submit.val
                                AppString.update.val,
                            onPressed: () {}),
                      );
                    })
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }

  _forWhoWidget() {
    return Row(
      children: [
        CustomText(AppString.pageFor.val,
            style: TS().gRoboto(
                fontWeight: FW.w400.val,
                color: AppColor.label8.val,
                fontSize: FS.font18.val)),
        const CustomSizedBox(width: 30),
        BlocBuilder<PageBloc, PageState>(
          builder: (context, state) {
            log("state is $state");

            return state.when(initial: (isLoading, isError, isForClient,
                response, getPagesResponse, radioValue) {
              log(("called initial"));
              return RadioButtonWidget(
                groupValue: radioValue,
                firstLabel: AppString.forClient.val,
                secondLabel: AppString.forCa.val,
                thirdLabel: AppString.forWebsite.val,
                onChanged: (val) {
                  debugPrint("selected radio $val");
                  debugPrint("selected value $isForClient");
                  BlocProvider.of<PageBloc>(context)
                      .add(PageEvent.radioForClient(isSelected: val));
                },
              );
            }, loading: () {
              return RadioButtonWidget(
                groupValue: pageBloc.radioValue,
                firstLabel: AppString.forClient.val,
                secondLabel: AppString.forCa.val,
                thirdLabel: AppString.forWebsite.val,
                onChanged: (val) {
                  debugPrint("selected radio $val");
                  BlocProvider.of<PageBloc>(context)
                      .add(PageEvent.radioForClient(isSelected: val));
                },
              );
            });

            // return RadioButtonWidget(
            //   groupValue: pageBloc.radioValue,
            //   firstLabel: AppString.forClient.val,
            //   secondLabel: AppString.forCa.val,
            //   thirdLabel: AppString.forWebsite.val,
            //   onChanged: (val) {
            //     debugPrint("selected radio $val");
            //     debugPrint("selected value ${state.isForClient}");
            //     BlocProvider.of<PageBloc>(context)
            //         .add(PageEvent.radioForClient(isSelected: val));
            //   },
            // );

            // return YesNoRadioButtonWidget(
            //   yesLabel: AppString.forClient.val,
            //   noLabel: AppString.forCa.val,
            //   onChanged: (val) {
            //     debugPrint("selected value $val");
            //     BlocProvider.of<PageBloc>(context)
            //         .add(PageEvent.radioForClient(isSelected: val));
            //   },
            //   groupValue: forWhom == 0
            //       ? (forWhom == 1
            //           ? 0
            //           : forWhom == 2
            //               ? 1
            //               : 2)
            //       : state.isForClient,
            //   thirdLabel: AppString.forWebsite.val,
            // );
          },
        )
      ],
    );
  }
}
