import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quill_html_editor/quill_html_editor.dart';

import '../../application/bloc/page/page_bloc.dart';
import '../../core/enum.dart';
import '../../core/text_styles.dart';
import '../../infrastructure/page/page_repository.dart';
import '../on_boarding/modules/qualification_details/widgets/yes_no_radio_button_widget.dart';
import '../widget/custom_button.dart';
import '../widget/custom_sizedbox.dart';
import '../widget/custom_text.dart';
import '../widget/header_view.dart';

@RoutePage()
class PageCreationPage extends StatefulWidget {
  const PageCreationPage({Key? key}) : super(key: key);

  @override
  State<PageCreationPage> createState() => _PageCreationPageState();
}

class _PageCreationPageState extends State<PageCreationPage> {
  final QuillEditorController controller = QuillEditorController();

  PageBloc pageBloc = PageBloc(PageRepo());

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
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            HeaderView(title: AppString.termsAndConditions.val),
            CustomSizedBox(height: DBL.twenty.val),
            _forWhoWidget(),

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
                  // text: "<h1>Hello</h1>This is a quill html editor example 😊",
                  // hintText: 'Hint text goes here',
                  controller: controller,
                  isEnabled: true,
                  minHeight: 300,
                  // textStyle: _editorTextStyle,
                  // hintTextStyle: _hintTextStyle,
                  hintTextAlign: TextAlign.start,
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  hintTextPadding: EdgeInsets.zero,
                  // backgroundColor: _backgroundColor,
                  // onFocusChanged: (hasFocus) => debugPrint('has focus $hasFocus'),
                  // onTextChanged: (text) => debugPrint('widget text change $text'),
                  // onEditorCreated: () => debugPrint('Editor has been loaded'),
                  // onEditingComplete: (s) => debugPrint('Editing completed $s'),
                  // onEditorResized: (height) => debugPrint('Editor resized $height'),
                  // onSelectionChanged: (sel) =>
                  //     debugPrint('${sel.index},${sel.length}'),
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
                return CustomButton(
                  isLoading: !state.isLoading,
                  text: AppString.submit.val,
                  onPressed: () async {
                    await getText(controller);
                    debugPrint("content $htmlText");
                    pageBloc.add(PageEvent.createPage(
                        title: 'Terms And Conditions',
                        description: htmlText ?? '',
                        pageFor: '2',
                        context: context));
                  },
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
        CustomText(AppString.faqFor.val,
            style: TS().gRoboto(
                fontWeight: FW.w400.val,
                color: AppColor.label8.val,
                fontSize: FS.font14.val)),
        const CustomSizedBox(width: 20),
        // BlocBuilder<FaqCreationBloc, FaqCreationState>(
        // builder: (context, state) {
        //   return
        YesNoRadioButtonWidget(
            yesLabel: AppString.forClient.val,
            noLabel: AppString.forCa.val,
            onChanged: (val) {
              // BlocProvider.of<FaqCreationBloc>(context)
              //     .add(FaqCreationEvent.radioForClient(isSelected: val ?? 0));
            },
            groupValue: 1
            // state.isForClient;
            // },
            )
      ],
    );
  }
}
