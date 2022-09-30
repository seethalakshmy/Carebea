import 'package:carebea/app/utils/theme.dart';
import 'package:carebea/app/utils/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class CustomAlertbox extends StatelessWidget {
  const CustomAlertbox({
    Key? key,
    required this.title,
    required this.content,
    this.topIcon,
    required this.actions,
    this.isVerticalActions = false,
  }) : super(key: key);

  final Widget? topIcon;
  final String title;
  final String content;
  final List<Widget> actions;
  final bool isVerticalActions;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: CustomCard(
        width: MediaQuery.of(context).size.width * .9,
        padding: const EdgeInsets.all(20),
        hasShadow: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (topIcon != null) topIcon!,
            if (topIcon != null)
              const SizedBox(
                height: 12,
              ),
            Text(
              title,
              style: customTheme(context).medium.copyWith(fontSize: 13, color: Colors.black),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              content,
              style: customTheme(context).regular.copyWith(
                    fontSize: 12,
                    color: Colors.black,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            if (isVerticalActions)
              ...actions
            else
              actions.length == 1
                  ? actions.first
                  : Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: actions,
                    )
          ],
        ),
      ),
    );
  }
}
