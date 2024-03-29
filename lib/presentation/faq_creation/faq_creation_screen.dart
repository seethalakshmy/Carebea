import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quill_html_editor/quill_html_editor.dart';

import '../../application/bloc/faq-creation/faq_creation_bloc.dart';
import '../../core/enum.dart';
import '../../core/properties.dart';
import '../../core/text_styles.dart';
import '../../domain/faq/models/faq_list_response_model.dart';
import '../../infrastructure/faq_creation/faq_creation_repository.dart';
import '../../infrastructure/shared_preference/shared_preff_util.dart';
import '../on_boarding/modules/qualification_details/widgets/yes_no_radio_button_widget.dart';
import '../routes/app_router.gr.dart';
import '../side_menu/side_menu_page.dart';
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
class FaqCreationPage extends StatefulWidget {
  const FaqCreationPage(
      {Key? key,
      @QueryParam('view') this.isView,
      @QueryParam('edit') this.isEdit,
      @QueryParam('id') this.id,
      @QueryParam('item') this.item,
      @QueryParam('forWhom') this.forWhom})
      : super(key: key);

  /// To do change :- change these two variables to bool for now getting error like " NoSuchMethodError: 'toLowerCase"  when extracting using auto-route
  final String? isView;
  final String? isEdit;
  final String? id;
  final FaqListData? item;
  final int? forWhom;

  @override
  State<FaqCreationPage> createState() => _faqCreationPageState();
}

class _faqCreationPageState extends State<FaqCreationPage> {
  final QuillEditorController controller = QuillEditorController();

  final FocusNode questionFocusNode = FocusNode();
  final FocusNode answerFocusNode = FocusNode();

  late FaqCreationBloc _faqCreationBloc;

  final AutovalidateMode _validateMode = AutovalidateMode.disabled;
  final _formKey = GlobalKey<FormState>();
  String adminUserID = "";
  String adminId = "";
  FaqListData? item;

  bool? _isView;

