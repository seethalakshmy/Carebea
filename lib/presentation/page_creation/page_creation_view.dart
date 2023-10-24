import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quill_html_editor/quill_html_editor.dart';

import '../../application/bloc/page/page_bloc.dart';
import '../../core/enum.dart';
import '../../core/text_styles.dart';
import '../../infrastructure/page/page_repository.dart';
import '../../infrastructure/shared_preference/shared_preff_util.dart';
import '../caregiver_creation/widgets/details_text_field_with_label.dart';
import '../on_boarding/modules/qualification_details/widgets/yes_no_radio_button_widget.dart';
import '../side_menu/side_menu_page.dart';
import '../widget/custom_button.dart';
import '../widget/custom_container.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/custom_text.dart';
import '../widget/header_view.dart';

@RoutePage()
class PageCreationPage extends StatefulWidget {
  PageCreationPage(
      {Key? key,
      @QueryParam('title') this.title,
      @QueryParam('id') this.id,
      @QueryParam('description') this.description,
      @QueryParam('forWhom') this.forWhom})
      : super(key: key);

  final String? title;
  final String? id;
  final String? description;
  final num? forWhom;

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
  final FocusNode titleFocusNode = FocusNode();

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
    adminUserID = SharedPreffUtil().getAdminId;
    id = autoTabRouter?.currentChild?.queryParams.getString("id", "") ?? "";

    description =
        autoTabRouter?.currentChild?.queryParams.getString("description", "") ??
            '';
    forWhom =
        autoTabRouter?.currentChild?.queryParams.getNum("forWhom", 0) ?? 0;
    debugPrint("forwhom $forWhom");
    pageBloc.titleController.text =
        autoTabRouter?.currentChild?.queryParams.getString("title", "") ?? '';
    // _faqCreationBloc.add(FaqCreationEvent.getFaq(id: adminId));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderView(title: AppString.termsAndConditions.val),
            CustomSizedBox(height: DBL.twenty.val),
            _forWhoWidget(),
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
                    return AppString.questionError.val;
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
            SizedBox(
              height: 100,
            ),
            BlocBuilder<PageBloc, PageState>(
              builder: (context, state) {
                return Row(
                  children: [
                    Spacer(),
                    CustomButton(
                      isLoading: state.isLoading,
                      text: id == ''
                          ? AppString.submit.val
                          : AppString.update.val,
                      onPressed: () async {
                        await getText(controller);
                        debugPrint("content $htmlText");
                        debugPrint("for $forWhom");
                        id == ''
                            ? pageBloc.add(PageEvent.createPage(
                                title: pageBloc.titleController.text.trim(),
                                description: htmlText ?? '',
                                pageFor: state.isForClient == 0
                                    ? '1'
                                    : state.isForClient == 1
                                        ? '2'
                                        : '3',
                                context: context))
                            : pageBloc.add(PageEvent.updatePage(
                                userId: adminUserID ?? '',
                                id: id ?? '',
                                title: pageBloc.titleController.text.trim(),
                                description: htmlText ?? '',
                                pageFor: state.isForClient == 0
                                    ? '1'
                                    : state.isForClient == 1
                                        ? '2'
                                        : '3',
                                context: context));
                      },
                    ),
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
                fontSize: FS.font14.val)),
        const CustomSizedBox(width: 20),
        BlocBuilder<PageBloc, PageState>(
          builder: (context, state) {
            return YesNoRadioButtonWidget(
              yesLabel: AppString.forClient.val,
              noLabel: AppString.forCa.val,
              onChanged: (val) {
                debugPrint("selected value $val");
                BlocProvider.of<PageBloc>(context)
                    .add(PageEvent.radioForClient(isSelected: val));
              },
              groupValue: forWhom == 0
                  ? (forWhom == 1
                      ? 0
                      : forWhom == 2
                          ? 1
                          : 2)
                  : state.isForClient,
              thirdLabel: AppString.forWebsite.val,
            );
          },
        )
      ],
    );
  }
}
