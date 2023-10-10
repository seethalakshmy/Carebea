import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quill_html_editor/quill_html_editor.dart';

import '../../core/enum.dart';

@RoutePage()
class TermsAndConditionsPage extends StatefulWidget {
  const TermsAndConditionsPage({Key? key}) : super(key: key);

  @override
  State<TermsAndConditionsPage> createState() => _TermsAndConditionsPageState();
}

class _TermsAndConditionsPageState extends State<TermsAndConditionsPage> {
  final QuillEditorController controller = QuillEditorController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // HeaderView(title: AppString.transaction.val),
            // CustomSizedBox(height: DBL.twenty.val),
            ToolBar(
              toolBarColor: AppColor.lightGrey.val,
              activeIconColor: Colors.green,
              padding: const EdgeInsets.all(8),
              iconSize: 20,
              controller: controller,
            ),
            QuillHtmlEditor(
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
              // loadingBuilder: (context) {
              //   return const Center(
              //       child: CircularProgressIndicator(
              //     strokeWidth: 0.4,
              //   ));
              // },
            ),
          ],
        ),
      ),
    );
  }
}