  bool? _isEdit;
  int? forWhom;
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
    _faqCreationBloc = FaqCreationBloc(FaqCreationRepository());
    adminUserID = SharedPreffUtil().getAdminId;
    adminId =
        autoTabRouter?.currentChild?.queryParams.getString("id", "") ?? "";
    item = autoTabRouter?.currentChild?.queryParams.get(
      'item',
    );
    forWhom =
        autoTabRouter?.currentChild?.queryParams.getInt("forWhom", 1) ?? 1;
    _faqCreationBloc.questionController.text = item?.question ?? '';
    _faqCreationBloc.answerController.text = item?.answer ?? '';
    _faqCreationBloc.radioValue = forWhom!.toInt() - 1;
    // _faqCreationBloc.add(FaqCreationEvent.getFaq(id: adminId));
    if (autoTabRouter!.currentChild!.queryParams
        .getString('view', "")
        .isNotEmpty) {
      _isView = true;
    } else {
      _isView = false;
    }
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
    return FutureBuilder(
        future: SharedPreffUtil().init(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const LoaderView();
          }
          return Column(
            children: [
              HeaderView(
                title: _isEdit == false
                    ? AppString.faqCreation.val
                    : AppString.updateFaq.val,
              ),
              CustomSizedBox(height: DBL.ten.val),
              _rebuildView(),
            ],
          );
        });
  }

  _rebuildView() {
    return BlocProvider(
      create: (context) => _faqCreationBloc,
      child: BlocBuilder<FaqCreationBloc, FaqCreationState>(
        builder: (context, state) {
          debugPrint("loading ${state.isLoading}");
          // return _bodyView(context, state);
          return !state.isLoading
              ? _bodyView(context, state)
              : const LoaderView();
        },
      ),
    );
  }

  _bodyView(BuildContext context, FaqCreationState state) {
    debugPrint("loading ${state.isLoading}");

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
            child: _createFaqView(state)),
      ),
    );
  }

  _createFaqView(FaqCreationState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _forClientCheckBoxWidget(),
        const SizedBox(
          height: 20,
        ),
        CForm(
          formKey: _formKey,
          autoValidateMode: _validateMode,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSizedBox(
                width: DBL.twoEighty.val,
                child: DetailsTextFieldWithLabel(
                  isIgnore: _isView!,
                  isMandatory: true,
                  maxLines: 20,
                  labelName: AppString.question.val,
                  focusNode: questionFocusNode,
                  controller: _faqCreationBloc.questionController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return AppString.questionError.val;
                    }
                    return null;
                  },
                  textInputAction: TextInputAction.next,
                  textInputType: TextInputType.text,
                  suffixIcon: const CustomContainer(width: 0),
                ),
              ),
              // ToolBar(
              //   controller: controller,
              //   toolBarConfig: customToolBarList,
              //   toolBarColor: AppColor.lightGrey.val,
              //   activeIconColor: Colors.green,
              //   padding: const EdgeInsets.all(8),
              //   iconSize: 20,
              // ),
              // ToolBar(
              //   toolBarColor: AppColor.lightGrey.val,
              //   activeIconColor: Colors.green,
              //   padding: const EdgeInsets.all(8),
              //   iconSize: 20,
              //   controller: controller,
              // ),

              CustomSizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextFormField(
                    maxLines: 10,
                    keyboardType: TextInputType.multiline,
                    focusNode: answerFocusNode,
                    controller: _faqCreationBloc.answerController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return AppString.answerError.val;
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        filled: true, hintText: AppString.answer.val),
                  )
                  //     DetailsTextFieldWithLabel(
                  //   width: MediaQuery.of(context).size.width,
                  //   height: 100 * 2,
                  //   maxLines: 100,
                  //   isIgnore: _isView!,
                  //   isMandatory: true,
                  //   labelName: AppString.answer.val,
                  //   focusNode: answerFocusNode,
                  //   controller: _faqCreationBloc.answerController,
                  //   validator: (value) {
                  //     if (value == null || value.isEmpty) {
                  //       return AppString.answerError.val;
                  //     }
                  //     return null;
                  //   },
                  //   textInputAction: TextInputAction.next,
                  //   textInputType: TextInputType.text,
                  //   suffixIcon: const CustomContainer(width: 0),
                  // ),
                  ),
              SizedBox(
                height: 50,
              ),
              BlocBuilder<FaqCreationBloc, FaqCreationState>(
                builder: (context, state) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomButton(
                        height: DBL.fortyFive.val,
                        minWidth: DBL.oneTwenty.val,
                        onPressed: () {
                          context.router.navigate(const FaqRoute());
                        },
                        text: AppString.cancel.val,
                        color: AppColor.white.val,
                        textColor: AppColor.primaryColor.val,
                        borderWidth: 1,
                      ),
                      CustomSizedBox(width: DBL.twenty.val),
                      !_isView!
                          ? BlocBuilder<FaqCreationBloc, FaqCreationState>(
                              bloc: _faqCreationBloc,
                              builder: (context, state) {
                                log("${state.isLoadingButton}",
                                    name: "FAQBloc");
                                return IgnorePointer(
                                  ignoring: state.isLoadingButton,
                                  child: CustomButton(
                                    isLoading: state.isLoadingButton,
                                    height: DBL.fortyFive.val,
                                    minWidth: DBL.oneTwenty.val,
                                    onPressed: () async {
                                      debugPrint(
                                          "loading test ${state.isLoadingButton}");
                                      await checkInputData(state);
                                      debugPrint(
                                          "loading test after function ${state.isLoadingButton}");
                                    },
                                    text: _isEdit!
                                        ? AppString.update.val
                                        : AppString.save.val,
                                    color: AppColor.primaryColor.val,
                                    textColor: AppColor.white.val,
                                  ),
                                );
                              },
                            )
                          : CustomSizedBox.shrink(),
                    ],
                  );
                },
              ),
            ],
          ),
        )
      ],
    );
  }

  _forClientCheckBoxWidget() {
    return Row(
      children: [
        CustomText(AppString.faqFor.val,
            style: TS().gRoboto(
                fontWeight: FW.w400.val,
                color: AppColor.label8.val,
                fontSize: FS.font14.val)),
        const CustomSizedBox(width: 20),
        BlocBuilder<FaqCreationBloc, FaqCreationState>(
          builder: (context, state) {
            return YesNoRadioButtonWidget(
              yesLabel: AppString.forClient.val,
              noLabel: AppString.forCa.val,
              onChanged: (val) {
                BlocProvider.of<FaqCreationBloc>(context)
                    .add(FaqCreationEvent.radioForClient(isSelected: val!));
                // _faqCreationBloc.radioValue = item?.forClient == true ? 0 : 1;
                // BlocProvider.of<FaqCreationBloc>(context).add(
                //     FaqCreationEvent.radioForClient(
                //         isSelected: item?.forClient == true ? 0 : 1));
              },
              groupValue: _faqCreationBloc.radioValue,
            );
          },
        )
      ],
    );
  }

  checkInputData(FaqCreationState state) {
    if (_formKey.currentState!.validate()) {
      print('id:: ${adminUserID}');
      debugPrint("loading yes ${state.isLoadingButton}");
      if (_isEdit!) {
        debugPrint("loading before ${state.isLoadingButton}");

        _faqCreationBloc.add(FaqCreationEvent.updateFaq(
            id: adminId,
            question: _faqCreationBloc.questionController.text.trim(),
            answer: _faqCreationBloc.answerController.text.trim(),
            status: "true",
            forClient: state.isForClient == 0 ? true : false,
            context: context));

        debugPrint("loading after ${state.isLoadingButton}");
      } else {
        _faqCreationBloc.add(FaqCreationEvent.addFaq(
          context: context,
          question: _faqCreationBloc.questionController.text.trim(),
          answer: _faqCreationBloc.answerController.text.trim(),
          status: "true",
          forClient: state.isForClient == 0 ? true : false,
        ));
      }
    }
  }

  @override
  void dispose() {
    _faqCreationBloc.questionController.dispose();
    _faqCreationBloc.answerController.dispose();

    super.dispose();
  }
}
